autocmd VimEnter * QFLoad
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
execute pathogen#infect()
filetype plugin indent on
filetype off
filetype plugin indent off
"set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

set clipboard=unnamed
"set paste
"colorscheme astronaut
"colorscheme BlackSea
"colorscheme seashell
"colorscheme colorzone
"colorscheme watermark
""colorscheme golden
set t_Co=256
set backspace=indent,eol,start

let fName = expand('%:t')
let myPath = $HOME . "/" . fName

set encoding=utf-8
set history=64
set textwidth=144

"set foldmethod=indent
"set foldnestmax=10
"set foldlevel=1

set t_Co=256
set background=dark

set incsearch
"set nocompatible
let mapleader = ","
set noswapfile
set nobackup

"set cindent
"set smartindent
"set autoindent
set expandtab
set tabstop=2
set smarttab

set shiftwidth=2
set ruler

nmap \ :.!pbcopy<CR>

command! -bang -nargs=* W :call W(<q-bang>, <q-args>)
function! W(bang, filename)
  :exe "w".a:bang." ". substitute(a:filename, ' ', '\\ ', 'g')
endfunction

noremap <silent> <F8> :copen<CR>

nmap <Up> H
nmap <Left> {
nmap <Right> }
nmap <Down> L
nmap <leader>n <Plug>QFAddNote
nmap <leader>N <Plug>QFAddNotePattern
nmap <leader>l <Plug>LocAddNote
nmap <leader>L <Plug>LocAddNotePattern

let g:editqf_saveqf_filename  = "quickfix.list"
let g:editqf_saveloc_filename = "location.list"      
let g:editqf_jump_to_error = 1
let g:editqf_store_absolute_filename = 1
