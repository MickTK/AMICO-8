----------------------------------------------
-- [9] Wifi0 -> WifiWebResponseEvent
-- On http response to request (utf-8)
----------------------------------------------
function eventChannel9(sender,event)
	game.response(event.RequestHandle,event.ResponseCode,event.Text)
end
