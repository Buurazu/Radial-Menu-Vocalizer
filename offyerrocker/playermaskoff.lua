
local orig_check_actions = PlayerMaskOff._update_check_actions
function PlayerMaskOff:_update_check_actions(t, dt,...)

	if RMVRadialMouseMenu and RMVRadialMouseMenu.current_menu then
		local current_menu = RMVRadialMouseMenu.current_menu
		if not current_menu.allow_keyboard_input and current_menu:active() then
		else
			return orig_check_actions(self,t,dt,...)
		end
	else
		return orig_check_actions(self,t,dt,...)
	end

	local input = self:_get_input(t, dt)
--	self._stick_move = self._controller:get_input_axis("move")

	self._move_dir = nil

	self:_update_interaction_timers(t)
	self:_update_start_standard_timers(t)

	if input.btn_stats_screen_press then
		self._unit:base():set_stats_screen_visible(true)
	elseif input.btn_stats_screen_release then
		self._unit:base():set_stats_screen_visible(false)
	end

	self:_update_foley(t, input)

	local new_action = nil
	new_action = new_action or self:_check_use_item(t, input)
	new_action = new_action or self:_check_action_interact(t, input)

	if not new_action and self._state_data.ducking then
		self:_end_action_ducking(t)
	end

	self:_check_action_jump(t, input)
	self:_check_action_duck(t, input)
	self:_check_action_run(t, input)
	self:_check_action_change_equipment(t, input)
end