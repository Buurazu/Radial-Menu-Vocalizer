	my_items = {
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
			text = "Sleeping\n(Loop)",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","goat_sleep")
		},
		{
			text = "Baaaa\n(Loop)",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","goat_says_meh_loop")
		},
		{
			text = "Lick\n(Loop)",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","goat_lick")
		},
		{
			text = "Jump\n(Loop)",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","goat_jump")
		},
		{
			text = "Scaffold\n(Loop)",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","goat_hang_scaffold")
		}
	}
	
	MyModGlobal:Refresh(my_items,"Radial Menu: Goat SFX")
