execute pathogen#infect()

colorscheme koehler
syntax on

filetype indent on
filetype plugin on

nmap , $pa

set autoindent
set background=dark
set backspace=indent,eol,start
set columns=120
set expandtab
" set guifont=Monaco\ 10
set guifont=Fantasque\ Sans\ Mono\ 13
set guioptions-=r
set guioptions-=T
set hlsearch
set ignorecase
set laststatus=2
set lines=80
set modeline
set noautoindent
set nocindent
set nocompatible
set nofoldenable
set nojoinspaces
set nomousehide
set nosmartindent
set nowrap
set number
set ruler
set shiftwidth=4
set showmatch
set softtabstop=4
set tabstop=4
set tags=tags;/
set textwidth=120
set ttyfast

" Common bindings
map <F1> :ProjectRefresh<CR>
map <F5> :prev<CR>
map <F6> :n<CR>
map <F7> :new<CR>:r!git diff --staged<CR>:set syn=git<CR>

" Common eclim bindings
map <F4> :Checkstyle<CR>

" Common eclim bindings for java
autocmd FileType java map <F2>  :JavaSearch<CR>
autocmd FileType java map <F3>  :JavaSearch<CR>
autocmd FileType java map <F8>  :JavaGetSet<CR>
autocmd FileType java map <F9>  :JavaImpl<CR>
autocmd FileType java map <F10> :JavaConstructor<CR>
autocmd FileType java map <F11> :JavaDocComment<CR>
autocmd FileType java map <F12> :JavaImportOrganize<CR>

" Common eclim bindings for php
autocmd FileType php  map <F2>  :PhpSearch<CR>
autocmd FileType php  map <F3>  :split <bar> :PhpSearch<CR>

" Disable auto-updating the .classpath in eclim
let g:EclimMakeLCD=1
let g:EclimMavenPomClasspathUpdate=0

" Formatting settings for XML-based languages
autocmd FileType xml  setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xsd setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xsl setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xslt setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Formatting settings for Algol-based languages
autocmd FileType c          setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType c          autocmd BufWritePre <buffer> :%s/\s\+$//e " Remove trailing whitespace
autocmd FileType cpp        setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType cpp        autocmd BufWritePre <buffer> :%s/\s\+$//e " Remove trailing whitespace
autocmd FileType java       setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType java       autocmd BufWritePre <buffer> :%s/\s\+$//e " Remove trailing whitespace
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType javascript autocmd BufWritePre <buffer> :%s/\s\+$//e " Remove trailing whitespace
autocmd FileType php        setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType php        autocmd BufWritePre <buffer> :%s/\s\+$//e " Remove trailing whitespace

" Formatting settings for unmapped languages
autocmd BufRead,BufNewFile *.as      set syntax=javascript
autocmd BufRead,BufNewFile *.mxml    set syntax=javascript
autocmd BufRead,BufNewFile *.service set syntax=dosini
autocmd BufRead,BufNewFile *.conf    set syntax=dosini
autocmd BufRead,BufNewFile *.timer   set syntax=dosini
autocmd BufRead,BufNewFile *.yml     set syntax=ansible

" RainbowParenthesis settings
"
"   Always enable rainbow parenthesis
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" CursorLine settings
"
"   Enable cursor line
"
set cursorline

"   Disable blinking
"
set guicursor=a:blinkon0

"   Darker background
"
hi CursorLine guibg=#202020

"   Darker background (colorscheme override)
"
au ColorScheme * hi CursorLine guibg=#202020

"   Highlight text beyond 120 characters
"
hi OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%121v.\+/
