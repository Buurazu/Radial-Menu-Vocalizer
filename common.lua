_G.VoiceCommandsMod = _G.VoiceCommandsMod or {}
VoiceCommandsMod._path = ModPath
VoiceCommandsMod._data_path = SavePath .. 'radial_menu_vocalizer.txt'
VoiceCommandsMod.settings = {
	send_chat = false,
	prefix_chat = false,
	radial_menu_radius = 350,
	radial_menu_deadzone = 30,
	radial_menu_font_size = 12,
	radial_menu_center_font_size = 16,
	cop_selection = "l2n",
	civ_selection = "cm1"
}
VoiceCommandsMod.playing_loops = {}

function VoiceCommandsMod:ResetToDefaultValues()
	VoiceCommandsMod.settings = {
		send_chat = false,
		prefix_chat = false,
		radial_menu_radius = 350,
		radial_menu_deadzone = 30,
		radial_menu_font_size = 12,
		radial_menu_center_font_size = 16
	}
end

function VoiceCommandsMod:Load()
	local file = io.open(VoiceCommandsMod._data_path, 'r')
	if file then
		for k, v in pairs(json.decode(file:read('*all')) or {}) do
			VoiceCommandsMod.settings[k] = v
		end
		file:close()
	end
end

function VoiceCommandsMod:Save()
	local file = io.open(VoiceCommandsMod._data_path, 'w+')
	if file then
		file:write(json.encode(VoiceCommandsMod.settings))
		file:close()
	end
end

VoiceCommandsMod._chat_conversion = {
	Play_pln_pager_a = "Pick up that pager!",
	play_pln_gen_count_01 = "That's one!",
	play_pln_gen_count_02 = "That's two!",
	play_pln_gen_count_03 = "That's three!",
	play_pln_gen_count_04 = "That's four!",
	play_pln_gen_count_15 = "Just two more!",
	play_pln_gen_count_16 = "Just one more!",
	Play_pln_pager_g = "No more pagers!",
	g80x_plu = "I need a Doctor Bag/FAK!",
	g81x_plu = "I need an Ammo Bag!",
	f30y_any = "Bulldozer!",
	f34y_any = "Sniper!",
	f44x_any = "Turret!",
	s12 = "First Aid Kit!",
	v10 = "I found a keycard!",
	v57 = "I found a crowbar!",
	f38_any = "Follow me!",
	g12 = "This is the right way!",
	g11 = "That's the wrong way!",
	g08 = "Get inside!",
	g05 = "Up!",
	g06 = "Down!",
	g03 = "Left!",
	g04 = "Right!",
	play_pln_gen_dir_08 = "Yes!",
	play_pln_gen_dir_07 = "No!",
	alarm_countdown_ticking_down_10sec = "10 seconds left!",
	--alarm_the_bomb_on_slow_fade = "!!!",
	play_pln_gen_urg_01 = "Move move move!",
	play_pln_gen_bfr_11 = "Let's finish this thing strong!",
	Play_pln_vih_01 = "Escape's here!",
	Play_pln_ce_01 = "Ready to go?",
	play_pln_gen_fbo_01 = "Onto the next step!",
	Play_pln_hur_01 = "Pronto, people!",
	play_pln_gen_bfr_10 = "Clock's ticking, people!",
	Play_ban_p01 = "This is the point of no return!",
	v09 = "Next objective!",
	v15 = "Open the door!",
	v51 = "Move the loot!",
	v04 = "Found it!"
}

VoiceCommandsMod._loop_conversion = {
	dsp_radio_checking_1 = { 15, "dsp_stop_all" },
	goat_fan_woosh = { 15, "goat_fan_woosh_stop" },
	goat_sleep = { 10, "goat_sleep_stop" },
	goat_jump = { 10, "Stop_all_music" }, --no specific stop cue for some goat sfx?
	goat_hang_scaffold = { 10, "Stop_all_music" },
	goat_lick = { 10, "Stop_all_music" },
	goat_says_meh_loop = { 10, "Stop_all_music" },
	alarm_fire = { 15, "alarm_fire_stop" },
	alarm_countdown_loop = { 15, "alarm_countdown_loop_stop" },
	Play_cpl_ch1_02 = { 30, "Stop_cpl_ch1_02"},
	Play_man_ch1_01 = { 30, "Stop_man_ch1_01"},
	Play_rcp_ch1_01 = { 30, "Stop_rcp_ch1_01"},
	Play_party_girls = { 30, "Stop_party_girls"},
	Play_wife_husband = { 30, "Stop_wife_husband"},
	Play_gangster_conversation = { 30, "Stop_gangster_conversation"},
	Play_mch_brn_01 = { 10, "Stop_mch_brn_01"},
}

--this function plays the voiceline that is passed to it as an argument
function VoiceCommandsMod:say_line(id)
	managers.player:local_player():sound():say(id,true,true)
	if (VoiceCommandsMod.settings.send_chat and VoiceCommandsMod._chat_conversion[id] ~= nil) then
		if (VoiceCommandsMod.settings.prefix_chat) then
			managers.chat:send_message(1,'?',"[RMV] " .. VoiceCommandsMod._chat_conversion[id])
		else
			managers.chat:send_message(1,'?',VoiceCommandsMod._chat_conversion[id])
		end
	end
	if (VoiceCommandsMod._loop_conversion[id] ~= nil) then
		local current_time = TimerManager:game():time()
		table.insert(VoiceCommandsMod.playing_loops,
			{ current_time + VoiceCommandsMod._loop_conversion[id][1], VoiceCommandsMod._loop_conversion[id][2] })
	end
end

function VoiceCommandsMod:say_line_cop(id)
	VoiceCommandsMod:say_line(VoiceCommandsMod.settings.cop_selection .. "_" .. id)
end
function VoiceCommandsMod:select_cop(id)
	VoiceCommandsMod.settings.cop_selection = id
	VoiceCommandsMod.Save()
end
function VoiceCommandsMod:say_line_civ(id)
	VoiceCommandsMod:say_line(VoiceCommandsMod.settings.civ_selection .. "_" .. id)
end
function VoiceCommandsMod:select_civ(id)
	VoiceCommandsMod.settings.civ_selection = id
	VoiceCommandsMod.Save()
end

MyModGlobal = MyModGlobal or class()

function MyModGlobal:SetMyRadialMenu(menu) --"setter" function
	my_radial_menu = menu
	if not managers.hud then 
		return
	end
	managers.hud:add_updator("checkradialkey", callback(self, self, "Update"))
end

function MyModGlobal:Refresh(items, id)
	MyModGlobal:CreateTheMenu()
	my_radial_menu:clear_items()
	for index, value in ipairs(items) do
		my_radial_menu:add_item(value,true)
	end
	my_radial_menu:populate_items()
	my_radial_menu:Show()
	
	--find what keypress we should watch for letting go
	currentkey = self:GetBLTKeybind(id)
end

function MyModGlobal:GetBLTKeybind(id,...)
	for k,v in pairs(BLT.Keybinds._keybinds) do
		if type(v) == "table" then
			if v["_id"] == id then
				if v["_key"] and v["_key"]["pc"] then
					return tostring(v["_key"]["pc"])
				else
					return
				end
			end
		end
	end
	
	if BLT.Keybinds._potential_keybinds then
		for k,v in pairs(BLT.Keybinds._potential_keybinds) do
			if type(v) == "table" then
				if v["id"] == id then
					if v["pc"] then 
						return tostring(v["pc"])
					else
						return
					end
				end
			end
		end
	end
end

function MyModGlobal:Update(t, dt)
	if (not my_radial_menu:active()) then
		currentkey = nil
	end
	if (my_radial_menu:active() and currentkey ~= nil) then
		if (self:CheckKeyDown(currentkey) == false) then
			my_radial_menu:mouse_clicked(my_radial_menu._base,Idstring("0"),0,0)
			currentkey = nil
		end
	end
	
	--check for ending loops (just check the front of the queue)
	local current_time = TimerManager:game():time()
	if (VoiceCommandsMod.playing_loops[1] and VoiceCommandsMod.playing_loops[1][1] < current_time) then
		VoiceCommandsMod:say_line(VoiceCommandsMod.playing_loops[1][2])
		table.remove(VoiceCommandsMod.playing_loops,1)
	end
end

function MyModGlobal:CheckKeyDown(key)
	if not (managers and managers.hud) or managers.hud._chat_focus then
		return false
	end
	
	key = tostring(key)
	if key:find("mouse ") then 
		if not key:find("wheel") then 
			key = key:sub(7)
		end
		return Input:mouse():down(Idstring(key))
	else
		return Input:keyboard():down(Idstring(key))
	end
end

function MyModGlobal:CreateTheMenu()
	params = {
		name = "VoiceCommandsMenu",
		radius = VoiceCommandsMod.settings.radial_menu_radius,
		deadzone = VoiceCommandsMod.settings.radial_menu_deadzone,
		block_all_input = false,
		font_size = VoiceCommandsMod.settings.radial_menu_font_size,
		center_font_size = VoiceCommandsMod.settings.radial_menu_center_font_size,
	}

	my_radial_menu = RadialMouseMenu:new(params,callback(MyModGlobal,MyModGlobal,"SetMyRadialMenu"))
end