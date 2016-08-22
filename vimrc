filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'git://github.com/tpope/vim-vividchalk.git'
Plugin 'kana/vim-arpeggio'
Plugin 'easymotion/vim-easymotion'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'chriskempson/base16-vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'Yggdroot/indentLine'
Plugin 'mileszs/ack.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'flazz/vim-colorschemes'

call vundle#end()

set backspace=2                   " more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

filetype plugin indent on
syntax on
set t_Co=256
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
set nocompatible                  " Use Vim defaults instead of 100% vi compatibility
set laststatus=2
set encoding=utf-8
set number
set scrolloff=3                   " Keep 5 lines below and above ther cursor
set guicursor+=a:blinkon0         " Disable all blinking cursor
set noswapfile
set guioptions-=L
set guioptions-=r
set background=dark
colorscheme mustang
set updatetime=250
set expandtab                     " always uses spaces instead of tab characters
set wildmenu                      " Enhanced tab completion
set colorcolumn=81

" Set theme/settings for macvim
if has("gui_running")
  syntax on
  set hlsearch
  colorscheme base16-railscasts
  set bs=2
  set ai
  set ruler
  " set guifont=Ubuntu_Mono_derivative_Powerline:h14
  set guifont=Monaco:h12
endif

" Disable next line commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Remove trailing whitespace on save for ruby files
autocmd BufWritePre *.rb :%s/\s\+$//e

" Set whitespace character
set listchars=eol:¬,tab:→→,trail:~,extends:>,precedes:<
set list

" Set Powerline
let g:Powerline_symbols = 'fancy'

" Set close tag filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb"

" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>
" Shortcut for typing :Ack
nnoremap <leader>f :Ack<Space>
" Clear hilights
nnoremap <leader><space> :noh<cr>
map <Leader>e :NERDTreeFind<CR>zz
map <Leader>q :q<CR>
map <Leader>s :w<CR>

" Set ctrl p for vim search file
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Set ignore case for Easy motion
let g:EasyMotion_smartcase = 1

" Customize own statusline
" set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [%l,%c]\ [%L,%p%%]

" Set character for indentation line plugin
" let g:indentLine_char = '|'

" Whitespace warning
let ruby_space_errors=1
let c_space_errors=1

" Highlight background of column line
hi ColorColumn guibg=#000000

" Alias Ack with Ag instead
let g:ackprg = 'ag --vimgrep'
