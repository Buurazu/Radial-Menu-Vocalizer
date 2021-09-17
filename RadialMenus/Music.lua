	VoiceCommandsMod.my_items = {
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
			text = "PD:TH Success",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pth_see_you_at_the_safe_house")
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
		},
		{
			text = "Ode All Avidita",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","ode_all_avidita")
		},
		{
			text = "Preplanning Music (Old)",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","preplanning_music_old")
		},
		{
			text = "I'm a Wild One",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","im_a_wild_one")
		},
		{
			text = "This is Our Time",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","this_is_our_time")
		},
		{
			text = "Jukebox (Shuffle)",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","jukebox_shuffle")
		},
		{
			text = "Jukebox (Rock)",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","jukebox_rock")
		},
		{
			text = "Jukebox (The Flames of Love)",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","jukebox_the_flames_of_love")
		},
	}
	
	VoiceCommandsMod:Refresh(VoiceCommandsMod.my_items,"Radial Menu: Music")
