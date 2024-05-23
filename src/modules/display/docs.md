| API                | Type                                                               |
| :----------------- | :----------------------------------------------------------------- |
| `os.drivers.video` | [VideoChip](https://docs.retrogadgets.game/modules/VideoChip.html) |

| Function                                                                                     | Value | Description                                                                                      |
| :------------------------------------------------------------------------------------------- | :---- | :----------------------------------------------------------------------------------------------- |
| `os.display.clear()`                                                                         | nil   | Clear the display.                                                                               |
| `os.display.draw_pixel(position:vec2, color:color)`                                          | nil   | Draw a pixel at the given position with the given color.                                         |
| `os.display.draw_line(point1:vec2, point2:vec2, color:color)`                                | nil   | Draw a line between the two given points with the given color.                                   |
| `os.display.draw_circle(position:vec2, radius:number, color:color, fill:boolean)`            | nil   | Draw a circle at the given position with the given radius and color.                             |
| `os.display.draw_rectangle(point1:vec2, point2:vec2, color:color, fill:boolean)`             | nil   | Draw a rectangle between the two given points with the given color.                              |
| `os.display.draw_triangle(point1:vec2, point2:vec2, point3:vec2, color:color, fill:boolean)` | nil   | Draw a triangle between the three given points with the given color.                             |
| `os.display.draw_sprite(position:vec2, sprite, index:vec2)`                                  | nil   | Draw the given sprite (by object or by name) with the given index at the given position.         |
| `os.display.draw_text(position:vec2, text:string, clr:color, font?)`                         | nil   | Draw the given text at the given position with the given color. Default font: `os.DEFAULT_FONT`. |

| Event                          | Description                                         |
| :----------------------------- | :-------------------------------------------------- |
| `game.on_touch(position:vec2)` | Event sent when the display gets touched/untouched. |

### Example
```lua
-- Draw a circle when the display is touched
function game.on_touch(position:vec2)
  os.display.clear()
  if position ~= vec2(-1,-1) then 
    os.display.draw_circle(position, 10, color.red)
  end
end
```
