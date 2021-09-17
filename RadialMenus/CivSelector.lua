cop_names = { cm1 = "Male 1", cm2 = "Male 2", cm3 = "Male 3", cm4 = "Male 4", cm5 = "Male 5", cm6 = "Male 6", cf1 = "Female 1", cf2 = "Female 2", cf3 = "Female 3", cf4 = "Female 4", cf5 = "Female 5"}
cop_options = {"cm1", "cm2", "cm3", "cm4", "cm5", "cm6", "cf1", "cf2", "cf3", "cf4", "cf5"}

VoiceCommandsMod.my_items = {}

for _, value in ipairs(cop_options) do
	local add_text = ""
	local my_alpha = 0.3
	if (VoiceCommandsMod.settings.civ_selection == value) then add_text = "\n(Selected)" end
	table.insert(VoiceCommandsMod.my_items,
	{
		text = cop_names[value] .. add_text,
		stay_open = false, show_text = true, alpha = my_alpha,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"select_civ",value)
	})
end

VoiceCommandsMod:Refresh(VoiceCommandsMod.my_items, "Options: Civ Selection")