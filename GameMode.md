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
