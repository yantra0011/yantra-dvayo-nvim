local mark = require("harpoon.mark") 
local ui = require("harpoon.ui") 

vim.keymap.set('n','<leader>a', mark.add_file)
vim.keymap.set('n','<leader>ue', ui.toggle_quick_menu)
vim.keymap.set('n','<leader>uh', function() ui.nav_file(1) end)
vim.keymap.set('n','<leader>ut', function() ui.nav_file(2) end)
vim.keymap.set('n','<leader>un', function() ui.nav_file(3) end)
vim.keymap.set('n','<leader>us', function() ui.nav_file(4) end)
