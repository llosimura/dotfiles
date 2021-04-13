let g:mapleader = "\<Space>"

set relativenumber
":augroup numbertoggle
":	autocmd!
":	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
":	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
":augroup END
set splitbelow
set splitright
set guicursor=
set noshowmode
set incsearch
set nohlsearch
set hidden
set expandtab
set smartindent
set nowrap
set tabstop=4 softtabstop=4
set shiftwidth=4
set scrolloff=8
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50
