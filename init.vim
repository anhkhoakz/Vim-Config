" ---------------------
" Text Editor Settings
" ---------------------

" Line numbers
set number
set relativenumber

" Indentation
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set smartindent

" File Handling
set autoread
set autowrite
set noswapfile
set backupdir=~/.cache/vim
set encoding=utf-8
set fileencoding=utf-8
set undofile
set nobackup
set nowritebackup
set updatetime=300

" Search Settings
set ignorecase
set hlsearch
set incsearch

" Text Formatting
set noshowmode
set colorcolumn=120
set textwidth=120
set matchpairs+=(:),{:},[:]

" ---------------------
" User Interface
" ---------------------

" Mouse Support
set mouse=a
set ttyfast

" Syntax Highlighting
syntax on
syntax enable
set showmatch
set signcolumn=yes

" Copy & Paste
set clipboard=unnamedplus
set clipboard+=unnamed

" ---------------------
" Plugin Manager
" ---------------------

" Vim-Plug
call plug#begin()

Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" ---------------------
" Key Mapping
" ---------------------

" NERDTree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

" NERDTree Display
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" TagBar
nmap <F8> :TagbarToggle<CR>

" AirLine
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" COC.Nvim
" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" Commentary
autocmd FileType apache setlocal commentstring=#\ %s

" coc-prettier
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
