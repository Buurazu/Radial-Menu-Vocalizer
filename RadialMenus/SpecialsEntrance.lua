	VoiceCommandsMod.my_items = {
		{
			text = "Captain!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","cpa_a02_01"),
		},
		{
			text = "Turret!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","cpa_a03_01"),
		},
		{
			text = "Bulldozer!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","bdz_entrance"),
		},
		{
			text = "Elite Bulldozer!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","bdz_entrance_elite"),
		},
		{
			text = "Taser!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","tsr_entrance"),
		},
		{
			text = "Elite Taser!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","tsr_elite"),
		},
		{
			text = "Cloaker Noise", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","cloaker_spawn"),
		},
		{
			text = "Medic!", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","mdc_entrance"),
		}
	}
	VoiceCommandsMod:Refresh(VoiceCommandsMod.my_items, "Radial Menu: Specials Entrance")

		