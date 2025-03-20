 vim.g.mapleader = " "
 local keymap = vim.keymap.set
 local opts = { noremap = true, silent = true }
 vim.keymap.set("n","<leader>q",vim.cmd.q)
 vim.keymap.set("n","<leader>ee",vim.cmd.Ex)
 vim.keymap.set("i", "<leader>jk", "<Esc>", { noremap = true, silent = true })
 vim.keymap.set('n','<leader>sw',vim.cmd.w)
 vim.keymap.set('n','<leader>ps',vim.cmd.PackerSync)
 vim.keymap.set('n','<leader>ma',vim.cmd.Mason)

-- Split Windows
keymap("n", "<leader>sv", ":vsplit<CR>", opts) -- Vertical Split
keymap("n", "<leader>sh", ":split<CR>", opts)  -- Horizontal Split

-- Move Between Splits using Ctrl + h/j/k/l
keymap("n", "<C-h>", "<C-w>h", opts) -- Move Left
keymap("n", "<C-j>", "<C-w>j", opts) -- Move Down
keymap("n", "<C-k>", "<C-w>k", opts) -- Move Up
keymap("n", "<C-l>", "<C-w>l", opts) -- Move Right

-- Resize Splits
keymap("n", "<C-Up>", ":resize +2<CR>", opts)    -- Increase height
keymap("n", "<C-Down>", ":resize -2<CR>", opts)  -- Decrease height
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)  -- Decrease width
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts) -- Increase width

-- Tabs
keymap("n", "<leader>tn", ":tabnew<CR>", opts)     -- New Tab
keymap("n", "<leader>tc", ":tabclose<CR>", opts)   -- Close Tab
keymap("n", "<leader>to", ":tabonly<CR>", opts)    -- Close all other tabs
keymap("n", "<leader>tl", ":tabnext<CR>", opts)    -- Next Tab
keymap("n", "<leader>th", ":tabprev<CR>", opts)    -- Previous Tab
