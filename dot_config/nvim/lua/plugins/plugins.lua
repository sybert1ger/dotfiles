local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

Plug 'RRethy/nvim-base16'

--  Plug 'preservim/nerdtree'
--  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
--  Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'nvim-lualine/lualine.nvim'
Plug 'ellisonleao/glow.nvim'
Plug 'dag/vim-fish'
Plug 'mhinz/vim-startify'
Plug 'romgrk/barbar.nvim'
Plug "norcalli/nvim.lua"
Plug "norcalli/nvim-base16.lua"
vim.call('plug#end')
