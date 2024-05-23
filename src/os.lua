----------------------------------------------
-- Amichetto8 OS
----------------------------------------------
local os = {}

----------------------------------------------
-- Informations
----------------------------------------------
os.VERSION = "0.9.0"

----------------------------------------------
-- Resources
----------------------------------------------
os.DEFAULT_PALETTE = "_palette.png"
os.DEFAULT_FONT 	 = "_font.png"

----------------------------------------------
-- Drivers
----------------------------------------------
os.drivers = {}
os.drivers.cpu      = gdt.CPU0
os.drivers.video    = gdt.VideoChip0
os.drivers.audio 	  = gdt.AudioChip0
os.drivers.memory   = gdt.FlashMemory0
os.drivers.rom 		  = gdt.ROM
os.drivers.reality  = gdt.RealityChip
os.drivers.keyboard = gdt.KeyboardChip0
os.drivers.gamepad  = gdt.GamepadChip0
os.drivers.wifi     = gdt.Wifi0
os.drivers.serial   = gdt.Serial0
os.drivers.buttons  = {
  up 	   = gdt.LedButton7,  -- up arrow
  left   = gdt.LedButton9,  -- left arrow
  right  = gdt.LedButton6,  -- right arrow
  down   = gdt.LedButton8,  -- down arrow
  b 		 = gdt.LedButton3,  -- z
  a 		 = gdt.LedButton1,  -- x
  y 		 = gdt.LedButton0,  -- c
  x 		 = gdt.LedButton2,  -- v
  r1 	   = gdt.LedButton13, -- 4
  r2 	   = gdt.LedButton5,  -- 3
  l1 	   = gdt.LedButton14, -- 1
  l2 	   = gdt.LedButton10, -- 2
  start  = gdt.LedButton11, -- return
  select = gdt.LedButton12  -- backspace
}
os.drivers.analogs = {
  left  = gdt.Stick0, -- wasd
  right = gdt.Stick1  -- ijkl
}

----------------------------------------------
-- Functions
----------------------------------------------
os.load_sprite = function(name:string):SpriteSheet
  return os.drivers.rom.User.SpriteSheets[name]
end
os.load_sound = function(name:string):AudioSample
  return os.drivers.rom.User.AudioSamples[name]
end
os.load_script = function(name:string):Code
  return os.drivers.rom.User.Codes[name]
end

----------------------------------------------
-- Game template
----------------------------------------------
os.game_template = {}
function os.game_template.init() end
function os.game_template.update() end

----------------------------------------------
-- Modules
----------------------------------------------
import_module("modules/speaker/bindings.lua")
import_module("modules/display/bindings.lua")
import_module("modules/memory/bindings.lua")
import_module("modules/time/bindings.lua")
import_module("modules/request/bindings.lua")
import_module("modules/serial/bindings.lua")
import_module("modules/buttons/bindings.lua")
import_module("modules/analogs/bindings.lua")
import_module("modules/keyboard/bindings.lua")
import_module("modules/gamepad/bindings.lua")

return os
