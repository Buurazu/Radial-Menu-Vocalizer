local coptype = VoiceCommandsMod.settings.civ_selection:sub(2,2)

	my_items = {
		{
			text = "Scream 1", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_civ","a01x_any"),
		},
		{
			text = "Scream 2", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_civ","a02x_any"),
		},
		{
			text = "Scream 3", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_civ","a03x_any"),
		},
		{
			text = "On Fire", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_civ","burnhurt"),
		},
		{
			text = "Fire Death", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_civ","burndeath"),
		}
	}
	
	--for some reason there's no female stockholm or 911 call audio?
	if (coptype == "m") then
		table.insert(my_items,
		{
			text = "Old Stockholm Syndrome", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_civ","stockholm_syndrome"),
		})
		table.insert(my_items,
		{
			text = "911 Call", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_civ","911_call"),
		})
	end
	
	MyModGlobal:Refresh(my_items, "Radial Menu: Civ SFX")

		