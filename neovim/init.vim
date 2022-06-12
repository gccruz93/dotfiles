set expandtab
set shiftwidth=2
set tabstop=2
set hidden
set signcolumn=yes:2
set number
set relativenumber
set termguicolors
set undofile
set spell
set title
set hlsearch
set ignorecase
set smartcase
set wildmode=longest:full,full
set nowrap
set list
set listchars=tab:▶\ ,trail:·
set mouse=a
set scrolloff=8
set sidescrolloff=8
set nojoinspaces
set splitright
set clipboard=unnamedplus
set confirm
set exrc
set backup
set updatetime=300
set redrawtime=10000

syntax on
set cursorline
:highlight Cursorline cterm=bold ctermbg=black
set showmatch

" ========== HOTKEYS ==========

let mapleader = "\<space>"

nmap <leader>k :nohlsearch<CR>
nmap <leader>Q :bufdo bdelete<cr>

" Allow gf to open non-existent files
map gf :edit <cfile><cr>

" Quicker switching between windows
nmap <silent> <C-h> <C-w>h
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-k> <C-w>k
nmap <silent> <C-l> <C-w>l

" Reselect visual selection after identing
vnoremap < <gv
vnoremap > >gv

" Maintain the cursor position when yanking a visual selection
vnoremap y myy`y
vnoremap Y myY`y

" When text is wrapped, move by terminal rows, not lines, unless a count is provided
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Keep it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" ========== PLUGINS ==========
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIRMC
endif

call plug#begin(data_dir . '/plugins')

source ~/AppData/Local/nvim/plugins/surround.vim
source ~/AppData/Local/nvim/plugins/editorconfig.vim
source ~/AppData/Local/nvim/plugins/nerdtree.vim
source ~/AppData/Local/nvim/plugins/polyglot.vim

call plug#end()