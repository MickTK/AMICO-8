----------------------------------------------
-- Memory
----------------------------------------------
os.memory = {}
--- Save
os.memory.save = function(table:{}):boolean
  return os.drivers.memory:Save(table)
end
--- Load
os.memory.load = function():{}
  return os.drivers.memory:Load()
end
