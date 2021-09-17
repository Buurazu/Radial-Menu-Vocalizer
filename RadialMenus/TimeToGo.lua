	VoiceCommandsMod.my_items = {
		{
			text = "Time to go",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g17")
		},
		{
			text = "We're done",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v08")
		},
		{
			text = "Let's go, team",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v17")
		},
		{
			text = "We gotta get out",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g07")
		},
		{
			text = "*ALARM SFX*",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","alarm_the_bomb_on_slow_fade")
		},
		{
			text = "Let's go",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g13")
		},
		{
			text = "It's finished",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v07")
		},
		{
			text = "There's our escape",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v26")
		}
	}
	
	VoiceCommandsMod:Refresh(VoiceCommandsMod.my_items,"Radial Menu: Time to Go")
