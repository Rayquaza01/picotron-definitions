# picotron-definitions
Definition files for Picotron for use with Lua Language Server

## How To Use

Place `.luarc.json` in the root of the project. Change the `workspace.library` path to point to the `lib/` folder in this repo (or copy the `lib/` folder in this repo to `~/.local/lib/picotron-definitions`).

## See Also

[pico-api](https://github.com/ahai64/pico-api) is a similar project that provides Lua LS definition files for Picotron and Pico8.

## TODO

These are functions that are defined in Picotron, but are not included in Picotron Definitions yet.

This list was generated using [Enview](https://www.lexaloffle.com/bbs/?pid=143894)

```
apply_delta()
blit()
clear_key(scancode)
create_delta()
create_meta_key(k)
create_undo_stack()
flip(flags)
menuitem(m, a, b)
mount(a, b)
pack()
pwf()
send_message()
theme(which)
tokenoid()
unpack()
wrangle_working_file(save_state, load_state, untitled_filename, get_hlocation, set_hlocation)
```
