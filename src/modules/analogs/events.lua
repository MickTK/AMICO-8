----------------------------------------------
-- [20] Stick0 -> StickValueChangeEvent
-- Left stick
----------------------------------------------
function eventChannel20(sender,event)
	game.left_stick(event.X,event.y)
end
----------------------------------------------
-- [21] Stick1 -> StickValueChangeEvent
-- Right stick
----------------------------------------------
function eventChannel21(sender,event)
	game.right_stick(event.X,event.y)
end
