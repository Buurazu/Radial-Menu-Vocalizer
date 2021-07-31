	my_items = {
		{
			text = "Yes!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","play_pln_gen_dir_08")
		},
		{
			text = "Nailing it",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","play_pln_gen_lkgo_01")
		},
		{
			text = "Great assault",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ban_b12")
		},
		{
			text = "Good assault",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ban_b11")
		},
		{
			text = "They haven't heard a thing",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","play_pln_gen_alm_02")
		},
		{
			text = "PDTH Win (Delayed)",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ban_g02x")
		},
		{
			text = "Great job!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_pdsg_01")
		},
		{
			text = "That was close, good job",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","play_pln_gen_bfr_13")
		}
	}
	
	MyModGlobal:Refresh(my_items,"Radial Menu: Bain: Yes!")
