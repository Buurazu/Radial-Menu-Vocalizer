	my_items = {
		{
			text = "Inspire Move!",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g18")
		},
		{
			text = "Hurry!",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g09")
		},
		{
			text = "Open the door",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v15")
		},
		{
			text = "Next objective",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v09")
		},
		{
			text = "*whistle*",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","whistling_attention")
		},
		{
			text = "Get up",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f41_any")
		},
		{
			text = "Move the loot",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v51")
		},
		{
			text = "Found it",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v04")
		}
	}
	
	MyModGlobal:Refresh(my_items,"Radial Menu: MOVE!")
