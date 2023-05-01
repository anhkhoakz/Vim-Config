" Key Mapping
" -----------------------------------------------------------------------
" CtrlP
" Enable fuzzy file search
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:20,results:20'
let g:ctrlp_match_func = { 'match': 'fuzzy_match' }

" Use cache for faster results
let g:ctrlp_use_caching = 1
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

" Ignore some files and directories
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/.git/*,*/.svn/*,*/.DS_Store/*
set wildignore+=*/node_modules/*,*/bower_components/*,*/build/*,*/dist/*,*/target/*,*.class

" Use ag for searching inside files (optional)
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_working_path_mode = 'ra'

" Change the mapping to open CtrlP
nnoremap <silent> <C-p> :CtrlP<CR>

" " EasyMotion


" Tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_width = 30
let g:tagbar_autofocus = 1
let g:tagbar_show_linenumbers = 1
let g:tagbar_show_icons = 0
let g:tagbar_iconchars = ['▶', '▼']
let g:tagbar_ctags_bin = '/opt/homebrew/bin/ctags'

" " Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_at_startup = 1
let g:syntastic_auto_fix_cursor = 1
let g:syntastic_error_symbol = '>>'
let g:syntastic_warning_symbol = '>'

" " Vim Multiple Cursors


" " Vim Surround


" Supertab
" Kích hoạt Supertab
let g:SuperTabAutoCompletionWrap = 1

" Thiết lập phím tắt cho Supertab
imap <Tab>  <Plug>SuperTabForward
imap <S-Tab>  <Plug>SuperTabBackward

" Vim Airline
let g:airline_powerline_fonts = 1

" Setting
" -----------------------------------------------------------------------
set autoindent
set smartindent
set autoread
set autowrite
set clipboard=unnamedplus
set clipboard+=unnamed
set encoding=utf-8
set expandtab
set hlsearch
set incsearch
set laststatus=2
set mouse=a
set number
set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set undofile
set undolevels=1000
set undoreload=10000
let mapleader = ","

" Syntax and Filetype
" -----------------------------------------------------------------------
syntax enable
syntax on
filetype plugin indent on

 
" Plugins
" -----------------------------------------------------------------------
call plug#begin()
 
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/tagbar'

call plug#end()
