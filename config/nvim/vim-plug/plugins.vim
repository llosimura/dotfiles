call plug#begin('~/.config/nvim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'

call plug#end()

source $HOME/.config/nvim/vim-plug/dracula/dracula.vim
source $HOME/.config/nvim/vim-plug/airline/airline.vim
:luafile $HOME/.config/nvim/vim-plug/treesitter/treesitter.lua
