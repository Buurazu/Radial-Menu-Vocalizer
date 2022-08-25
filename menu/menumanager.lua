local key = ModPath .. '	' .. RequiredScript
if _G[key] then return else _G[key] = true end

Hooks:Add("MenuManagerBuildCustomMenus", "MenuManagerBuildCustomMenus_RadialMenuVocalizer", function(menu_manager, nodes)
	
	MenuCallbackHandler.VocalizerOptionsCheckbox = function(this, item)
		VoiceCommandsMod.settings[item:name()] = item:value() == 'on'
	end

	MenuCallbackHandler.VocalizerOptionsValue = function(this, item)
		VoiceCommandsMod.settings[item:name()] = math.floor(item:value())
	end

	MenuCallbackHandler.VocalizerOptionsSave = function(this, item)
		VoiceCommandsMod:Save()
	end

	MenuCallbackHandler.VocalizerResetToDefaultValues = function(this, item)
		VoiceCommandsMod:ResetToDefaultValues()
		
		MenuHelper:ResetItemsToDefaultValue(item, {['send_chat'] = true}, VoiceCommandsMod.settings.send_chat)
		MenuHelper:ResetItemsToDefaultValue(item, {['prefix_chat'] = true}, VoiceCommandsMod.settings.prefix_chat)
		MenuHelper:ResetItemsToDefaultValue(item, {['no_chat_on_click'] = true}, VoiceCommandsMod.settings.no_chat_on_click)
		MenuHelper:ResetItemsToDefaultValue(item, {['radial_menu_radius'] = true}, VoiceCommandsMod.settings.radial_menu_radius)
		MenuHelper:ResetItemsToDefaultValue(item, {['radial_menu_deadzone'] = true}, VoiceCommandsMod.settings.radial_menu_deadzone)
		MenuHelper:ResetItemsToDefaultValue(item, {['radial_menu_font_size'] = true}, VoiceCommandsMod.settings.radial_menu_font_size)
		MenuHelper:ResetItemsToDefaultValue(item, {['radial_menu_center_font_size'] = true}, VoiceCommandsMod.settings.radial_menu_center_font_size)
	end

	VoiceCommandsMod:Load()
	
	locs = {
	rmv_options_menu_title = "Radial Menu Vocalizer",
	rmv_options_menu_desc = "Toggle sending chat messages, change the menu's radius/deadzone/font size",
	
	rmv_options_menu_2_title = "Toggle Individual Quickchat Messages",
	rmv_options_menu_2_desc = "If you want to quickchat 'Yes!' but want to spam 'I need a medic bag' with no repercussions, now you can",

	rmv_options_menu_3_title = "Toggle Menus Shown in the Menu of Menus",
	rmv_options_menu_3_desc = "Disable menus you don't use (like Goat SFX or Megaphone Cop) from being an option in the Menu of Menus",

	rmv_options_send_chat_title = "Quickchat",
	rmv_options_send_chat_desc = "Sends a chat message on vocalization for informative sounds/responses\n(yes, no, escape's here, no more pagers, 10 second countdown, etc.)",
	rmv_options_prefix_chat_title = "Prefix Quickchat Messages",
	rmv_options_prefix_chat_desc = "Toggle prefixing quickchat messages with [RMV]",
	
	rmv_options_no_chat_on_click_title = "Don't Quickchat/Close on Mouse Click",
	rmv_options_no_chat_on_click_desc = "Disable quickchat, and keep the menu open, when you left-click instead of releasing the menu hotkey\nThis lets you use a sound you normally want to quickchat without spamming chat",

	rmv_options_radius_title = "Menu Radius",
	rmv_options_radius_desc = "Size of the menu's radius in pixels (Default: 350)",
	rmv_options_deadzone_title = "Menu Deadzone",
	rmv_options_deadzone_desc = "Minimum distance from center to detect the mouse (Default: 30)",

	rmv_options_font_size_title = "Font Size",
	rmv_options_font_size_desc = "Size of each item's text (Default: 12)",
	rmv_options_center_font_size_title = "Center Font Size",
	rmv_options_center_font_size_desc = "Size of the currently selected item's text (Default: 16)",

	rmv_options_reset_title = "Reset to Defaults",
	rmv_options_reset_desc = "Reset the above settings to their default values",

}
  managers.localization:add_localized_strings(locs)
	
	MenuHelper:NewMenu("rmv_options_menu")
	
	MenuHelper:AddToggle(
		{
			priority = 200,
			menu_id = "rmv_options_menu",
			id = "send_chat",
			title = "rmv_options_send_chat_title",
			desc = "rmv_options_send_chat_desc",
			callback = "VocalizerOptionsCheckbox",
			value = VoiceCommandsMod.settings["send_chat"]
		}
	)
	MenuHelper:AddToggle(
		{
			priority = 190,
			menu_id = "rmv_options_menu",
			id = "prefix_chat",
			title = "rmv_options_prefix_chat_title",
			desc = "rmv_options_prefix_chat_desc",
			callback = "VocalizerOptionsCheckbox",
			value = VoiceCommandsMod.settings["prefix_chat"]
		}
	)
	MenuHelper:AddToggle(
		{
			priority = 185,
			menu_id = "rmv_options_menu",
			id = "no_chat_on_click",
			title = "rmv_options_no_chat_on_click_title",
			desc = "rmv_options_no_chat_on_click_desc",
			callback = "VocalizerOptionsCheckbox",
			value = VoiceCommandsMod.settings["no_chat_on_click"]
		}
	)
	MenuHelper:AddDivider(
		{
			priority = 180,
			menu_id = "rmv_options_menu",
			size = 8
		}
	)
	MenuHelper:AddSlider(
		{
			priority = 170,
			menu_id = "rmv_options_menu",
			id = "radial_menu_radius",
			title = "rmv_options_radius_title",
			desc = "rmv_options_radius_desc",
			callback = "VocalizerOptionsValue",
			value = VoiceCommandsMod.settings["radial_menu_radius"],
			default_value = 350,
			show_value = true,
			min = 100,
			max = 700,
			step = 5
		}
	)
	MenuHelper:AddSlider(
		{
			priority = 160,
			menu_id = "rmv_options_menu",
			id = "radial_menu_deadzone",
			title = "rmv_options_deadzone_title",
			desc = "rmv_options_deadzone_desc",
			callback = "VocalizerOptionsValue",
			value = VoiceCommandsMod.settings["radial_menu_deadzone"],
			default_value = 30,
			show_value = true,
			min = 0,
			max = 100,
			step = 5
		}
	)
	MenuHelper:AddDivider(
		{
			priority = 150,
			menu_id = "rmv_options_menu",
			size = 8
		}
	)
	MenuHelper:AddSlider(
		{
			priority = 140,
			menu_id = "rmv_options_menu",
			id = "radial_menu_font_size",
			title = "rmv_options_font_size_title",
			desc = "rmv_options_font_size_desc",
			callback = "VocalizerOptionsValue",
			value = VoiceCommandsMod.settings["radial_menu_font_size"],
			default_value = 12,
			show_value = true,
			min = 6,
			max = 32,
			step = 2
		}
	)
	MenuHelper:AddSlider(
		{
			priority = 130,
			menu_id = "rmv_options_menu",
			id = "radial_menu_center_font_size",
			title = "rmv_options_center_font_size_title",
			desc = "rmv_options_center_font_size_desc",
			callback = "VocalizerOptionsValue",
			value = VoiceCommandsMod.settings["radial_menu_center_font_size"],
			default_value = 16,
			show_value = true,
			min = 6,
			max = 32,
			step = 2
		}
	)
	
	MenuHelper:AddDivider(
		{
			priority = 120,
			menu_id = "rmv_options_menu",
			size = 8
		}
	)
	
	MenuHelper:AddButton(
		{
			priority = 110,
			menu_id = "rmv_options_menu",
			id = "rmv_button_reset",
			title = "rmv_options_reset_title",
			desc = "rmv_options_reset_desc",
			callback = "VocalizerResetToDefaultValues"
		}
	)
	
	MenuHelper:AddDivider(
		{
			priority = 100,
			menu_id = "rmv_options_menu",
			size = 16
		}
	)
	nodes["rmv_options_menu"] = MenuHelper:BuildMenu( "rmv_options_menu", { back_callback = "VocalizerOptionsSave" } )
	MenuHelper:AddMenuItem(nodes["blt_options"], "rmv_options_menu", "rmv_options_menu_title", "rmv_options_menu_desc")
	
	-- Create the menu for quickchat toggles
	MenuHelper:NewMenu("rmv_options_menu_2")
	
	local current_header = ""
	for _,v in ipairs(VoiceCommandsMod._chat_in_order) do
		if (type(v) ~= "table") then
			MenuHelper:AddToggle({
				localized = false,
				id = "rmv_chat_toggle_" .. v,
				title = VoiceCommandsMod._chat_conversion[v],
				desc = "Radial Menu: " .. current_header .. "\nToggle sending this message in chat when you vocalize it",
				value = VoiceCommandsMod.settings["rmv_chat_toggle_" .. v],
				menu_id = "rmv_options_menu_2",
				callback = "VocalizerOptionsCheckbox",
				priority = #VoiceCommandsMod._chat_in_order - _ + 10
			})
		else
			if (v[2] and v[2] ~= 0) then
				MenuHelper:AddDivider({
					id = "rmv_divider_" .. _,
					size = v[2],
					menu_id = "rmv_options_menu_2",
					priority = #VoiceCommandsMod._chat_in_order - _ + 10
				})
			end
			current_header = v[1]
		end
	end
	
	nodes["rmv_options_menu_2"] = MenuHelper:BuildMenu( "rmv_options_menu_2", { back_callback = "VocalizerOptionsSave" } )
	
	MenuHelper:AddMenuItem(nodes["rmv_options_menu"], "rmv_options_menu_2","rmv_options_menu_2_title", "rmv_options_menu_2_desc")

	-- Create the menu for Menu of Menus toggles
	MenuHelper:NewMenu("rmv_options_menu_3")
	
	for k,v in ipairs(BLT.Keybinds._keybinds) do
		if type(v) == "table" then
			if v["_mod"].name == "Radial Menu Vocalizer" and v["_name"]:find("Radial Menu") then
				
				local add_text = v["_name"]:sub(14)
				
				MenuHelper:AddToggle({
					localized = false,
					id = "rmv_mom_toggle_" .. add_text,
					title = add_text,
					desc = v["_desc"],
					value = VoiceCommandsMod.settings["rmv_mom_toggle_" .. add_text],
					menu_id = "rmv_options_menu_3",
					callback = "VocalizerOptionsCheckbox",
					priority = #BLT.Keybinds._keybinds - k + 10
				})
			end
		end
	end
	
	nodes["rmv_options_menu_3"] = MenuHelper:BuildMenu( "rmv_options_menu_3", { back_callback = "VocalizerOptionsSave" } )
	
	MenuHelper:AddMenuItem(nodes["rmv_options_menu"], "rmv_options_menu_3","rmv_options_menu_3_title", "rmv_options_menu_3_desc")
	
end)
