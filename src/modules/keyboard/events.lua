----------------------------------------------
-- [6] KeyboardChip0 -> KeyboardChipEvent
-- On keyboard key pressed
----------------------------------------------
function eventChannel6(sender,event)
	if not event.ButtonUp then
		game.on_key_pressed(event.InputName)
	end
end
