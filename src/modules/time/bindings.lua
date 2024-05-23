----------------------------------------------
-- Time
----------------------------------------------
os.time = {}
--- Now (local)
os.time.now = function():{}
  return os.drivers.reality:GetDateTime()
end
--- Now (UTC)
os.time.now_utc = function():{}
  return os.drivers.reality:GetDateTimeUTC()
end
