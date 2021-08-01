	my_items = {
		{
			text = "The Bomb",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","alarm_the_bomb_on_slow_fade")
		},
		{
			text = "Shadow Raid",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","alarm_kosugi_on_slow_fade")
		},
		{
			text = "10 second countdown",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","alarm_countdown_ticking_down_10sec")
		},
		{
			text = "Fire Alarm",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","alarm_fire")
		},
		{
			text = "Jewelry",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","jewelry_alarm_on_slow_fade")
		},
		{
			text = "Hitec Lotec",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","hitec_lotec_alarm_slow_fade")
		},
		{
			text = "Countdown Loop",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","alarm_countdown_loop")
		},
		{
			text = "Museum",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","alarm_museum_on_slow_fade")
		}
	}
	
	MyModGlobal:Refresh(my_items,"Radial Menu: Alarm SFX")
