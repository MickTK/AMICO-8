----------------------------------------------
-- [8] Serial0 -> SerialReceiveEvent
-- On serial port read
----------------------------------------------
function eventChannel8(sender,event)
	if event.Type == "SerialReceiveEvent" then
		game.serial_read(event.Data)
	end
end
