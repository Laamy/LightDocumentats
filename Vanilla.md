# Lua functions

```lua
getidentity() -> returns 1
```
Get the current script identity

```cpp
// ModScript is default
// recommend GameScript for advanced scripters (Found in corescripts)

enum ScriptContextLevel {
	SCL_ModScript, // Access to highest level of all documentation
	SCL_GameScript, // Rewritten/converted gamescripts (For example UI scripts) low level access to all classes
	SCL_Corescript, // Access to lua environment functions (Unstable so try not modify these as much as possible as these are more of the backend of the lua states
	SCL_Experimental // inherits all context levels aswell as the ability to change what level an environment has access to
};
```

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

<br/>

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

<br/>

```lua
keypress(keyid) -> returns 0
```
```lua
keypress(87)
wait(1)
keyrelease(87) -- hold w for 1 second
```
Simulate a keypress - https://www.oreilly.com/library/view/javascript-dhtml/9780596514082/apb.html

<br/>

```lua
keyrelease(keyid) -> returns 0
```
Simulate a keyrelease - https://www.oreilly.com/library/view/javascript-dhtml/9780596514082/apb.html

<br/>

```lua
GetHttp(str) -> returns 1
```
```lua
local txt = GetHttp("https://pastebin.com/raw/skJgB2mU")
Print(txt) -- > Prints Example Text
```
Get URL data
