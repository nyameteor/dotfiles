" REF: https://gist.github.com/celso/6cefedb9fce92827ee38e8f7411b8b30
syntax on
" set shell=zsh
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
set nu
set smartcase
set incsearch
set signcolumn=yes

