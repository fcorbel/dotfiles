syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
set showmode
set hidden
filetype plugin indent on       " load file type plugins + indentation
set modelines=0                 " prevent security exploits with modelines
set wildmenu                    " auto-completion
set wildmode=list:longest
set visualbell
set ruler
set laststatus=2
set undofile

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set smarttab
set backspace=indent,eol,start  " backspace through everything in insert mode
set number                      " show line number
set relativenumber
set cursorline
set scrolloff=3                 " minimum lines above and bellow cursor
set autoindent

"" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch                    " highlight matches
set showmatch
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
nnoremap <leader><space> :noh<cr>  " get rid of search highlight

"" Long lines
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"" Style
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
colorscheme gruvbox

"" Shortcuts
nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>
nmap ]l :lne<CR>
nmap [l :lp<CR>
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"""""""""""""""""""""""""
"" Moving around
"""""""""""""""""""""""""
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Treat long lines as break lines (useful when moving around in them)
nnoremap j gj
nnoremap k gk


"" For new vim users
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>



"""""""""""""""""""""""""
"" Plugins
"""""""""""""""""""""""""
call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'tomtom/tcomment_vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'benekastah/neomake'
Plug 'rust-lang/rust.vim'
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'


call plug#end()

autocmd! BufWritePost * Neomake
let g:airline_powerline_fonts = 1


" execute pathogen#infect()
"
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_enable_signs = 1
" let g:syntastic_javascript_checkers=['jshint']
" let g:syntastic_scss_checkers=['scss_lint']
" let g:syntastic_cpp_checkers=['']
"" Divers
