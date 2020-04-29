set nocompatible
set mouse=a

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dylanaraps/wal.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'ErichdonGubler/vim-sublime-monokai'
Plugin 'flazz/vim-colorschemes'
Plugin 'honza/vim-snippets'
Plugin 'kchmck/vim-coffee-script'
Plugin 'leafgarland/typescript-vim'
Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'pprovost/vim-ps1'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-ruby/vim-ruby'
call vundle#end()

filetype plugin indent on
syntax on

colorscheme wal

set autoindent
set background=dark
set backspace=indent,eol,start
set cursorline
set foldmethod=indent
set foldnestmax=3
set hlsearch
set ignorecase
set incsearch
set nofoldenable
set nu
set ruler
set shiftwidth=4
set showmatch
set smartcase
set spell
set tabstop=4
set wildignore=*.o,*.obj,*~
set wildmenu

" NERD Tree customizations
nnoremap <silent> <leader>nt :NERDTreeToggle<CR>

set encoding=utf-8
" set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_files = 0  " No max number of files
let g:ctrlp_working_path_mode = 0  " search from current directory
let g:ctrlp_clear_cache_on_exit = 1
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe

" YCM UltiSnips
let g:UltiSnipsExpandTrigger = '<c-tab>'
let g:UltiSnipsListSnippets = '<c-S-tab>'
inoremap <c-x><c-k> <c-x><c-k>

if executable('ag')
    let g:ctrlp_user_command = 'ag -l --nocolor -g "" %s'
    let g:ctrlp_use_caching = 0
endif

" Airline
let g:airline_powerline_fonts = 1

" Vim JavaScript settings
let g:javascript_plugin_jsdoc = 1
