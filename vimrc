"""" Enable Plug-Vim: vim plugin manager
" https://github.com/flazz/vim-colorschemes.git
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'Valloric/YouCompleteMe'
call plug#end()

map <C-n> :NERDTreeToggle<CR>

"""" YCM
let g:ycm_min_num_identifier_candidate_chars = 2
nnoremap <C-u> :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
set completeopt-=preview

"""" Basic Behavior

"set number              " show line numbers
set wrap                " wrap lines
set encoding=utf-8      " set encoding to UTF-8 (default was "latin1")
set mouse=a             " enable mouse support (might not work well on Mac OS X)
set selection=exclusive
set selectmode=mouse,key
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw screen only when we need to
set showmatch           " highlight matching parentheses / brackets [{()}]
set laststatus=2        " always show statusline (even with only single window)
set ruler               " show line and column number of the cursor on right side of statusline
"set visualbell          " blink cursor on error, instead of beeping


"""" Key Bindings

" move vertically by visual line (don't skip wrapped lines)
" nmap j gj
" nmap k gk

"""" Auto pair

inoremap { {}<ESC>i

"""" Vim Appearance

" put colorscheme files in ~/.vim/colors/
colorscheme Monokai      " good colorschemes: murphy, slate, molokai, badwolf, solarized

" use filetype-based syntax highlighting, ftplugins, and indentation
syntax enable
filetype plugin indent on


"""" Tab settings

set tabstop=4           " width that a <TAB> character displays as
set expandtab           " convert <TAB> key-presses to spaces
set shiftwidth=4        " number of spaces to use for each step of (auto)indent
set softtabstop=4       " backspace after pressing <TAB> will remove up to this many spaces

set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')


"""" Cursor motion settings
"set scrolloff=3


"""" Search settings

"set incsearch           " search as characters are entered
"set hlsearch            " highlight matches

" turn off search highlighting with <CR> (carriage-return)
"nnoremap <CR> :nohlsearch<CR><CR>


"""" Miscellaneous settings that might be worth enabling

set cursorline         " highlight current line
"set background=dark    " configure Vim to use brighter colors
"set autoread           " autoreload the file in Vim if it has been changed outside of Vim
