" Set default encoding
scriptencoding utf-8


" NeoVIM features
" set guicursor


" Enable syntax highlighting
syntax enable
set synmaxcol=320
set modeline


" Enable fancy colors
" force 256 terminal settings
set t_Co=256
set background=dark
"colorscheme anotherdark    " without external colors
"colorscheme Sunburst       " 70%, fajne stringi
"colorscheme strange        " cool
"colorscheme greenvision
colorscheme maelkum
"colorscheme gotham256
let $NVIM_TUI_ENABLE_TRUE_COLOR=0


" Highlight cursor line
set cursorline
set cursorcolumn


" tabulation
set tabstop=4       " tab is four spaces
set shiftwidth=4    " number of spaces used for autoindenting

" Indentation
set expandtab
set autoindent
filetype plugin indent on

" folding
set foldmethod=indent
set foldcolumn=4
set foldnestmax=16

set textwidth=80

" splitting
set splitright
set splitbelow


" Display line numbers
set number
set relativenumber
set numberwidth=4

autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

" Set minimal number of lines to be visible above and below cursor
set scrolloff=15


" Undo and history settings
set history=1024
set undolevels=1024


set autowrite


" Adjsut search-related settings
set hlsearch    " highlight search matches
set ignorecase  " ignore case when searching
set smartcase   " ignore case when search is all-lowercase, be case sensitive otherwise
set incsearch   " show search matches while typing
set inccommand=nosplit
nnoremap <esc> :noh<return><esc>


" for easier navigation between buffers
nmap <C-k> :bnext<CR>
nmap <C-j> :bprev<CR>

" overwrite selection without nuking * register
vmap B "_dP

nmap <C-i> :w! /tmp/nvim.clipboardbuffer<CR>
nmap <C-o> :r /tmp/nvim.clipboardbuffer<CR>
vmap <C-i> :w! /tmp/nvim.clipboardbuffer<CR>
vmap <C-o> :r /tmp/nvim.clipboardbuffer<CR>


" Allow backspacing over everything when in insert mode
set backspace=indent,eol,start

set mouse=r


" required for vim-airline to work
set laststatus=2

set showcmd
let mapleader = '\'


" Additional filetypes
autocmd BufEnter *.viuact :setlocal ft=viuact
autocmd BufEnter *.vt :setlocal ft=viuact
autocmd BufEnter *.vti :setlocal ft=viuact
autocmd BufEnter *.viuact :setlocal commentstring=;\ %s
autocmd BufEnter *.vt :setlocal commentstring=;\ %s


" Remove trailing whitespace
autocmd FileType c,cpp,javascript,python,rs autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

let g:clang_format#detect_style_file=1
nmap <C-u> :ClangFormat<CR>
vmap <C-u> :ClangFormat<CR>
" let g:clang_format#auto_format=1

execute pathogen#infect()
"let g:airline#extensions#tabline#enabled=1

if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

" <F10> shows what highlight type is item under cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" let g:opamshare = substitute(system('opam config var share'),'\n$','', '''')
" execute "set rtp+=" . g:opamshare . "/merlin/vim"
