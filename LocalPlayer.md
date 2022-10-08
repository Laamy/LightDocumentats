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

# Internal methods (Not accessible)

```cpp
void teleportTo(Vector3 input)
```
Properly teleport to given position

```cpp
Vector3 directionalVector(float x, float y)
```
Calculate direction vector (X,Y,Z) based of given input

```cpp
Vector3 lookingVector()
```
Get the actors looking vector (X,Y,Z)

# Lua functions

```lua
exists() -> returns 1
```
Check if the LocalPlayer exists

```lua
getWalkingIntoWall() -> returns 1
```
Get the internal walkingIntoWall property

```lua
getPrevOnGround() -> returns 1
```
Get the internal prevOnGround property

```lua
getTouchingObj() -> returns 1
```
Get the internal touchingObj property

```lua
getOnGround2() -> returns 1
```
Get the internal onGround2 property

```lua
getOnGround() -> returns 1
```
Get the internal onGround property

```lua
getPosition() -> returns 3
```
Get the internal property of player X,Y,Z ingame

```lua
setOnGround(bool) -> returns 0
```
Set if the player can jump or not

```lua
teleportTo(X, Y Z) -> returns 0
```
Teleport the actor to given X Y & Z (handles hitbox for you)

```lua
getRotation() -> returns 3
```
Get the internal property of player rotations ingame

```lua
getVelocity() -> returns 3
```
Get the internal property of player velocity ingame
