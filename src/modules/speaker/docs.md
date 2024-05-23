| API                | Type                                                               |
| :----------------- | :----------------------------------------------------------------- |
| `os.drivers.audio` | [AudioChip](https://docs.retrogadgets.game/modules/AudioChip.html) |

| Function                                  | Value | Description                                                                 |
| :---------------------------------------- | :---- | :-------------------------------------------------------------------------- |
| `os.speaker.play(sample, channel:number)` | nil   | Play a given sample (by name or AudioSample object) at the given channel.   |
| `os.speaker.loop(sample, channel:number)` | nil   | Loop a given sample at the given channel.                                   |
| `os.speaker.pause(channel:number)`        | nil   | Pause the sound that is playing at the given channel.                       |
| `os.speaker.resume(channel:number)`       | nil   | Resume the sound (previously paused) that was playing at the given channel. |
| `os.speaker.stop(channel:number)`         | nil   | Stop the sound that is playing at the given channel.                        |

| Event                                      | Description                                     |
| :----------------------------------------- | :---------------------------------------------- |
| `game.on_sound_reproduced(channel:number)` | Event sent when a channel has finished playing. |

### Example
```lua
-- Play a sample
os.speaker.play(audio_sample, 0)
-- Or
os.speaker.play("main_theme.wav", 1)
```
