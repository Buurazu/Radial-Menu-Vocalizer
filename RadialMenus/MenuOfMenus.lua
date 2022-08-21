
VoiceCommandsMod.my_items = {}

for k,v in pairs(BLT.Keybinds._keybinds) do
	if type(v) == "table" then
		if v["_mod"].name == "Radial Menu Vocalizer" and v["_name"]:find("Radial Menu") then
			local add_text = v["_name"]:sub(14)
			local my_alpha = 0.3
			local path = Application:nice_path(v["_mod"]:GetPath() .. "/" .. v["_file"], false)
			
			table.insert(VoiceCommandsMod.my_items,
			{
				text = add_text,
				stay_open = false, show_text = true, alpha = my_alpha,
				callback = callback(VoiceCommandsMod,VoiceCommandsMod,"select_menu",path)
			})
		end
	end
end

VoiceCommandsMod:Refresh(VoiceCommandsMod.my_items, nil)