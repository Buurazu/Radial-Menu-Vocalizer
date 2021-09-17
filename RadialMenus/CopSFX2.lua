local copselection = VoiceCommandsMod.settings.cop_selection
local copregion = VoiceCommandsMod.settings.cop_selection:sub(1,1)
local coptype = VoiceCommandsMod.settings.cop_selection:sub(3,3)

	VoiceCommandsMod.my_items = {
		{
			text = "Death", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","x02a_any_3p"),
		},
		{
			text = "Hurt", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","x01a_any_3p"),
		},
		{
			text = "He has a saw", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","ch4"),
		},
		{
			text = "Damn you (Joker)", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","cn1"),
		},
		{
			text = "ECM Feedback", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","ch3"),
		},
		{
			text = "Christ almighty\nFucking hell", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","lk3a"),
		}
	}
	--l3d is missing a few sounds for some reason, so I guess he gets bonus options
	if (copselection ~= "l3d") then
		table.insert(VoiceCommandsMod.my_items,
		{
			text = "On Fire", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","burnhurt"),
		})
		table.insert(VoiceCommandsMod.my_items,
		{
			text = "Fire Death", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","burndeath"),
		})
	else
		table.insert(VoiceCommandsMod.my_items,
		{
			text = "Help!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","hlp"),
		})
		table.insert(VoiceCommandsMod.my_items,
		{
			text = "Contact!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","c01"),
		})
	end
	
	--Unused(?) Guard has very few sounds so he gets his own list
	if (copselection == "l5n") then
	VoiceCommandsMod.my_items = {
		{
			text = "Fire Death", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","burndeath"),
		},
		{
			text = "On Fire", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","burnhurt"),
		},
		{
			text = "He's armed", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","a01"),
		},
		{
			text = "Noticed ammo bag", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","amm"),
		},
		{
			text = "Sound the alarm!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","a09"),
		},
		{
			text = "We've got a situation", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","a15"),
		},
		{
			text = "Spotted a sentry gun", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","a20"),
		},
		{
			text = "Somebody set a fire", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","a18"),
		}
	}
	end
	
	--mexicans/russians (russians have no hurt/death sound but who cares enough to separate them)
	if (copregion ~= "l") then
	VoiceCommandsMod.my_items = {
		{
			text = "Fire Death", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","burndeath"),
		},
		{
			text = "On Fire", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","burnhurt"),
		},
		{
			text = "Death", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","x02a_any_3p"),
		},
		{
			text = "Hurt", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","x01a_any_3p"),
		},
		{
			text = "Help!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","hlp"),
		},
		{
			text = "Hold it!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","i01"),
		},
		{
			text = "Move move move!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","mov"),
		},
		{
			text = "They have hostages!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_cop","p01"),
		}
	}
	end
	
	VoiceCommandsMod:Refresh(VoiceCommandsMod.my_items, "Radial Menu: Cop SFX: Pain")

		