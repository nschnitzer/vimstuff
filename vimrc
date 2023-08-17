
" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)


" Set compatibility to Vim only.
set nocompatible

" " Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" Turn on syntax highlighting.
syntax on

" For plug-ins to load correctly.
filetype plugin indent on


set wrap

" F2 toggles copy and paste w/ C-v
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>


set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround


set scrolloff=5

set backspace=indent,eol,start

set ttyfast

set laststatus=2


set number

" Remap window switching commands
" F5 -> Left F6 -> Down
" F7 -> Up F8 -> Right
" F9 -> Decrease split window width
" F11 -> Increase split window width
nmap <F5> <C-w>h
nmap <F6> <C-w>j
nmap <F7> <C-w>k
nmap <F8> <C-w>l
nmap <F9> <C-w><
nmap <F11> <C-w>>

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin()

Plug 'junegunn/vim-easy-align'


Plug 'davidhalter/jedi-vim'


Plug 'vim-scripts/wombat'

Plug 'scrooloose/nerdtree'

Plug 'PhilRunninger/nerdtree-buffer-ops'

Plug 'vhda/verilog_systemverilog.vim'

Plug 'ervandew/supertab'

Plug 'vim-scripts/tcl.vim--smithfield'

Plug 'vim-scripts/tcl_itcl.vim'

Plug 'universal-ctags/ctags'

Plug 'bfrg/vim-cpp-modern'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


" Vim Easy Align Config
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


" OneDark Config
" let g:onedark_termcolors=16

" colorscheme onedark


" Space gray theme
:set termguicolors
colorscheme wombat

" Jedi Vim Config
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#show_call_signatures = "1"


" NERDTree config
" Use :NERDTree to open it

" Automatically opens NERDTree with vim and puts cursor on file opened
autocmd VimEnter * NERDTree | wincmd p


" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

set omnifunc=syntaxcomplete#Complete

let g:SuperTabDefaultCompetionType = 'context'


" Temp Disable Search Highlighting w/ ESC
map <esc> :noh <CR>


set encoding=utf-8

set updatetime=300

set signcolumn=yes




