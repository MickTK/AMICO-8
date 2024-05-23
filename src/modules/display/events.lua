----------------------------------------------
-- [2] VideoChip0 -> VideoChipTouchEvent
-- On display touch
----------------------------------------------
function eventChannel2(sender,event)
	game.on_touch(event.TouchUp and vec2(-1,-1) or event.Value)
end
