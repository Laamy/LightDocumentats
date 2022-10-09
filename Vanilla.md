# C++ Utils

```lua
hookfunction(detour, original) -> returns 1
```
```lua
local __o__Print -- original print function

__o__Print = hookfunction(function(txt)
    local __o__Print("Modified '" .. txt .. "'")
end, Print)
```
Allows you to detour functions aswell as get the original like a minhook library would

```lua
wait(seconds) -> returns 0
```
```lua
Print("Hello")
wait(1) -- wait one second then print world
Print("World")
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
Print(str) -> returns 0
```
```lua
Print("Hello " .. " World!")
```
Log string both to debug stream and log file or ease of debugging

<br/>

```lua
getfenv() -> returns 1
```
Get the environment of a function

<br/>

```lua
getgenv() -> returns 1
```
Get the environment that will be applied to each script ran by light api

<br/>

```lua
getreg() -> returns 1
```
Get the lua registry
