	my_items = {
		{
			text = "HO HO HO!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","santa_hoho")
		},
		{
			text = "Christmas Cloaker Chase",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","cloaker_detect_christmas_mono")
		},
		{
			text = "A Merry Payday Christmas",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","xmas13_a_merry_payday_christmas")
		},
		{
			text = "A Heist not Attempted Before",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","xmas13_a_heist_not_attempted_before")
		},
		{
			text = "If it has to be Christmas",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","xmas13_if_it_has_to_be_christmas")
		},
		{
			text = "I've been a Bad Boy",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","xmas13_ive_been_a_bad_boy")
		},
		{
			text = "Christmas in Prison",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","xmas13_christmas_in_prison")
		},
		{
			text = "Deck the Safe House",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","xmas13_deck_the_safe_house")
		}
	}
	
	MyModGlobal:Refresh(my_items,"Radial Menu: Christmas")
