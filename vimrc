" Vim-plug configuration
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'elzr/vim-json'
Plug 'tpope/vim-fugitive'
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'

call plug#end()

" Enable color theme
colorscheme nord

syntax on
set number

:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

set noshowmode
set tabstop=4
set shiftwidth=4
set exrc " .vimrc in local project dir
set secure

" Enable 256 colors
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

