" Turn on line numbers
set number
set relativenumber

" Force 256 colors
set t_Co=256

set nocompatible " turn off vi compatibility
filetype off

" Fix hanging O
set ttimeoutlen=10

filetype plugin indent on " Filetype auto-detection
syntax on " Syntax highlighting

" Fuzzy finding
set path+=**
set wildmenu

" make ctags
command! MakeTags !ctags -R .

" Tab goodness
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intelligently dedent / indent new lines based on rules.

" Make search more sane
set ignorecase " case insensitive search
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set nohlsearch " highlight matches

" Let splitting make more sense
set splitbelow
set splitright

" Cursor line
set cursorline
hi CursorLine cterm=NONE ctermbg=darkgrey ctermfg=NONE

" File browsing
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Easier line wrap navigation
nnoremap j gj
nnoremap k gk
