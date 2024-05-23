----------------------------------------------
--- Display
----------------------------------------------
os.display = {}
-- Clear
os.display.clear = function()
  os.drivers.video:Clear(color.clear)
end
-- Draw pixel
os.display.draw_pixel = function(position:vec2,color:color)
  os.drivers.video:SetPixel(position,color)
end
-- Draw line
os.display.draw_line = function(point1:vec2,point2:vec2,color:color)
  os.drivers.video:DrawLine(point1,point2,color)
end
-- Draw circle
os.display.draw_circle = function(position:vec2,radius:number,color:color,fill:boolean?)
  if fill then
    os.drivers.video:FillCircle(position,radius,color)
  else
    os.drivers.video:DrawCircle(position,radius,color)
  end	
end
-- Draw rectangle
os.display.draw_rectangle = function(point1:vec2,point2:vec2,color:color,fill:boolean?)
  if fill then
    os.drivers.video:FillRect(point1,point2,color)
  else
    os.drivers.video:DrawRect(point1,point2,color)
  end	
end
-- Draw triangle
os.display.draw_triangle = function(point1:vec2,point2:vec2,point3:vec2,color:color,fill:boolean?)
  if fill then
    os.drivers.video:FillTriangle(point1,point2,point3,color)
  else
    os.drivers.video:DrawTriangle(point1,point2,point3,color)
  end
end
-- Draw sprite
os.display.draw_sprite = function(position:vec2,sprite,index:vec2)
  if type(sprite) == "string" then
    sprite = os.load_sprite(sprite)
  end
  os.drivers.video:DrawSprite(position,sprite,index.X,index.Y,color.white,color.clear)
end
-- Draw text
os.display.draw_text = function(position:vec2,text:string,clr:color,font:string?)
  os.drivers.video:DrawText(
    position,
    font == nil and os.load_sprite(os.DEFAULT_FONT) or os.load_sprite(font),
    text, clr, color.clear
  )
end
----------------------------------------------
--- Events
----------------------------------------------
function os.game_template.on_touch(position:vec2) end
