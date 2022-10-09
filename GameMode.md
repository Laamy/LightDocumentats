# Lua functions

```lua
getBlockReach() -> returns 1
```
```lua
if GameMode.getBlockReach() ~= 6 then
    -- If this part is executing it means blockreach was modified
end
```
Get the block reach in decimal format

<br/>

```lua
setBlockReach(distance) -> returns 0
```
```lua
GameMode.setBlockReach(256) -- set block reach to 256 blocks (Infinite)
```
Set the block reach in a decimal format

<br/>

```lua
getReach() -> returns 1
```
```lua
if GameMode.getReach() ~= 3 then
    -- reach has been modified somehow
end
```
Get the hand reach in decimal format

<br/>

```lua
setReach(distance) -> returns 0
```
```lua
GameMode.setReach(7) -- set hand reach to 7 blocks (max possible)
```
Set the hand reach in a decimal format
