" General configurations
" ==========================================================================
set backspace=indent,eol,start    " more powerful backspacing
set tabstop=2                     " size of a hard tabstop
set shiftwidth=2                  " size of an indent
set ignorecase                    " ignore case in search
set softtabstop=2                 " a combination of spaces and tabs are used to simulate tab stops at a width other than the (hard)tabstop
set smarttab                      " make 'tab' insert indents instead of tabs at the beginning of a line
set showmatch                     " show bracket matches"
set hlsearch                      " highlight all search matches"
set incsearch                     " show search results as I type"
set autoindent
set smartindent
set laststatus=2
set encoding=utf-8
set scrolloff=5                   " Keep 5 lines below and above ther cursor
set guicursor+=a:blinkon0         " Disable all blinking cursor
set noswapfile
set guioptions-=L
set guioptions-=r
set background=dark
set updatetime=250
set expandtab                     " always uses spaces instead of tab characters
set wildmenu                      " Enhanced tab completion
set colorcolumn=+1
set lazyredraw
set splitbelow
set splitright
set visualbell
set number
set relativenumber

" Set theme/settings for macvim
if has("gui_running")
  set hlsearch
  set bs=2
  set ai
  set ruler
  set guifont=Monaco:h12
endif

" Set whitespace character
set fillchars=vert:\│             " show/hide whitespace marker in insert mode
autocmd InsertEnter * set list listchars=tab:»·,trail:\·,precedes:«,extends:»
autocmd InsertLeave * set list listchars=tab:\ \ ,trail:\·,precedes:«,extends:»
autocmd WinEnter * set cul
autocmd WinLeave * set nocul
