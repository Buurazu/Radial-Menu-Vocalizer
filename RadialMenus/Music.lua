	my_items = {
		{
			text = "I Will Give You My All",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pth_i_will_give_you_my_all")
		},
		{
			text = "PD:TH Preparations",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pth_preparations")
		},
		{
			text = "Nightclub (Good)",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","diegetic_club_music")
		},
		{
			text = "Nightclub (Bad)",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","lets_go_shopping_menu")
		},
		{
			text = "Rock Music",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","diegetic_club_rock_music")
		},
		{
			text = "Results (Win)",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","resultscreen_win")
		},
		{
			text = "Results (Lose)",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","resultscreen_lose")
		},
		{
			text = "Shadow Raid Music",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","kosugi_music")
		}
	}
	
	MyModGlobal:Refresh(my_items,"Radial Menu: Music")
