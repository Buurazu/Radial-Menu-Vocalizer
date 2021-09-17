	VoiceCommandsMod.my_items = {
		--[[{
			text = "Smoke!",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_thirdperson","g40x_any")
		},]] --doesn't work???
		
		{
			text = "Bulldozer!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f30y_any")
		},
		{
			text = "Shield!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f31y_any")
		},
		{
			text = "Taser!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f32y_any")
		},
		{
			text = "Cloaker!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f33y_any")
		},
		{
			text = "Sniper!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f34y_any")
		},
		{
			text = "Medic!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f47x_any")
		},
		{
			text = "Turret!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f44x_any")
		},
		{
			text = "Flashbang!",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g41x_any")
		},
		{
			text = "Tear gas!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g42x_any")
		},
	}

	VoiceCommandsMod:Refresh(VoiceCommandsMod.my_items,"Radial Menu: Enemy Callouts")
