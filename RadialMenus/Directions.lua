	VoiceCommandsMod.my_items = {
		{
			text = "Follow Me",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f38_any")
		},
		{
			text = "Right way",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g12")
		},
		{
			text = "Wrong way",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g11")
		},
		{
			text = "Get inside",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g08")
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
	
	VoiceCommandsMod:Refresh(VoiceCommandsMod.my_items,"Radial Menu: Directions")
