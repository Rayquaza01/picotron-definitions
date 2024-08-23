--- @meta

--- @class userdata
userdata = {}

--- Creates a userdata
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#userdata)
--- @param data_type string u8, i16, i32, i64, f64
--- @param width integer
--- @param height? integer
--- @param data? string string of hex values encoding the data or comma separated list of floats
--- @return userdata
function userdata(data_type, width, height, data) end

--- Creats a userdata from a Pico-8 graphics string
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#userdata)
--- @param data string
--- @return userdata
function userdata(data) end

--- Creates a vector (f64, 1d userdata)
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#vec)
--- @return userdata
--- @param ... number
function vec(...) end

--- Get the magnitude of the vector
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#Vector_methods)
--- @class userdata
function userdata:magnitude() end

--- Get the distance to another vector
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#Vector_methods)
--- @class userdata
--- @param v userdata
--- @return number
function userdata:distance(v) end

--- Get the dot product of another vector
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#Vector_methods)
--- @class userdata
--- @param v userdata
--- @return number
function userdata:dot(v) end

--- Get the cross product of another vector
--- If v_out is provided, the output will be stored in v_out, or in self if true
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#Vector_methods)
--- @class userdata
--- @param v userdata
--- @param v_out userdata | boolean
--- @return userdata
function userdata:cross(v, v_out) end

--- Gets the width of the userdata
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#userdata_width)
--- @class userdata
--- @return integer
function userdata.width() end

--- Gets the height of the userdata
--- Returns nil for a 1d userdata
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#userdata_height)
--- @class userdata
--- @return integer | nil
function userdata.height() end

--- Returns the attributes of the userdata
--- If the userdata is 1d, height will be 1
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#userdata_attribs)
--- @class userdata
--- @return integer width
--- @return integer height
--- @return string type
--- @return integer dimensionality
function userdata.attribs() end

--- Get n values starting at x, or 0 if out of range
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#userdata_get)
--- @class userdata
--- @param x integer
--- @param n integer
--- @return number ...
function userdata.get(x, n) end

--- Get n values starting at x, y, or 0 if out of range
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#userdata_get)
--- @class userdata
--- @param x integer
--- @param y integer
--- @param n integer
--- @return number ...
function userdata.get(x, y, n) end

--- Get n values starting at x, or 0 if out of range
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#userdata_get)
--- @param u userdata
--- @param x integer
--- @param n integer
--- @return number ...
function get(u, x, n) end

--- Get n values starting at x, y, or 0 if out of range
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#userdata_get)
--- @param u userdata
--- @param x integer
--- @param y integer
--- @param n integer
--- @return number ...
function get(u, x, y, n) end

--- Set one or more values starting at x
--- Out of range values have no effect
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#userdata_get)
--- @class userdata
--- @param x integer
--- @param ... number
function userdata.set(x, ...) end

--- Set one or more values starting at x, y
--- Out of range values have no effect
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#userdata_get)
--- @class userdata
--- @param x integer
--- @param y integer
--- @param ... number
function userdata.set(x, y, ...) end

--- Set one or more values starting at x
--- Out of range values have no effect
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#userdata_get)
--- @param u userdata
--- @param x integer
--- @param ... number
function set(u, x, ...) end

--- Set one or more values starting at x, y
--- Out of range values have no effect
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#userdata_get)
--- @param u userdata
--- @param x integer
--- @param y integer
--- @param ... number
function set(u, x, y, ...) end

--- Get a row of a 2d userdata
--- Rows are 0-indexed
--- Returns nil if out of range
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#userdata_row)
--- @class userdata
--- @return userdata | nil
function userdata.row(i) end

--- Get a column of a 2d userdata
--- Columns are 0-indexed
--- Returns nil if out of range
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#userdata_row)
--- @class userdata
--- @return userdata | nil
function userdata.column(i) end

-- TODO userdata op functions
-- function userdata_op(u0, u1, u2, offset1, offset2, len, stride1, stride2, spans) end

--- Multiply two matrices together
--- If m_out is provided, the output will be stored in m_out, or in self if true
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#matmul)
--- @class userdata
--- @param m userdata
--- @param m_out? userdata | boolean
--- @return userdata | nil
function userdata.matmul(m, m_out) end

-- This function is included in the manual, but is not real
-- --- Multiply two matrices together
-- --- If m_out is provided, the output will be stored in m_out, or in self if true
-- --- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#matmul)
-- --- @param m0 userdata
-- --- @param m1 userdata
-- --- @param m_out? userdata | boolean
-- --- @return userdata | nil
-- function matmul(m0, m1, m_out) end

--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#Matrix_methods)
--- @class userdata
function userdata.matmul2d(m, m_out) end

--- Multiply 3d 4x4 transformation matrices
--- If m_out is provided, the output will be stored in m_out, or in self if true
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#matmul3d)
--- @param m userdata
--- @param m_out? userdata | boolean
function userdata.matmul3d(m, m_out) end

-- This function is included in the manual, but is not real
-- --- Multiply 3d 4x4 transformation matrices
-- --- If m_out is provided, the output will be stored in m_out, or in self if true
-- --- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#matmul3d)
-- --- @param m0 userdata
-- --- @param m1 userdata
-- --- @param m_out? userdata | boolean
-- --- @class userdata
-- function matmul3d(m0, m1, m_out) end

--- Transpose the matrix
--- If m_out is provided, the output will be stored in m_out, or in self if true
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#Matrix_methods)
--- @class userdata
--- @param m_out? userdata | boolean
--- @return userdata
function userdata.transpose(m_out) end

--- Map the contents of an integer-type userdata to RAM
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#memmap)
--- @param ud userdata
--- @param addr integer
function memmap(ud, addr) end

--- Unmap userdata from RAM
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#unmap)
--- @param ud userdata
--- @param addr? integer
function unmap(ud, addr) end

--- Read from RAM into an integer typed userdata
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#userdata_peek)
--- @class userdata
--- @param addr integer Address to read from
--- @param offset? integer Offset into userdata
--- @param elements? integer Number of elements to peek
--- @return integer ...
function userdata.peek(addr, offset, elements) end

--- Write to RAM from an integer typed userdata
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#userdata_poke)
--- @class userdata
--- @param addr integer Address to write to
--- @param offset? integer Offset into userdata
--- @param elements? integer Number of elements to poke
function userdata.poke(addr, offset, elements) end