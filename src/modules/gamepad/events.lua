----------------------------------------------
-- [7] GamepadChip0 -> GamepadChipButtonEvent 
-- On gamepad action
----------------------------------------------
function eventChannel7(sender,event)
	if event.Type == "GamepadChipButtonEvent" and not event.ButtonUp then
		game.on_gamepad_action(event.InputName)
	end
end