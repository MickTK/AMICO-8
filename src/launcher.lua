local os 	 = require("_os.lua")
local game = require("cartridge.lua")

if game.init ~= nil then game.init() end
function update()
	if game.update == nil then return end
	game.update()
end

----------------------------------------------
-- Events
----------------------------------------------
import_module("modules/analogs/events.lua")
import_module("modules/buttons/events.lua")
import_module("modules/display/events.lua")
import_module("modules/gamepad/events.lua")
import_module("modules/keyboard/events.lua")
import_module("modules/request/events.lua")
import_module("modules/serial/events.lua")
import_module("modules/speaker/events.lua")
