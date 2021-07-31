local orig_determine_move_direction = PlayerStandard._determine_move_direction
function PlayerStandard:_determine_move_direction(...)
	if RadialMouseMenu and RadialMouseMenu.current_menu then
		local current_menu = RadialMouseMenu.current_menu
		if not current_menu.allow_keyboard_input and current_menu:active() then
			self._move_dir = nil
			self._normal_move_dir = nil
			return
		end
	end
	return orig_determine_move_direction(self,...)
end

local orig_check_fire = PlayerStandard._check_action_primary_attack
function PlayerStandard:_check_action_primary_attack(...)
	if RadialMouseMenu and RadialMouseMenu.current_menu then
		local current_menu = RadialMouseMenu.current_menu
		if current_menu:active() then
			return false
		end
	end
	return orig_check_fire(self,...)
end