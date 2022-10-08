# internal properties (Not accessible)

Please note that these are defined in a way to help us give you access to them if possible
Message me on discord to suggest stuff from the MCAPI

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

# internal functions

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
