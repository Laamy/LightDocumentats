# Internal properties (Not accessible)

Please note that these are defined in a way to help us give you access to them if possible
Message me on discord to suggest stuff from the MCAPI

ALSO These all use a special method called OFFSET SIGS meaning
they last up to 16 times longer then normal "padding"

- bool onGround
- bool prevOnGround
- bool walkingIntoWall
- bool onGround2
- bool touchingObj
- Vector2 rotation
- Vector2 rotation2
- Vector3 position
- Vector3 position_point2
- Vector2 hitbox
- Vector3 cameraPosition
- Vector3 cameraPosition_point2
- Vector3 velocity
- Vector3 hurttime
- uint64_t runetimeId
- Vector2 serverRots
- float swingState
- float stepHeight
- const char* rawUsername

# Internal methods (accessible = ✅)

```cpp
void teleportTo(Vector3 input)
```
Properly teleport to given position ✅

```cpp
Vector3 directionalVector(float x, float y)
```
Calculate direction vector (X,Y,Z) based of given input ❌

```cpp
Vector3 lookingVector()
```
Get the actors looking vector (X,Y,Z) ❌

# Lua functions

```lua
exists() -> returns 1
```
```lua
if LocalPlayer.exists() then
    LocalPlayer.setOnGround(true) -- infinite jump if player exists
end
```
Check if the LocalPlayer exists

<br/>

```lua
getWalkingIntoWall() -> returns 1
```
```lua
if LocalPlayer.getWalkingIntoWall() then
    local a,b,c = LocalPlayer.getVelocity()
    
    LocalPlayer.setVelocity(a, 0.3, c) -- spider hacks
end
```
Get the internal walkingIntoWall property

<br/>

```lua
getPrevOnGround() -> returns 1
```
```lua
LocalPlayer.setOnGround(true)

if LocalPlayer.getPrevOnGround() then
     -- Even if onground is set to true over multiple ticks unless the player is TRULY on the ground this will stay as false
     -- useful for bunnyhop & infinitejump at the same time
end
```
Get the internal prevOnGround property

<br/>

```lua
getTouchingObj() -> returns 1
```
```lua
if LocalPlayer.getTouchingObj() then
    -- If the player is touching any objects this piece of code will execute
end
```
Get the internal touchingObj property

<br/>

```lua
getOnGround2() -> returns 1
```
```lua
if LocalPlayer.getOnGround2() then
    -- This piece of code will execute if either conditions are met:
    -- Player is touching the floor
    -- Player is touching the roof
end
```
Get the internal onGround2 property

<br/>

```lua
getOnGround() -> returns 1
```
```lua
if LocalPlayer.getOnGround() then
    -- executes if player is touching the ground
end
```
Get the internal onGround property

<br/>

```lua
getPosition() -> returns 3
```
```lua
local x,y,z = LocalPlayer.getPosition()

LocalPlayer.teleportTo(x, y - 1, z) -- teleport 1 block down
```
Get the internal property of player X,Y,Z ingame

<br/>

```lua
setOnGround(bool) -> returns 0
```
```lua
LocalPlayer.setOnGround(true) -- trick the game into thinking your on the ground even if your not
```
Set if the player can jump or not

<br/>

```lua
teleportTo(X, Y Z) -> returns 0
```
```lua
LocalPlayer.teleportTo(100, 100, 100) -- Teleport to 100,100,100 in the world
```
Teleport the actor to given X Y & Z (handles hitbox for you)

<br/>

```lua
getRotation() -> returns 2
```
```lua
local pitch,yaw = LocalPlayer.getRotation()

-- Pitch & Yaw in 360d
```
Get the internal property of player rotations ingame

<br/>

```lua
getVelocity() -> returns 3
```
```lua
local x,y,z = LocalPlayer.getVelocity()

if y > 1 or y < -9 then
    LocalPlayer.setVelocity(0,0,0) -- stop unnatural velocity
end
```
Get the internal property of player velocity ingame

<br/>

```lua
setVelocity(X, Y Z) -> returns 0
```
```lua
LocalPlayer.setVelocity(0, 1, 0) -- Send yourself up 5 blocks 
```
Set the velocity of the current actor

<br/>

```lua
isAlive() -> returns 1
```
```lua
if LocalPlayer.isAlive() then
    -- player is over 0 hearts if this is executing
end
```
Check the current state of the actor then returns a value from 0-1 (false-true) depending on if the actor is alive

<br/>

```lua
isInWater() -> returns 1
```
```lua
if LocalPlayer.isInWater() then
    local x,y,z = LocalPlayer.getVelocity()
    
    LocalPlayer.setVelocity(x, 0.1, z) -- Float to the top of all waterbodies (Excluding lava)
end
```
Check to see if the current actor is currently in any waterbodies
