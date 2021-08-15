cop_names = { r1n = "Russian 1", r2n = "Russian 2", r3n = "Russian 3", r4n = "Russian 4", m1n = "Mexican 1", m2n = "Mexican 2", m3n = "Mexican 3", m4n = "Mexican 4" }

cop_options = {"r1n","r2n","r3n","r4n","m1n","m2n","m3n","m4n"}

--Russian cops: r1n - r4n, r prefix on specials
--Mexican cops: m1n - m4n, m prefix on specials

my_items = {}

for _, value in ipairs(cop_options) do
	local add_text = ""
	if (VoiceCommandsMod.settings.cop_selection == value) then add_text = "\n(Selected)" end
	table.insert(my_items,
	{
		text = cop_names[value] .. add_text, --change this to cop names
		stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"select_cop",value)
	})
end

MyModGlobal:Refresh(my_items, "Options: Cop Selection (Russian/Mexican)")