----------------------------------------------
--- Speaker
----------------------------------------------
os.speaker = {}
-- Play
os.speaker.play = function(sample,channel:number)
  if type(sample) == "string" then sample = os.load_sound(sample) end
  os.drivers.audio:Play(sample,channel)
end
-- Loop
os.speaker.loop = function(sample,channel:number)
  if type(sample) == "string" then sample = os.load_sound(sample) end
  os.drivers.audio:PlayLoop(sample,channel)
end
-- Pause
os.speaker.pause = function(channel:number)
  os.drivers.audio:Pause(channel)
end
-- Resume
os.speaker.resume = function(channel:number)
  os.drivers.audio:UnPause(channel)
end
-- Stop
os.speaker.stop = function(channel:number)
  os.drivers.audio:Stop(channel)
end

----------------------------------------------
--- Events
----------------------------------------------
function os.game_template.on_sound_reproduced(channel:number) end
