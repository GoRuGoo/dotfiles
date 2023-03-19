vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        hover = {
            enabled = true,
            reveal = {'close'}
        }
    }
}


vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
