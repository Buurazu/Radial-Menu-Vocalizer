--[[ TODO

--allow repositioning text (currently centered from formula: [0.5*radius  +  constant] )

* add keyboard button support
	* item var "key id" for hotkeys

* update add_item and create_item to better definitions	
	* icon definition should be separate
	
	new:
	
--CHANGELOG
Added option for disabling game movement (blocking character control input, but keeping menu input). For reasons of compatibility with existing mods that use RMM, this is enabled by default, but can now be set to false in order to use the alternate, selective input blocking methods.
Added option to allow looking around while in radial menu (recommended to disable for targeting-specific radial menus, like the apex legends-style ping menu mod)
Added option to allow movement while in radial menu 
Note: Unfortunately, selectively allowing certain types of input comes at the cost of potential mod compatibility (due to the requirement of more hooked files and functions). I have provided as much compatibility support as I can at the moment; as always, please let me know if you encounter issues.
Fixed mouse position resetting even when keep_mouse_position is true
Fixed nested radial menus causing issues recognizing currently-open menus due to resetting flags and executing callbacks in the incorrect order
Added on-exit-menu cooldown for blocking attack input
--]]

--create the textures (if there's a better way to do this, I don't know it)
DB:create_entry(
	Idstring('texture'),
	Idstring('guis/textures/rmm/hud_radialbg'),
	ModPath .. 'assets/hud_radialbg.texture'
)
DB:create_entry(
	Idstring('texture'),
	Idstring('guis/textures/rmm/hud_absorb_stack_fg'),
	ModPath .. 'assets/hud_absorb_stack_fg.texture'
)
DB:create_entry(
	Idstring('texture'),
	Idstring('guis/textures/rmm/circlefill'),
	ModPath .. 'assets/circlefill.texture'
)
DB:create_entry(
	Idstring('texture'),
	Idstring('guis/textures/rmm/pd2_waypoints'),
	ModPath .. 'assets/pd2_waypoints.texture'
)
DB:create_entry(
	Idstring('texture'),
	Idstring('guis/textures/rmm/hud_shield'),
	ModPath .. 'assets/hud_shield.texture'
)

RMVRadialMouseMenu = RMVRadialMouseMenu or class()
RMVRadialMouseMenu.MOUSE_ID = "radial_menu_mouse"
RMVRadialMouseMenu.queued_items = {}

function RMVRadialMouseMenu.CreateQueuedMenus()
	for i=#RMVRadialMouseMenu.queued_items,1,-1 do
		local data = table.remove(RMVRadialMouseMenu.queued_items,i)
		local result = RMVRadialMouseMenu:new(data.params,data.callback)
--		if result and (type(data.callback) == "function") then 
--			data.callback(result)
--		end
	end
end

function RMVRadialMouseMenu:init(params,callback) --create new instance of a radial selection menu; called from new()
	if not managers.gui_data then 
		table.insert(RMVRadialMouseMenu.queued_items,1,{callback = callback,params = params})
		--if RMVRadialMouseMenu:new() is called after RMM loads but before the rest of the game,
		--save the information for later and create it on game load
		return
	end

	RMVRadialMouseMenu._WS = RMVRadialMouseMenu._WS or managers.gui_data:create_fullscreen_workspace() --create classwide workspace if it doesn't already exist
	
	local base = RMVRadialMouseMenu._WS:panel()

	self._base = base
	params = params or {}
	local name = params.name --radial name; used for labelling hud elements
	if not name then 
		local error_msg = "ERROR: RMVRadialMouseMenu:init(): You must supply a valid name! Please see documentation at https://github.com/offyerrocker/RMVRadialMouseMenu/wiki"
		if Console then 
			Console:Log(error_msg,{color = Color.red})
		else
			log(error_msg)
		end
		return
	end
	--radial menus are automatically centered, so be advised that x/y values here are counted from the center of the screen
	local x = params.x or 0
	local y = params.y or 0
	
	Hooks:Register("radialmenu_selected_" .. name) --this hook is called when you select a thing
	Hooks:Register("radialmenu_released_" .. name) --this is called when you hide a thing	
	
	
	if params.keep_mouse_position == nil then 
		self.keep_mouse_position = false
	else
		self.keep_mouse_position = params.keep_mouse_position
	end
	
	if params.allow_keyboard_input == nil then 
		self.allow_keyboard_input = true
	else
		self.allow_keyboard_input = params.allow_keyboard_input
	end
	
	if params.allow_camera_look == nil then 
		self.allow_camera_look = false
	else
		self.allow_camera_look = params.allow_camera_look
	end
	
	--this effectively (albeit indirectly) overrides allow_camera_look and allow_keyboard_input anyway
	if params.block_all_input == nil then 
		self.block_all_input = true
	else
		self.block_all_input = params.block_all_input
	end
	if self.block_all_input then 
		self.allow_keyboard_input = false
		self.allow_camera_look = false
	end
	
	local radius = params.radius or 300 --size of radial, NOT the size of the parent panel
	self._size = radius
	self._deadzone = params.deadzone --minimum distance from center the mouse must be in order to select an item
	self._name = name
	self._items = params.items or {}
	
	self._center_font_size = params.center_font_size
	self._font_size = params.font_size
		
	self._hud = base:panel({ --master panel for this instance of RMVRadialMouseMenu
		name = self._name,
		layer = 1,
		visible = false,
		x = x,
		y = y,
		w = base:w(),
		h = base:h()
	})
	
	local center_x = self._hud:w() / 2
	local center_y = self._hud:h() / 2
	
	local bg = params.bg or {
		name = name .. "_BG",
		texture = "guis/textures/rmm/hud_radialbg",--dark radial background texture (blank circle by default)
--		render_template = "VertexColorTexturedBlur3D",
		valign = "grow",
		halign = "grow",
		layer = 1,
		alpha = 0.7,
		w = radius,
		h = radius
	}

	
	local blur = params.blur or {
		texture = "guis/textures/rmm/circlefill",
		texture_rect = tweak_data.hud_icons.icon_circlefill16.texture_rect,
		name = name .. "_BLUR",
		render_template = "VertexColorTexturedBlur3D",
		visible = not (params.blur == false), --don't display if blur is specifically set to false, but create invisible hud element anyway
		valign = "grow",
		halign = "grow",
		layer = -2,
		alpha = 0.5,
		w = radius,
		h = radius
	}
	
	local center_text = params.center_text or {
		name = name .. "_CENTER_TEXT",
		text = "",
		layer = 1,
		font_size = self._center_font_size,
		align = "center",
		vertical = "center",
		font = tweak_data.hud.medium_font,
		color = Color.white
	}
	local selector = params.selector or {
		name = name .. "_SELECTOR",
		texture = "guis/textures/rmm/hud_shield",
		render_template = "VertexColorTexturedRadial",
		layer = 1,
		color = Color(1 / #self._items,1,1),
		w = radius,
		h = radius
	}
	local arrow = params.arrow or {
		name = name .. "_ARROW",
		w = 16,
		h = 16,
		texture = "guis/textures/rmm/pd2_waypoints",
		texture_rect = tweak_data.hud_icons.wp_arrow.texture_rect,
		layer = 1
	}
	
	self._selected = false
	self._init_items_done = false
	self._active = false

	
	self._bg = self._hud:bitmap(bg)
	self._bg:set_center(center_x,center_y)
	
	
	self._blur = self._hud:bitmap(blur)
	self._blur:set_center(center_x,center_y)
	
	
	self._center_text = self._hud:text(center_text)
	if (self._items[1]) then self._center_text:set_text(self._items[1].text) end
	
	self._selector = self._hud:bitmap(selector)
	self._selector:set_center(center_x,center_y)
	self._selector:set_visible(false)
	
	self._arrow = self._hud:bitmap(arrow)
	--[[
	local debug_area = self._hud:rect{
		color = Color.red,
		alpha = 0.1,
		name = "debug_area",
		layer = 1
	}--]]
	self:populate_items() --!

	if type(callback) == "function" then 
		callback(self)
	end
	return self
end

function RMVRadialMouseMenu:mouse_moved(o,mouse_x,mouse_y)
	local offset_x = self._hud:w() / 2
	local offset_y = self._hud:h() / 2
	mouse_x = (mouse_x - (self._hud:x() + offset_x))
	mouse_y = (mouse_y - (self._hud:y() + offset_y))
	
	local num_items = math.max(#self._items,1)
	local length = 0.5 * (self._size + 10)
	
	local mouse_angle,clean_angle
	if mouse_x ~= 0 then 
		mouse_angle = math.atan(mouse_y/mouse_x) % 180
		if mouse_y == 0 then --edge cases for if mouse_y is exactly in the center
			if mouse_x > 0 then 
				mouse_angle = 90 + 90  --right
			else
				mouse_angle = 270 + 90 --left
			end

		elseif mouse_y > 0 then 
			mouse_angle = mouse_angle - 180
		end
	else --edge cases for if mouse_x is exactly in the center
		if mouse_y > 0 then 
			mouse_angle = 180 + 90 --up
		else
			mouse_angle = 0 + 90 --down
		end
	end	
	local angle_interval = 360 / num_items
	
--	clean_angle = ( -angle_interval + ((mouse_angle - 90) - (180/num_items))) % 360
	clean_angle = ((mouse_angle - 90) + (180/num_items)) % 360
	
	
	local mouseover_selected = 1 + math.floor(clean_angle / angle_interval)  --number index of selected object of self._items 
	local mouseover_angle = (mouseover_selected - 0.5) * angle_interval --angle of selected object of self._items
	self._selector:set_rotation(mouseover_angle - angle_interval)
	
	local function outside_deadzone(x1,y1,d)
		if not d then return true end
		return ((x1 * x1) + (y1 * y1)) >= (d * d)
	end
	
	local item = self._items[mouseover_selected]
	if outside_deadzone(mouse_x,mouse_y,self._deadzone) then 
		self:on_mouseover_item(mouseover_selected)
	else
		self._selector:set_visible(false)
		self._selected = false
		self._arrow:set_alpha(0)
		if (self._items[1]) then self._center_text:set_text(self._items[1].text)
		else self._center_text:set_visible(false) end
	end
	
	local opposite = math.cos((mouse_angle - 180))
	
	local adjacent = math.sin((mouse_angle - 180))
	
	--rotate arrow around the radial to match mouse angle
	self._arrow:set_x((opposite * length) + offset_x + - (self._arrow:w() / 2))
	self._arrow:set_y((adjacent * length) + offset_y + - (self._arrow:h() / 2))
	self._arrow:set_rotation(mouse_angle)
end

function RMVRadialMouseMenu:mouse_clicked(o,button,x,y)
	if button == Idstring("1") then
		self:Hide(nil,false)
		return
	end
	if button ~= Idstring("0") and button ~= Idstring("-1") then 
		return
	end
	local skip_hide = false
	if button == Idstring("0") then
		VoiceCommandsMod.mouse_was_clicked = true
		--allow spamming without menu closing on click
		if (VoiceCommandsMod.settings.no_chat_on_click) then skip_hide = true end
	else
		VoiceCommandsMod.mouse_was_clicked = false
	end
	local item = self._selected and self._items[self._selected]
	if item then 
		self:on_item_clicked(item, skip_hide)
	--default to item 1
	elseif self._items[1] then
		self:on_item_clicked(self._items[1], skip_hide)
	end
end

function RMVRadialMouseMenu:on_item_clicked(item,skip_hide)
--	item._body:set_visible(not item._body:visible())
	local success,result
	if not (item.stay_open or skip_hide) then 
		self:Hide(nil,false)
	end
	if item.callback then 
		success,result = pcall(item.callback)
	end
	Hooks:Call("radialmenu_selected_" .. self._name,self._selected,result)
end


function RMVRadialMouseMenu:on_mouseover_item(index) --you can choose to clone the class and change the mousover event animation if you want
	local item = self:get_item(index)
	if not item then 
		self._selected = false
		return 
	end
	self._selected = index
	self._selector:set_visible(true)
	self._arrow:set_alpha(1)
	local old_item = self:get_item(self._selected)
	local function animate_flare(o,down)
		local text_panel = o._text_panel
		local font_size = o.text_panel.font_size
		local final_size = font_size * (down and 1 or 1.25)

		local rate = down and 0.95 or 1.05
		
		repeat
			local s = math[down and "max" or "min"](text_panel:font_size() * rate,final_size)
			
			text_panel:set_font_size(s)
			
			coroutine.yield()
		until math.abs(text_panel:font_size() - final_size) <= 0.01
	end
	
	self._center_text:set_visible(true)
	self._center_text:set_text(item.text) --set text in radial center to name of selected item
	self._arrow:set_color(item._icon and item._icon:color() or Color.white) --set arrow color to match color of item icon
	
--	item:animate(animate_flare,false) --must be called from a hud panel
--	old_item:animate(animate_flare,true)

end

function RMVRadialMouseMenu:Toggle(state,...)
	if state == nil then 
		state = not self:active()
	end	
	
	if state then 
		self:Show(...)
	else
		self:Hide(...)
	end
end

function RMVRadialMouseMenu:Show()
	if not self._init_items_done then 
		self:populate_items()
		self._init_items_done = true
	end
	
	if RMVRadialMouseMenu.current_menu and RMVRadialMouseMenu._name ~= self:get_name() then 
		RMVRadialMouseMenu.current_menu:Hide(true) --hide any other active radial menus, since only one can take input at a time
	end
	RMVRadialMouseMenu.current_menu = self

	self._hud:show()
	local data = {
		mouse_move = callback(self, self, "mouse_moved"),
		mouse_click = callback(self, self, "mouse_clicked"),
		id =  RMVRadialMouseMenu.MOUSE_ID
	}
	if not self._active then 
		managers.mouse_pointer:use_mouse(data)
		if self.block_all_input then 
			game_state_machine:_set_controller_enabled(false)
		end
	end
	if not self.keep_mouse_position then 
		managers.mouse_pointer:set_mouse_world_position(self._hud:w()/2,self._hud:h()/2) --todo use center() instead
	end
	self._active = true
	
	if (self._items[1]) then
		self._center_text:set_visible(true)
		self._center_text:set_text(self._items[1].text)
	end
	self._arrow:set_alpha(0)
	self._selector:set_visible(false)
end

function RMVRadialMouseMenu:get_name()
	return self._name
end

function RMVRadialMouseMenu:active() --whether or not this menu instance is visible and interactable
	return self._active
end

function RMVRadialMouseMenu:Hide(skip_reset,do_success_cb)
	if not skip_reset then 
		RMVRadialMouseMenu.current_menu = nil
	end
	self._hud:hide()
--	RMVRadialMouseMenu._WS:disconnect_keyboard()
	if self.block_all_input then 
		game_state_machine:_set_controller_enabled(true)
	end
	local item = self._selected and self._items[self._selected]
	self._selected = false
	if self._active then 
		self._active = false
		self._selector:set_visible(false)
		local player = managers.player and managers.player:local_player()
		if alive(player) then 
			player:movement():current_state()._menu_closed_fire_cooldown = player:movement():current_state()._menu_closed_fire_cooldown + 0.01
		end
		self:on_closed()
		managers.mouse_pointer:remove_mouse(RMVRadialMouseMenu.MOUSE_ID)
		if do_success_cb then 
			if item then 
				self:on_item_clicked(item,true) --already hiding here so skip_hide 
			end
		end
	end
end

--[[ to destroy a radial menu object:
1. Call pre_destroy() from your object 
	- eg. my_radial_menu:pre_destroy()
2. Set your object to nil
	- Lua's garbage collection should clear the object from memory automatically
--]]

function RMVRadialMouseMenu:pre_destroy()
	self._base:remove(self._hud)
	--self = nil
end

function RMVRadialMouseMenu:create_item(data,skip_refresh) --the slightly easier way to auto-generate an item
--creates item data if you want to customize an item,
--but want to only change some things,
--and want to use auto-created default values for everything else
	if not data then 
		return 
	end
	local item = {}
	local index = #self._items
	local name = "item_" .. index
	local _body = data.body or {}
	local _icon = data.icon or {}
	local _text = data.text_panel or {}
	item.body = {
		name = name .. "_BODY",
		texture = _body.texture or "guis/textures/rmm/hud_absorb_stack_fg", --body will be boring white radial slice if not specified
		texture_rect = _body.texture_rect,
		w = _body.w or 16,
		h = _body.h or 16,
		alpha = _body.alpha or 0.7,
		color = _body.color or Color.white
	}
	item.icon = {
		name = name .. "_ICON",
		texture = _icon.texture, --icon will be invisible if not specified
		texture_rect = _icon.texture_rect,
		w = _icon.w or 16,
		h = _icon.h or 16,
		alpha = _icon.alpha or 0.7,
		color = _icon.color or Color.white
	}
	
	
	item.text_panel = { 
		name = name .. "_TEXT_PANEL",
		text = data.text or _text.text,
		font = _text.font or tweak_data.hud.medium_font,
		font_size = _text.font_size or 16,
		alpha = _text.alpha or 1,
		layer = _text.layer or 1,
		color = _text.color or Color.white
	}
	
	item.stay_open = data.stay_open or false
	item.callback = data.callback
	
	self:add_item(item,skip_refresh)
	return item
end

function RMVRadialMouseMenu:add_item(item,skip_refresh)
	table.insert(self._items,item)
	if not skip_refresh then 
		--skip_refresh should be used if you are adding multiple items at a time 
		--	and don't want to waste computing power running populate_items() every time
		self:populate_items()
	end
end

function RMVRadialMouseMenu:get_item(index)
	return self._items[index]
end

function RMVRadialMouseMenu:get_all_items()
	return self._items
end

function RMVRadialMouseMenu:reset_items(skip_refresh) --removes panels from items, but keeps original data
	for k,data in ipairs(self._items) do 
		if data._panel and alive(data._panel) then 
			self._hud:remove(data._panel)
			data._icon = nil
			data._body = nil
			data._panel = nil
		end
	end
	if not skip_refresh then 
		self:populate_items()
	end
end

function RMVRadialMouseMenu:on_closed()
	Hooks:Call("radialmenu_released_" .. self:get_name(),self._selected)
end

function RMVRadialMouseMenu:clear_items() --removes ALL ITEM DATA
	self:reset_items(true)
	self._items = {}
end

function RMVRadialMouseMenu:remove_item(index,skip_refresh) --removes a particular item entry
	local item = self._items[index]
	if item then 
		if item._panel and alive(item._panel) then 
			self._hud:remove(item._panel)
			item._icon = nil
			item._body = nil
			item._panel = nil
			item._text_panel = nil
		end
	end
	table.remove(self._items,index)
	if not skip_refresh then 
		self:populate_items()
	end
end

function RMVRadialMouseMenu:populate_items()
	self:reset_items(true) --tell reset_items() not to call populate_items()
	--stacks are not chief among the things i like to overflow
	
	local num_items = math.max(#self._items,1)
	for k,data in ipairs(self._items) do --order is important here
		local text = data.text or ""
		local name = "item_" .. k
		local ho = self._hud:h() / 2 --position offsets to place the given hud element in the center of the radial
		local wo = self._hud:w() / 2
		local new_segment = self._hud:panel({ --master panel for this item
			name = name .. "_PANEL",
			layer = 2,
			w = self._size, --same effective panel size and position as radial bg
			h = self._size
		})
		new_segment:set_center(wo,ho)
		data._panel = new_segment --save master panel reference to this item's data
		
		local angle = (360 * ((k - 1) / num_items) - 90) % 360

		local body = data.bitmap or { --arc texture for this item
			layer = 1,
			alpha = 0.3,
			texture = "guis/textures/rmm/hud_absorb_stack_fg", --selection foreground texture
			w = self._size,
			h = self._size
		}
		body.name = name .. "_TEXTURE"
		
		body.render_template = "VertexColorTexturedRadial"
		body.color = Color(1/num_items,1,1) --this changes arc length, not actually color
		body.rotation = angle + 90 - (180/num_items)
		local segment_texture = new_segment:bitmap(body)
		segment_texture:set_center(self._size / 2,self._size / 2)
		data._body = segment_texture

		local icon = data.icon or { --invisible icon if not specified
			layer = 3,
			visible = false,
			color = tweak_data.chat_colors[1 + (k % #tweak_data.chat_colors)] or Color.white
		}
		icon.name = name .. "_ICON"
		icon.w = icon.w or 24
		icon.h = icon.h or 24
		
		local x = (math.cos(angle) * (self._size * 0.314))
		local y = ((math.sin(angle) * (self._size * 0.314)) + - (icon.h / 2)) + (self._size / 2)
		icon.x = x + (self._size / 2) - (icon.w / 2)
		icon.y = y
		
		
		local segment_icon = new_segment:bitmap(icon)
		data._icon = segment_icon		
		
		local text_panel = data.text_panel or { 
			name = name .. "_TEXT_PANEL",
			text = text,
			x = x,
			y = y + 12,
			align = "center",
			font = tweak_data.hud.medium_font,
			font_size = self._font_size,
			alpha = 1,
			layer = 1,
			color = Color.white
		}
		text_panel.visible = data.show_text or false
		local segment_text_panel = new_segment:text(text_panel)
		data._text_panel = segment_text_panel

		
		
		self._selector:set_color(Color(1/num_items,1,1))
	end	
	self._init_items_done = true
end

local initialize = RMVRadialMouseMenu:new({name = "VoiceCommandsMenu"})

Hooks:Add("BaseNetworkSessionOnLoadComplete","radialmousemenu_onloaded",RMVRadialMouseMenu.CreateQueuedMenus)
