# C++ Utils

```lua
hookfunction(detour, original) -> returns 1
```
Allows you to detour functions aswell as get the original like a minhook library would

```lua
wait(seconds) -> returns 0
```
Wait X amount of seconds

# Other utils

```lua
KeyHeld(keyid) -> returns 1
```
```lua
local w = KeyHeld(87) ; a = KeyHeld(65)
	; s = KeyHeld(83) ; d = KeyHeld(68)

if not w and not a and not s and not d then
    -- code for not moving
end
```
Returns the current stored keymap state of keyid key

<br/>

```lua
void Print(str) -> returns 0
```
Log string both to debug stream and log file or ease of debugging
