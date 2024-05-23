| API                  | Type                                                                   |
| :------------------- | :--------------------------------------------------------------------- |
| `os.drivers.reality` | [RealityChip](https://docs.retrogadgets.game/modules/RealityChip.html) |

| Function            | Value                                                                            | Description                      |
| :------------------ | :------------------------------------------------------------------------------- | :------------------------------- |
| `os.time.now()`     | [**{}**](https://docs.retrogadgets.game/modules/RealityChip.html#GetDateTime)    | Get the current datetime.        |
| `os.time.now_utc()` | [**{}**](https://docs.retrogadgets.game/modules/RealityChip.html#GetDateTimeUTC) | Get the current datetime in utc. |

### Example
```lua
-- Print the current year
print(os.time.now().year)
```
