# C++ Utils

```cpp
void* hookfunction(void* detour, void* original) -> returns 1
```
Allows you to detour functions aswell as get the original like a minhook library would

```cpp
void wait(float seconds) -> returns 0
```
Wait X amount of seconds

# Useful utils

```cpp
bool KeyHeld(int keyid) -> returns 1
```
Returns the current stored keymap state of keyid key

```cpp
void Print(str) -> returns 0
```
Log string both to debug stream and log file or ease of debugging
