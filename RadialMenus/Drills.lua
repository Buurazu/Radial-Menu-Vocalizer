	my_items = {
		{
			text = "Drill's jammed",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","d01x_sin")
		},
		{
			text = "Computer's jammed",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","d03_plu")
		},
		{
			text = "Something's jammed",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","d05")
		},
		{
			text = "It's stuck",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v52")
		},
		{
			text = "Drill's mounted",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g21")
		},
		{
			text = "Drill's done",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v23")
		},
		{
			text = "Computer's done",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v24")
		},
		{
			text = "It's done",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v25")
		},
		{
			text = "Drill's jammed\nAGAIN",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","d02x_sin")
		},
		{
			text = "Computer's jammed\nAGAIN",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","d04_plu")
		},
		{
			text = "Lance jammed",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","d03_sin")
		},
		{
			text = "Lance jammed\nAGAIN",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","d04_sin")
		},
		{
			text = "I've got the drill!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g61")
		},
		{
			text = "Post Drill Repair",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g22")
		},
	}
	local whohaswhat = { rb1 = 15, rb2 = {8,7,6}, rb3 = {12,11,8,7,4}, rb4 = 15, rb5 = {12,11}, rb6 = 7,
	rb7 = 9, rb8 = 6, rb9 = 9, rb10 = 6 }
	local ourcharacter = managers.criminals:character_by_name(managers.criminals:local_character_name())
	local voice = "rb1"
	if (ourcharacter) then voice = ourcharacter.static_data.voice end
	
	--the majority of characters only have the first 8 sounds so treat it as a default
	if (whohaswhat[voice] == nil) then whohaswhat[voice] = 9 end
	--remove the lines we don't have, in reverse order
	if (type(whohaswhat[voice]) ~= "table") then
		for i=14,whohaswhat[voice],-1 do
			table.remove(my_items,i)
		end
	else
		for i,c in ipairs(whohaswhat[voice]) do
			table.remove(my_items,c)
		end
	end
	
	--managers.player:local_player():sound():set_voice(voice)
	MyModGlobal:Refresh(my_items,"Radial Menu: Drills")
