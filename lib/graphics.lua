--- @meta

--- Changes the video mode
--- 0 is 480x720
--- 3 is 240x135
--- 4 is 160x90
--- @param mode 0 | 3 | 4
function vid(mode) end

--- Clears the screen and resets the clipping rectangle
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#cls)
--- @param col? integer
function cls(col) end

--- Prints text on screen
--- @param value any
--- @param x? integer
--- @param y? integer
--- @param col? integer
function print(value, x, y, col) end

--- Sets the clipping rectangle for drawing operations.
--- If clip_previous is set, the new region will be clipped by the old region
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#clip)
--- @param x integer
--- @param y integer
--- @param w integer
--- @param h integer
--- @param clip_previous? boolean
function clip(x, y, w, h, clip_previous) end

--- Reset clipping region
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#clip)
function clip() end

--- Sets the pixel to at x, y to the color index 0 to 63
--- If color is not specified, uses the current draw color instead
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#pset)
--- @param x integer
--- @param y integer
--- @param col? integer
function pset(x, y, col) end

--- Returns the color of the pixel at x, y
--- Returns 0 if out of bounds
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#pget)
--- @param x integer
--- @param y integer
--- @return integer
function pget(x, y) end

-- These are in the docs, but they don't appear to be implemented
-- In any case, sprites are just userdata, so you can do userdata:get()
-- and userdata:set() if I'm understanding this correctly
-- function sset(x, y, col) end
-- function sget(x, y) end

--- Get the value of a sprite n's flag f (0-7)
---@param n integer
---@param f integer
function fget(n, f) end

--- Set the value of a sprite n's flag f (0-7)
---@param n integer
---@param f integer
---@param val boolean
function fset(n, f, val) end

--- Set the cursor position
--- If color is specified, also set the current color
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#cursor)
--- @param x integer
--- @param y integer
--- @param col? integer
function cursor(x, y, col) end

--- Set the current color
--- If color is not specified, set the current color to 6
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#color)
--- @param col integer
function color(col) end

--- Set a screen offset of -x, -y for all drawing operations
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#camera)
--- @param x integer
--- @param y integer
function camera(x, y) end

--- Reset the camera offset
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#camera)
function camera() end

--- Draw a circle at x, y with radius r
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#circ)
--- @param x integer
--- @param y integer
--- @param r integer
--- @param col? integer
function circ(x, y, r, col) end

--- Draw a filled circle at x, y with radius r
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#circfill)
--- @param x integer
--- @param y integer
--- @param r integer
--- @param col? integer
function circfill(x, y, r, col) end

--- Draw an ellipse within the given rectangle
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#oval)
--- @param x0 integer
--- @param y0 integer
--- @param x1 integer
--- @param y1 integer
--- @param col? integer
function oval(x0, y0, x1, y1, col) end

--- Draw a filled ellipse within the given rectangle
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#ovalfill)
--- @param x0 integer
--- @param y0 integer
--- @param x1 integer
--- @param y1 integer
--- @param col? integer
function ovalfill(x0, y0, x1, y1, col) end

--- Draw a line from (x0, y0) to (x1, y1)
--- If (x1, y1) are not given the end of the last line will be used
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#line)
--- @param x0 integer
--- @param y0 integer
--- @param x1? integer
--- @param y1? integer
--- @param col? integer
function line(x0, y0, x1, y1, col) end

--- The next call to line(x1, y1) will set the endpoints without drawing
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#line)
function line() end

--- Draw a rectangle within the given points
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#rect)
--- @param x0 integer
--- @param y0 integer
--- @param x1 integer
--- @param y1 integer
--- @param col? integer
function rect(x0, y0, x1, y1, col) end

--- Draw a filled rectangle within the given points
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#rectfill)
--- @param x0 integer
--- @param y0 integer
--- @param x1 integer
--- @param y1 integer
--- @param col? integer
function rectfill(x0, y0, x1, y1, col) end

--- Swap color c0 and c1
--- If p is 0, the draw palette will be re-mapped (default)
--- If p is 1, the whole screen will be re-mapped
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#pal)
--- @param c0 integer
--- @param c1 integer
--- @param p? 0 | 1
function pal(c0, c1, p) end

--- Set the transparency of a color
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#palt)
--- @param c integer
--- @param is_transparent boolean
function palt(c, is_transparent) end

--- Set the transparency of all colors
--- c is a bitfield representing the transparency of all 64 colors
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#palt)
--- @param c? integer
function palt(c) end

--- Draws a sprite on the screen
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#spr)
--- @param s integer | userdata
--- @param x? integer
--- @param y? integer
--- @param flip_x? boolean
--- @param flip_y? boolean
function spr(s, x, y, flip_x, flip_y) end

--- Stretch a source rectangle of a sprite (sx, sy, sw, sh) to a destination rectangle on the screen (dx, dy, dw, dh)
--- (x, y) is the top left corner of the sprite. w and h are the width and height of the rectangle
--- @param s integer | userdata
--- @param sx integer
--- @param sy integer
--- @param sw integer
--- @param sh integer
--- @param dx integer
--- @param dy integer
--- @param dw? integer
--- @param dh? integer
--- @param flip_x? boolean
--- @param flip_y? boolean
function sspr(s, sx, sy, sw, sh, dx, dy, dw, dh, flip_x, flip_y) end

--- Set a 4x4 fill pattern using Pico-8 style fill patterns
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#fillp)
--- @param p integer
--- @param ... integer
function fillp(p, ...) end

--- Get the sprite for a given index
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#get_spr)
--- @param index integer
--- @return userdata
function get_sprite(index) end

--- Set the sprite for a given index
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#set_spr)
--- @param index integer
--- @param ud userdata
function set_sprite(index, ud) end
