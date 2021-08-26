_G.VoiceCommandsMod = _G.VoiceCommandsMod or {}
VoiceCommandsMod.dialogs = {}

--Get all sound IDs from the dialog list and associate them with their mission
--When the context sensitive menus are complete, we won't need to do this anymore
Hooks:PostHook(DialogManager, "_load_dialog_data", "RadialMenuVocalizer_load_dialog_data", function(self, name)
	VoiceCommandsMod.dialogs[name] = {}
	local file_name = "gamedata/dialogs/" .. name
	local data = PackageManager:script_data(Idstring("dialog"), file_name:id())
	
	for _, node in ipairs(data) do
		if node._meta == "dialog" then
			if not node.id or not node.sound then
				break
			end
			
			table.insert(VoiceCommandsMod.dialogs[name], node.sound)
		end
	end
end)