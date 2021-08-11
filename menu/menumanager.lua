local key = ModPath .. '	' .. RequiredScript
if _G[key] then return else _G[key] = true end

Hooks:Add('LocalizationManagerPostInit', 'LocalizationManagerPostInit_RadialMenuVocalizer', function(loc)
	loc:load_localization_file(VoiceCommandsMod._path .. 'menu/english.txt', false)
end)

Hooks:Add('MenuManagerInitialize', 'MenuManagerInitialize_RadialMenuVocalizer', function(menu_manager)

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
		MenuHelper:ResetItemsToDefaultValue(item, {['radial_menu_radius'] = true}, VoiceCommandsMod.settings.radial_menu_radius)
		MenuHelper:ResetItemsToDefaultValue(item, {['radial_menu_deadzone'] = true}, VoiceCommandsMod.settings.radial_menu_deadzone)
		MenuHelper:ResetItemsToDefaultValue(item, {['radial_menu_font_size'] = true}, VoiceCommandsMod.settings.radial_menu_font_size)
		MenuHelper:ResetItemsToDefaultValue(item, {['radial_menu_center_font_size'] = true}, VoiceCommandsMod.settings.radial_menu_center_font_size)
	end

	VoiceCommandsMod:Load()

	MenuHelper:LoadFromJsonFile(VoiceCommandsMod._path .. 'menu/options.txt', VoiceCommandsMod, VoiceCommandsMod.settings)

end)
