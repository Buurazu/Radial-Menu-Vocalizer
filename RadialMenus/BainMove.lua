	my_items = {
		{
			text = "MOVE MOVE MOVE!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","play_pln_gen_urg_01")
		},
		{
			text = "Clock's ticking",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","play_pln_gen_bfr_10")
		},
		{
			text = "Pronto people",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hur_01")
		},
		{
			text = "Point of No Return",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ban_p01")
		},
		{
			text = "Ready to go?",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ce_01")
		},
		{
			text = "Next step",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","play_pln_gen_fbo_01")
		},
		{
			text = "Let's finish strong",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","play_pln_gen_bfr_11")
		},
		{
			text = "Escape's here",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_vih_01")
		}
	}
	
	MyModGlobal:Refresh(my_items,"Radial Menu: Bain: MOVE!")
