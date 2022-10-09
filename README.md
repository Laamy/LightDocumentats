# What is this?

This is a lua engine designed for minecraft 1.19.31 (Latest at this moment in time)
but should work on all versions beneath all the way until 1.17

it gives you quick access to creating high quality clients/cheats without needing to worry about updating it yourself or going through complex C/C++ training as we provide everything for you updated and ready to use

# How is this possible?

Well we rely on very special signatures which have not changed since 1.17 when i was developing trero/netherite
aswell as special offset sigs

Feel free to suggest anything you want and we'll try our best to give you high level access

# LightDocumentats

Documentation for the LIGHT API

# How to download & install?

The first copy of the light api will be publicly available in 7 days from now  

For those who somehow got a copy first you've got to inject light.dll then you put your scripts inside of C:\Users\user\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.light\CorePackages (Name the main one Index.lua)

restart minecraft then reinject and your index.lua script will load

# This has

- High level access to LOCALPLAYER
- High level access to GAMEMODE
- High level access to MINECRAFTGAME(Game)
- High level access to CTX as DRAWINGAPI
- High level access to a custom hooking library other then minhook designed for LuaM
- Strong security so people cant reverse engineer your lua script bytecode if obfuscated
- Low level access to the games KEYMAP x2
- Low level access to the lua registry (getreg)
- High level access to the global/function envrionment (getgenv/getfenv)

# Todo List

- lua engine access to entitylist
- lua engine access to all the GameMode CApi
- lua engine access to rest of localplayer variables I have defined aswell as part of localplayer CApi access
- low level access to hooking (MinHook)
- low level access to game chunk 2 lua converter (Decompiler)
- Make game rely on this lua engine completely
