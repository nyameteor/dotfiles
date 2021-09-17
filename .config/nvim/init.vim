" Ref: 
" - https://gist.github.com/celso/6cefedb9fce92827ee38e8f7411b8b30
" - https://github.com/a-wing/dotfiles
syntax on
set shell=zsh
" set shellcmdflag=-ic    " set shell to interactive for the current session, make .zshrc load correctly
set mouse=
set ruler               " Show the line and column numbers of the cursor.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set modeline            " Enable modeline.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)
" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.
if !&scrolloff
  set scrolloff=5       " Show next 5 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters
set display+=lastline
set nostartofline               " Do not jump to first character with page commands.
set noerrorbells                " No beeps
set backspace=indent,eol,start  " Makes backspace key more powerful.
set showcmd                     " Show me what I'm typing
set showmode                    " Show current mode.
set noswapfile                  " Don't use swapfile
set nobackup            	    " Don't create annoying backup files
set encoding=utf-8              " Set default encoding to UTF-8
set tabstop=4 shiftwidth=4 expandtab
set relativenumber
set nu                          " Turn on line numbers on the side of the screen
set smartcase
set incsearch
set signcolumn=yes

" osx config
" access your system clipboard
set clipboard=unnamed           

" use lightline.vim to show mode instead of original mode bar
set noshowmode 

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'

" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" https://github.com/dense-analysis/ale 
Plug 'dense-analysis/ale'

" https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree', {'on': ['NERDTree', 'NERDTreeFocus', 'NERDTreeToggle', 'NERDTreeCWD', 'NERDTreeFind'] }

" https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" https://github.com/vimwiki/vimwiki 
" Plug 'vimwiki/vimwiki'

" https://github.com/ycm-core/YouCompleteMe
" Plug 'valloric/youcompleteme'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Plug 'godlygeek/tabular'
" Plug 'plasticboy/vim-markdown'

" Initialize plugin system
call plug#end()

"----------------------------------------------------------------------
" NERDTree
"----------------------------------------------------------------------
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeHijackNetrw = 0
noremap <space>nn :NERDTree<cr>
noremap <space>no :NERDTreeFocus<cr>
noremap <space>nm :NERDTreeMirror<cr>
noremap <space>nt :NERDTreeToggle<cr>
