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
			text = "Time to Go",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g17")
		},
		{
			text = "Follow Me",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f38_any")
		},
		{
			text = "Up",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g05")
		},
		{
			text = "Down",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g06")
		},
		{
			text = "Left",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g03")
		},
		{
			text = "Right",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g04")
		}
	}
	
	MyModGlobal:Refresh(my_items,"Radial Menu: Directions")
