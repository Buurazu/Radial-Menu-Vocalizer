VoiceCommandsMod = VoiceCommandsMod or class()

--this function plays the voiceline that is passed to it as an argument
function VoiceCommandsMod:say_line(id)
	managers.player:local_player():sound():say(id,true,true)
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

params = {
	name = "VoiceCommandsMenu",
	radius = 325,
	deadzone = 30,
	block_all_input = false
}

my_radial_menu = RadialMouseMenu:new(params,callback(MyModGlobal,MyModGlobal,"SetMyRadialMenu"))
