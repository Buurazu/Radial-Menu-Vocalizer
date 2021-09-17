local copselection = VoiceCommandsMod.settings.cop_selection
local copregion = VoiceCommandsMod.settings.cop_selection:sub(1,1)
local coptype = VoiceCommandsMod.settings.cop_selection:sub(3,3)

	VoiceCommandsMod.my_items = {
		{
			text = "Area clear", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","clr"),
		},
		{
			text = "This ends now", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","i03"),
		},
		{
			text = "Get their bags!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","l01"),
		},
	}
	--l3d is missing a few sounds for some reason, so I guess he gets bonus options
	if (copselection ~= "l3d") then
		table.insert(VoiceCommandsMod.my_items,
		{
			text = "Hey! Intruder! Shit!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","a08"),
		})

	else
		table.insert(VoiceCommandsMod.my_items,
		{
			text = "Ready up!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","rdy"),
		})
	end
	
	if (copselection ~= "l5d") then
		table.insert(VoiceCommandsMod.my_items,
		{
			text = "Go! Fire at will!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","att"),
		})

	else
		table.insert(VoiceCommandsMod.my_items,
		{
			text = "Civilians on scene!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","bak"),
		})
	end
	
	--basic guards: 3 exclusive patrol lines
	if (coptype == "n") then
		table.insert(VoiceCommandsMod.my_items,
		{
			text = "Signs of intruders", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","a23"),
		})
		table.insert(VoiceCommandsMod.my_items,
		{
			text = "Idle (sneeze, whistle)", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","a06"),
		})
		table.insert(VoiceCommandsMod.my_items,
		{
			text = "All quiet here", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","a05"),
		})
	--Zeal guards: 3 exclusive disable lines
	else
		table.insert(VoiceCommandsMod.my_items,
		{
			text = "Disable the drill", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","e01"),
		})
		--why doesn't l1d have "drill disabled"
		if (copselection ~= "l1d") then
			table.insert(VoiceCommandsMod.my_items,
			{
				text = "Drill disabled", 
				stay_open = false, show_text = true,
				callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","e05"),
			})
		else
			table.insert(VoiceCommandsMod.my_items,
			{
				text = "Disable their gear", 
				stay_open = false, show_text = true,
				callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","e02"),
			})
		end
		table.insert(VoiceCommandsMod.my_items,
		{
			text = "Unplug them", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","e03"),
		})

	end
	
	--Unused(?) Guard has very few sounds so he gets his own list
	if (copselection == "l5n") then
	VoiceCommandsMod.my_items = {
		{
			text = "Please stay back", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","a02"),
		},
		{
			text = "Spotted heavy drill", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","a25"),
		},
		{
			text = "Only staff", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","a03"),
		},
		{
			text = "Hey! Intruder! Shit!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","a08"),
		},
		{
			text = "Civilians on scene!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","bak"),
		},
		{
			text = "Signs of intruders", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","a23"),
		},
		{
			text = "Idle (sneeze, whistle)", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","a06"),
		},
		{
			text = "All quiet here", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","a05"),
		}
	}
	end
	
	--mexicans/russians
	if (copregion ~= "l") then
	VoiceCommandsMod.my_items = {
		{
			text = "In position!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","rdy"),
		},
		{
			text = "Contact!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","c01"),
		},
		{
			text = "Deploy smoke!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","d01"),
		},
		{
			text = "It's the clowns!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","g90"),
		},
		{
			text = "Freed hostage", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","h01"),
		},
		{
			text = "Signs of intruders", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","a23"),
		},
		--they barely have any sfx so pad it with a couple special sfx
		{
			text = copregion:upper() .. ". Dozer Entrance", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line",copregion .. "bdz_entrance"),
		},
		{
			text = copregion:upper() .. ". Cloaker Taunt", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line",copregion .. "cloaker_taunt_during_assault"),
		}
	}
	end
	
	VoiceCommandsMod:Refresh(VoiceCommandsMod.my_items, "Radial Menu: Cop SFX")

		