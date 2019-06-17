" Vim Plug
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'altercation/Vim-colors-solarized'
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'

" After this is configured, :ALEFix will try and fix your JS code with ESLint.
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'html': ['tidy'],
\   'scss': ['prettier'],
\   'css': ['prettier'],
\   'markdown': ['mdl'],
\   'c': ['clangtidy'],
\}

let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'scss': ['prettier'],
\   'css': ['prettier'],
\   'c': ['clangtidy'],
\}

" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 0

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Initialize plugin system
call plug#end()  

" enable syntax processing
syntax enable

set background=dark
" solarized 
let g:solarized_termcolors=16
let g:solarized_visibility="high"
let g:solarized_contrast="high"
let g:solarized_style="dark"
colorscheme solarized

" number of visual spaces per tab
set tabstop=4

" number of spaces in tab when editing
set softtabstop=4

" tabs are spaces
set expandtab

" show line numbers
set number

" show command in bottom bar
set showcmd

" highlight current line
set cursorline

" show the cursor position at all times
set ruler

" make it obvious where 80 characters is
set textwidth=80

" load filetype-specific indent files
filetype indent on

" visual autocomplete for command menu
set wildmenu

" redraw only when we need to
set lazyredraw

" highlight matching [{()}]
set showmatch

" search as characters are entered
set incsearch

" highlight matches
set hlsearch

" enable foldings
set foldenable

" open most folds by default
set foldlevelstart=10

" 10 nested fold max
set foldnestmax=10

" fold based on indent level
set foldmethod=indent

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" Backspace deletes like most programs in insert mode
set backspace=2

" Set syntax highlighting for specific file types
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile .{jscs,jshint,eslint}rc set filetype=json

" Set whitespace preferences
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype scss setlocal ts=2 sw=2 expandtab
autocmd Filetype less setlocal ts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2  expandtab
autocmd Filetype json setlocal ts=2 sw=2  expandtab
autocmd Filetype markdown setlocal ts=2 sw=2 expandtab

" move backups to /tmp folders
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

