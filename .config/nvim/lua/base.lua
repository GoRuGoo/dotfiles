vim.cmd("autocmd")


-- 文字エンコーディング
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'


-- 行の表示
vim.opt.number = true

-- 括弧補完
vim.opt.showmatch = true
vim.opt.matchtime = 1


-- タブ設定
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- 検索での設定
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrapscan = true

vim.opt.mouse = 'a'
