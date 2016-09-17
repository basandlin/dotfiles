set t_Co=256
set number

inoremap jj <esc>
nnoremap ; :
vnoremap ; :
nnoremap ,h :sp <cr>
nnoremap ,s :vsp <cr>
nnoremap ,t :tab sp <cr>
nnoremap ,vi :tabe ~/.vimrc<cr>
nnoremap ,sv :so ~/.vimrc<cr>
nnoremap ,ba :tabe ~/.bashrc<cr>
nnoremap ,sb :so ~/.bashrc<cr>
nnoremap U :syntax sync fromstart<cr>:redraw!<cr>
nnoremap ,r :CtrlPMRUFiles<CR>
nnoremap ,p :CtrlP<CR>
"Ctrl-ArrowKeys = move between splits

nnoremap <C-H> <C-W><H>
nnoremap <C-L> <C-W><L>
nnoremap <C-K> <C-W><K>
nnoremap <C-J> <C-W><J>
" Backups {{{
" (thanks Steve Losh)
set backup
set swapfile
set undofile

set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//
"displays filename on bottom line
set laststatus=2
"turns tabs into spaces
set expandtab

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif
"}}}
"}}}
"Plugins {{{
call plug#begin()
Plug 'mhinz/vim-janah'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
call plug#end()
"}}}

colorscheme janah
