cop_names = { l4n = "Guard 2-2", l2n = "Guard 2-3", l1n = "Guard 2-4", l3n = "Guard 2-5", l5n = "Guard 2-6 (Unused)", l1d = "Zeal Unit 1", l2d = "Zeal Unit 2", l3d = "Zeal Unit 3", l4d = "Zeal Unit 4", l5d = "Zeal Unit 5"}
cop_options = {"l4n", "l2n", "l1n", "l3n", "l5n", "l1d", "l2d", "l3d", "l4d", "l5d"}

--l1n - l4n = standard guards + cops
--l5n = nightclub mobster or something? he calls himself 2-6 but very rarely
--l1d - l4d = helmet static cops (Death Sentence only?)
--does l5d show up? it exists but doesn't seem to spawn

my_items = {}

for _, value in ipairs(cop_options) do
	local add_text = ""
	local my_alpha = 0.3
	if (VoiceCommandsMod.settings.cop_selection == value) then add_text = "\n(Selected)" end
	table.insert(my_items,
	{
		text = cop_names[value] .. add_text, --change this to cop names
		stay_open = false, show_text = true, alpha = my_alpha,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"select_cop",value)
	})
end

MyModGlobal:Refresh(my_items, "Options: Cop Selection")