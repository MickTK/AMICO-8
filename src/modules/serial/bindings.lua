----------------------------------------------
-- Serial
----------------------------------------------
os.serial = {}
os.serial.print = function(text:string)
  os.drivers.serial:Print(text)
end

function os.game_template.serial_read(data:string) end
