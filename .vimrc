set nu
set number
set nocompatible
set showcmd
set autoindent
set ruler
set wrap
set smarttab
set showmatch
set hlsearch
set incsearch
set smartcase
set ignorecase
set expandtab
set complete=.,i
set completeopt=longest,menuone
set omnifunc=syntaxcomplete#Complete
" set cursorline
set nobackup
set noswapfile
set history=5000
set tabstop=2
set shiftwidth=2
set softtabstop=2
set undolevels=100
set laststatus=2
set sidescroll=5
"set clipboard=unnamed
set background=dark
"colorscheme railscasts
"colorscheme vividchalk
colorscheme jellybeans
"colorscheme solarized
let loaded_netrwPlugin = 1
let g:go_fmt_command = "goimports"
"let b:goimports_vendor_compatible =1
let g:neocomplete#enable_at_startup = 1


execute pathogen#infect()
:filetype plugin on
:command WQ wq
:command Qa wq
:command Wq wq
:command W w
:command Q q
:command! -bar -bang Q quit<bang>
let g:NERDTreeWinPos="left"
let NERDTreeWinSize=26
let NERDTreeShowHidden=1

autocmd BufWritePre * %s/\s\+$//e
autocmd vimenter * if !argc() | NERDTree | endif
" closes vim if there is no active windows left
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" if argc() > 0 && argv(0) != "."
"     autocmd vimenter * NERDTree
"     autocmd vimenter * wincmd p
" endif

"""" Pathogen settings """"""""""""""""""""""""""""""""""""""""""""""""""""""""
" speedup pathogen loading by temporarily disabling file type detection
filetype off

" add all plugins in ~/.vim/bundle/ to runtimepath (vim-pathogen)
if filereadable($HOME."/.vim/autoload/pathogen.vim")
    call pathogen#infect()
    call pathogen#helptags()
endif

" turn on syntax highlighting
if !exists("syntax_on")
    syntax on
endif

" turn file type detection back on
filetype plugin indent on
