| API                 | Type                                                                   |
| :------------------ | :--------------------------------------------------------------------- |
| `os.drivers.memory` | [FlashMemory](https://docs.retrogadgets.game/modules/FlashMemory.html) |

| Function                   | Value       | Description                          |
| :------------------------- | :---------- | :----------------------------------- |
| `os.memory.save(table:{})` | **boolean** | Save the given table data in memory. |
| `os.memory.load()`         | **{}**      | Load the data from memory.           |

### Example
```lua
-- Save data
os.memory.save({
  player_position = player.position,
  data = some_data
})
```
