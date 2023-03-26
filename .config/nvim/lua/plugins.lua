local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
  'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- GitHubライクなテーマ
  use ({ 'projekt0n/github-nvim-theme', tag = 'v0.0.7' })
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
} use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
}
use 'nvim-tree/nvim-web-devicons'
use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
use {
  'lewis6991/gitsigns.nvim',
}
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use {'neoclide/coc.nvim', branch = 'release'}
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
}
    use 'windwp/nvim-ts-autotag'
    use 'windwp/nvim-autopairs'
    use {'akinsho/git-conflict.nvim', tag = "*", config = function()
  require('git-conflict').setup()
end}
  use 'svrana/neosolarized.nvim'
  use 'tjdevries/colorbuddy.nvim'
  use 'rhysd/vim-clang-format'
end)
