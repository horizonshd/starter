require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

local function optsfn(desc)
    return { noremap = true, silent = true, desc = "horizonshd " .. desc }
end

map({ 'n', 'i', 'v' }, '<C-j>', '10j', optsfn "Move down 10 rows")
map({ 'n', 'i', 'v' }, '<C-k>', '10k', optsfn "Move up 10 rows")

----> Copy Delete and Paste with system clipboard
map({ 'n', 'v' }, '<Leader>y', '"+y', optsfn "Yank selected contents to the system clipboard")
map({ 'n', 'v' }, '<Leader>d', '"+d', optsfn "Delete selected contents to the system clipboard")
map({ 'n', 'v' }, '<Leader>p', '"+p', optsfn "Put contents from the system clipboard")

----> Back to normal mode
map('i', 'jf', '<Esc>', optsfn "Back to normal mode")
map('c', 'jf', '<C-c>', optsfn "Back to normal mode")
map('t', '<Esc>', [[<C-\><C-n>]], optsfn "Back to mormal mode")
map('t', 'jf', [[<C-\><C-n>]], optsfn "Back to normal mode")

----> Indent lines
map('v', '<', '<gv', optsfn "Increase the indent")
map('v', '>', '>gv', optsfn "Decrease the indent")

----> Move lines
---- https://stackoverflow.com/questions/741814/move-entire-line-up-and-down-in-vim#answer-4121798
map('n', '<A-j>', ':m .+1<CR>==', optsfn "Swap with the previous line")
map('n', '<A-k>', ':m .-2<CR>==', optsfn "Swap with the below line")
map('i', '<A-j>', '<Esc>:m .+1<CR>==gi', optsfn "Swap with the previous line")
map('i', '<A-k>', '<Esc>:m .-2<CR>==gi', optsfn "Swap with the below line")
map('v', '<A-j>', [[:m '>+1<CR>gv=gv]], optsfn "Swap with the previous line")
map('v', '<A-k>', [[:m '<-2<CR>gv=gv]], optsfn "Swap with the below line")

----> Resize with arrows
map('n', '<C-Up>', ':resize -2<cr>', optsfn "Decrease the window size horizontally")
map('n', '<C-Down>', ':resize +2<cr>', optsfn "Increase the window size horizontally")
map('n', '<C-Left>', ':vertical resize -2<cr>', optsfn "Decrease the window size vertically")
map('n', '<C-Right>', ':vertical resize +2<cr>', optsfn "Increase the window size vertically")

map('n', 'gh', vim.lsp.buf.hover,
    optsfn "Display hover information about the symbol under ther cursor in a floating window")
