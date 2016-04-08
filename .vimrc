set t_Co=256
set number

inore hh <esc>
nnore ; :
vnore ; :
nnore ,h :sp <cr>
nnore ,s :vsp <cr>
nnore ,t :tab sp <cr>
nnore ,vi :tabe ~/.vimrc<cr>
nnore ,sv :so ~/.vimrc<cr>
nnore ,ba :tabe ~/.bashrc<cr>
nnore ,sb :so ~/.bashrc<cr>
nnore U :syntax sync fromstart<cr>:redraw!<cr>
"Ctrl-ArrowKeys = move between splits

nnore <C-Left> <C-W><left>
nnore <C-Right> <C-W><right>
nnore <C-Up> <C-W><up>
nnore <C-Down> <C-W><down>
" Backups {{{
" (thanks Steve Losh)
set backup
set swapfile
set undofile

set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//

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
