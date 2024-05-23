----------------------------------------------
-- [10] LedButton7 -> LedButtonEvent
-- Up arrow
----------------------------------------------
function eventChannel10(sender,event)
	if event.ButtonDown or event.ButtonUp then
		game.up_arrow(event.ButtonDown)
	end
end
----------------------------------------------
-- [11] LedButton9 -> LedButtonEvent
-- Left arrow
----------------------------------------------
function eventChannel11(sender,event)
	if event.ButtonDown or event.ButtonUp then
		game.left_arrow(event.ButtonDown)
	end
end
----------------------------------------------
-- [12] LedButton6 -> LedButtonEvent
-- Right arrow
----------------------------------------------
function eventChannel12(sender,event)
	if event.ButtonDown or event.ButtonUp then
		game.right_arrow(event.ButtonDown)
	end
end
----------------------------------------------
-- [13] LedButton8 -> LedButtonEvent
-- Down arrow
----------------------------------------------
function eventChannel13(sender,event)
	if event.ButtonDown or event.ButtonUp then
		game.down_arrow(event.ButtonDown)
	end
end

----------------------------------------------
-- [14] LedButton3 -> LedButtonEvent
-- B button
----------------------------------------------
function eventChannel14(sender,event)
	if event.ButtonDown or event.ButtonUp then
		game.b_button(event.ButtonDown)
	end
end
----------------------------------------------
-- [15] LedButton1 -> LedButtonEvent
-- A button
----------------------------------------------
function eventChannel15(sender,event)
	if event.ButtonDown or event.ButtonUp then
		game.a_button(event.ButtonDown)
	end
end
----------------------------------------------
-- [16] LedButton0 -> LedButtonEvent
-- Y button
----------------------------------------------
function eventChannel16(sender,event)
	if event.ButtonDown or event.ButtonUp then
		game.y_button(event.ButtonDown)
	end
end
----------------------------------------------
-- [17] LedButton2 -> LedButtonEvent
-- X button
----------------------------------------------
function eventChannel17(sender,event)
	if event.ButtonDown or event.ButtonUp then
		game.x_button(event.ButtonDown)
	end
end

----------------------------------------------
-- [18] LedButton11 -> LedButtonEvent
-- Start button
----------------------------------------------
function eventChannel18(sender,event)
	if event.ButtonDown or event.ButtonUp then
		game.start_button(event.ButtonDown)
	end
end
----------------------------------------------
-- [19] LedButton12 -> LedButtonEvent
-- Select button
----------------------------------------------
function eventChannel19(sender,event)
	if event.ButtonDown or event.ButtonUp then
		game.select_button(event.ButtonDown)
	end
end
