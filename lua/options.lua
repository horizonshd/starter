require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
local o = vim.o


o.swapfile    = false
o.backup      = false
o.cindent     = true

o.colorcolumn = '81,121'
-- o.cursorline  = true
o.scrolloff   = 4

----> Tab
o.tabstop     = 4    -- number of visual spaces per TAB
o.softtabstop = 0    --
o.shiftwidth  = 0    -- number of spaces to use for each step of (auto)indent,
-- when zero the 'tabstop' value will be used
o.expandtab   = true -- tabs are spaces


-- nvim-ufo
o.foldcolumn = '1' -- '0' is not bad
o.foldlevel = 99   -- Using ufo provider need a large value, feel free to decrease the value
o.foldlevelstart = 99
o.foldenable = true
