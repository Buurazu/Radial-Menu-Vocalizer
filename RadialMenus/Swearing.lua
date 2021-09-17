	VoiceCommandsMod.my_items = {
		{
			text = "FUCK!",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g29")
		},
		{
			text = "SHIT!",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g60")
		},
		{
			text = "Fuck! Now what?",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v36")
		},
		{
			text = "Taxman Interrogation",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f46x_any")
		},
		{
			text = "Bain: Crap!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_sbh_01")
		},
		{
			text = "Taxman Sit",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v58")
		},
		{
			text = "Skydiving",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v55")
		},
		{
			text = "That was loud",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v54")
		}
	}
	
	VoiceCommandsMod:Refresh(VoiceCommandsMod.my_items,"Radial Menu: Swearing")
