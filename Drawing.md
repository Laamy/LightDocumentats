# Lua functions

```lua
Drawing.new(type, x, y, sizex, sizey, r, g, b, a, thickness) -> returns 1
```
```lua
local square = Drawing.new("Square", 25, 25, 25, 25, 255, 0, 0, 255, 5) -- render a square of size 25,25 at scaled screen cords 25,25 with a thickness of 5 scaled pixels
```
```lua
local filledsquare = Drawing.new("FilledSquare", 25, 25, 25, 25, 255, 0, 0, 255) -- render a square of size 25,25 at scaled screen cords 25,25
```
Create a new screen object

<br/>

```lua
Drawing.visible(obj, visibility) -> returns 0
```
```lua
local filledsquare = Drawing.new("FilledSquare", 25, 25, 25, 25, 255, 0, 0, 255)

Drawing.visible(filledsquare, true) -- render a square of size 25,25 at scaled screen cords 25,25
```
Change the visibility of a drawing api object
