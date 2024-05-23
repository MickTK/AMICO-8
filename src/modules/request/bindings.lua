----------------------------------------------
-- Request
----------------------------------------------
os.request = {}
local function _format_get_data(data:{}):string
  local s = "?"
  for key, value in pairs(data) do
    s = s .. key .. "=" .. value .. "&"
  end
  return s
end
os.request.get = function(url:string,data:{}?):number
  if data then url = url .. _format_get_data(data) end
  return os.drivers.wifi:WebGet(url)
end
os.request.post = function(url:string,data:{}?):number
  if data == nil then data = {} end
  return os.drivers.wifi:WebPostForm(url,data)
end

function os.game_template.response(id:number,code:number,data:string) end
