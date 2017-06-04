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
set noswapfile
set background=dark
set updatetime=250
set expandtab                     " always uses spaces instead of tab characters
set wildmenu                      " Enhanced tab completion
set textwidth=90
set colorcolumn=+1
set showcmd
set lazyredraw
set splitbelow
set splitright
set visualbell
set relativenumber
set nowrap
set foldlevelstart=0              " don't fold initially
set nostartofline
set confirm                       " confirm unsaved changes
set hidden
set autoread
set timeoutlen=500
set nocul
set re=1                          " use old regexpengine to avoid lagging scroll.
set termguicolors
set diffopt=filler,vertical

" Set whitespace character
set fillchars=vert:\│             " show/hide whitespace marker in insert mode
autocmd InsertEnter * set list listchars=tab:»·,trail:\·,precedes:«,extends:»
autocmd InsertLeave * set list listchars=tab:\ \ ,trail:\·,precedes:«,extends:»
