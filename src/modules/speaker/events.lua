----------------------------------------------
-- [3] AudioChip0 -> AudioChipChannelEvent
-- On sound reproduced
----------------------------------------------
function eventChannel3(sender,event)
	game.on_sound_reproduced(event.Channel)
end
