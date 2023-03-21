vim.api.nvim_set_keymap("i","jj","<ESC>",{})

-- Telescopeのキーバインド
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<space><C-i>', builtin.find_files, {})
vim.keymap.set('n', '<space><C-g>', builtin.live_grep, { noremap=true })
vim.keymap.set('n', '<space><C-b>', builtin.buffers, { noremap=true })
vim.keymap.set('n', '<space><C-h>', builtin.help_tags, { noremap=true })
vim.keymap.set('n', '<space><C-k>', '<cmd>:Telescope file_browser hidden=true path=%:p:h select_buffer=true<cr>',{ noremap = true })

-- 新規タブ
vim.keymap.set('n', 'te', ':tabedit')

-- 全選択
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- 画面分割
vim.keymap.set('n', 'ss', ':split<Return><C-w>w')
vim.keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- 画面移動
vim.keymap.set('', 'sh', '<C-w>h')
vim.keymap.set('', 'sk', '<C-w>k')
vim.keymap.set('', 'sj', '<C-w>j')
vim.keymap.set('', 'sl', '<C-w>l')

-- 画面サイズ変更
vim.keymap.set('n', '<C-w><left>', '<C-w><')
vim.keymap.set('n', '<C-w><right>', '<C-w>>')
vim.keymap.set('n', '<C-w><up>', '<C-w>+')
vim.keymap.set('n', '<C-w><down>', '<C-w>-')
