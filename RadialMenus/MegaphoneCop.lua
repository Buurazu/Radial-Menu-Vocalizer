	my_items = {
		{
			text = "This is the Police", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","mga_intro"),
		},
		{
			text = "Killed civilians", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","mga_killed_civ_2nd"),
		},
		{
			text = "Past Negotiations", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","mga_generic_c"),
		},
		{
			text = "Fuck this", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","mga_leave"),
		},
		{
			text = "Death", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","mga_death_scream"),
		},
		{
			text = "You've breached the vault", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","mga_vault_c"),
		},
		{
			text = "Impressive", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","mga_robbers_clever"),
		},
		{
			text = "How's it going", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","mga_generic_a"),
		}
	}
	MyModGlobal:Refresh(my_items, "Radial Menu: Megaphone Cop")

		