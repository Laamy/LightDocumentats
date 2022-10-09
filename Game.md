Also known as the minecraft game class this contains alot of information about the game including fonts

# Internal methods

```cpp
bool canUseMoveKeys()
```
Used to check if your in a GUI or not

```cpp
BitmapFont* getMcFont()
```
Get the BitmapFont address to the default minecraft font

# Lua functions

```lua
canUseKeys() -> returns 1
```
Check if the player is in a GUI of sorts

```lua
exists() -> returns 1
```
Check if the game instance has been initialized/exists
