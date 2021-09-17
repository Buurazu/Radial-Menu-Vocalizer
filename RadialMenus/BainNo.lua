	VoiceCommandsMod.my_items = {
		{
			text = "No!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","play_pln_gen_dir_07")
		},
		{
			text = "Keep it together",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_pep")
		},
		{
			text = "Weathered assault",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ban_b10")
		},
		{
			text = "Stop killing civilians (Delayed)",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ban_c03")
		},
		{
			text = "Alarm's tripped",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","play_pln_gen_alm_01")
		},
		{
			text = "PDTH Loss (Delayed)",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ban_g01x")
		},
		{
			text = "About to get outgunned",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","play_pln_gen_pol_03")
		},
		{
			text = "You got busted",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ban_h34x")
		}
	}
	
	VoiceCommandsMod:Refresh(VoiceCommandsMod.my_items,"Radial Menu: Bain: No!")
