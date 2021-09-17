	VoiceCommandsMod.my_items = {
		{
			text = "Pager Call",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","dsp_radio_checking_1")
		},
		{
			text = "Mark Guard",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f37_any")
		},
		{
			text = "Get down!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f02x_sin")
		},
		{
			text = "I said down!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f02b_sin")
		},
		{
			text = "Stay down, everybody!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f03a_plu")
		},
		{
			text = "Stay down, you!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f03a_sin")
		},
		{
			text = "And don't move!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f03b_any")
		},
		{
			text = "Mark Camera",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f39_any")
		}
	}	
	
	VoiceCommandsMod:Refresh(VoiceCommandsMod.my_items,"Radial Menu: Stealth")
