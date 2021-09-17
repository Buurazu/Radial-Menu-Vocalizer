	VoiceCommandsMod.my_items = {
		{
			text = "Baaaa",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","goat_says_meh")
		},
		{
			text = "Headbutt",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","goat_headbutt")
		},
		{
			text = "Kick",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","goat_kick")
		},
		{
			text = "Sleeping",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","goat_sleep")
		},
		{
			text = "Fan Woosh",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","goat_fan_woosh")
		},
		{
			text = "Lick",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","goat_lick")
		},
		{
			text = "Jump on Car",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","goat_jump")
		},
		{
			text = "Scaffold",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","goat_hang_scaffold")
		}
	}
	
	VoiceCommandsMod:Refresh(VoiceCommandsMod.my_items,"Radial Menu: Goat SFX")
