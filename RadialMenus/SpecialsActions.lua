	my_items = {
		{
			text = "Cloaker Chase", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","cloaker_detect_mono"),
		},
		{
			text = "Bulldozer Taunt", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","bdz_g90"),
		},
		{
			text = "Captain Taunt", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","cpw_a02"),
		},
		{
			text = "Taser Taunt", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","tsr_post_tasing_taunt"),
		},
		{
			text = "Shield SFX", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","shield_identification"),
		},
		{
			text = "Taser Tasered", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","tsr_tasered"),
		},
		{
			text = "Turret Alert", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","swatturret_alert"),
		},
		{
			text = "Bulldozer Sees Player", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","bdz_c01"),
		}
	}
	MyModGlobal:Refresh(my_items, "Radial Menu: Specials Actions")

		