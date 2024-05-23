| API                  | Type                                                                     | Version           |
| :------------------- | :----------------------------------------------------------------------- | :---------------- |
| `os.driver.cpu`      | [CPU](https://docs.retrogadgets.game/modules/CPU.html)                   | 64 event channels |
| `os.driver.video`    | [VideoChip](https://docs.retrogadgets.game/modules/VideoChip.html)       | Default           |
| `os.driver.audio`    | [AudioChip](https://docs.retrogadgets.game/modules/AudioChip.html)       | 32 audio channels |
| `os.driver.memory`   | [FlashMemory](https://docs.retrogadgets.game/modules/FlashMemory.html)   | 32KB memory       |
| `os.driver.rom`      | [ROM](https://docs.retrogadgets.game/modules/ROM.html)                   | Default           |
| `os.driver.reality`  | [RealityChip](https://docs.retrogadgets.game/modules/RealityChip.html)   | Default           |
| `os.driver.keyboard` | [KeyboardChip](https://docs.retrogadgets.game/modules/KeyboardChip.html) | Default           |
| `os.driver.gamepad`  | [GamepadChip](https://docs.retrogadgets.game/modules/GamepadChip.html)   | Default           |
| `os.driver.wifi`     | [Wifi](https://docs.retrogadgets.game/modules/Wifi.html)                 | Default           |
| `os.driver.serial`   | [Serial](https://docs.retrogadgets.game/modules/Serial.html)             | Default           |
| `os.driver.buttons`  | [{LedButton}](https://docs.retrogadgets.game/modules/LedButton.html)     | Default           |
| `os.driver.analogs`  | [{AnalogStick}](https://docs.retrogadgets.game/modules/AnalogStick.html) | Default           |

| Function                      | Value           | Description                               |
| :---------------------------- | :-------------- | :---------------------------------------- |
| `os.load_sprite(name:string)` | **SpriteSheet** | Load a sprite (`.png`) from the rom.      |
| `os.load_sound(name:string)`  | **AudioSample** | Load a sound (`.wav`) file from the rom.  |
| `os.load_script(name:string)` | **Code**        | Load a script (`.lua`) file from the rom. |
