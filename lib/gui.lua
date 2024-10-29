--- @meta

--- @class __GUI
--- @field height integer
--- @field height_rel integer
--- @field width integer
--- @field width_rel integer
--- @field x integer
--- @field y integer
--- @field z integer
__GUI = {}

--- @class __GUI_ED: __GUI
--- @field height integer
--- @field height_rel? integer
--- @field width integer
--- @field width_rel? integer
--- @field bgcol integer
--- @field fgcol integer
__GUI_ED = {}

--- @param head_el? __GUI
--- @return __GUI
--- Create a GUI
function create_gui(head_el) end

--- @class __GUI
--- Draws all GUI elements
function __GUI:draw_all() end

--- @class __GUI
--- Updates all GUI elements
function __GUI:update_all() end

--- @class __GUI
--- @param focus boolean
--- Sets keyboard focus
function __GUI:set_keyboard_focus(focus) end

--- @class __GUI
--- @param head_el? __GUI_ED
--- @return __GUI_ED
--- Attaches a text editor to the GUI
function __GUI:attach_text_editor(head_el) end

--- @class __GUI_ED
--- @param text string
--- Set the text editor's current text
function __GUI_ED:set_text(text) end

--- @class __GUI_ED
--- @param column integer
--- @param line integer
--- Set the text editor's cursor position
function __GUI_ED:set_cursor(column, line) end

--- @class __GUI_ED
--- @return string[]
--- Set the text editor's current text
function __GUI_ED:get_text() end