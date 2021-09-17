	VoiceCommandsMod.my_items = {
		{
			text = "Pick up the pager (quiet)",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_pager_a")
		},
		{
			text = "That's one",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","play_pln_gen_count_01")
		},
		{
			text = "That's two",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","play_pln_gen_count_02")
		},
		{
			text = "That's three",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","play_pln_gen_count_03")
		},
		{
			text = "That's four",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","play_pln_gen_count_04")
		},
		{
			text = "Just two more",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","play_pln_gen_count_15")
		},
		{
			text = "Just one more",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","play_pln_gen_count_16")
		},
		{
			text = "No more pagers (quiet)",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_pager_g")
		}
	}
	
	VoiceCommandsMod:Refresh(VoiceCommandsMod.my_items,"Radial Menu: Bain: Pagers")
