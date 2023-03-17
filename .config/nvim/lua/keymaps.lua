vim.api.nvim_set_keymap("i","jj","<ESC>",{})

-- Telescopeのキーバインド
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-i>', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
vim.keymap.set('n', '<C-b>', builtin.buffers, {})
vim.keymap.set('n', '<C-h>', builtin.help_tags, {})
vim.keymap.set('n', '<C-k>', '<cmd>:Telescope file_browser path=%:p:h select_buffer=true<cr>',{})
