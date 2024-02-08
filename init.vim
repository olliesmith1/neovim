set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set mouse=a
set number
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu
set colorcolumn=121

" Tabs size
set expandtab
set shiftwidth=2
set tabstop=2

syntax on

set t_Co=256
set termguicolors

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

call plug#begin()
  " Appearance
  Plug 'vim-airline/vim-airline'
  Plug 'ryanoasis/vim-devicons'
  Plug 'rstacruz/vim-opinion'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-surround'
  Plug 'jpo/vim-railscasts-theme'
  Plug 'carakan/new-railscasts-theme'

  " Utilities
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'ap/vim-css-color'
  Plug 'preservim/nerdtree'
  Plug 'thoughtbot/vim-rspec'
  Plug 'xolox/vim-notes'
  Plug 'xolox/vim-misc'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'rgroli/other.nvim'

  " Completion / linters / formatters
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-endwise'
  Plug 'github/copilot.vim'

  " Git
  Plug 'airblade/vim-gitgutter'
  Plug 'APZelos/blamer.nvim'
call plug#end()

colorscheme new-railscasts

let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let blamer_date_format = '%d/%m/%y'
let blamer_show_in_insert_modes = 0
let blamer_show_in_visual_modes = 1
let blamer_enabled = 1

let mapleader = ";"

"key bindings normal mode
nnoremap <leader>p :GFiles<CR>
nnoremap <leader>[ :Files<CR>
nnoremap <leader>o :Buffers<CR>
nnoremap <leader>/ :Rg<CR>
nnoremap <leader>t :call RunCurrentSpecFile()<CR>
nnoremap <leader>l :Note
nnoremap <leader>k :SearchNotes
nnoremap <leader>' :NERDTreeToggle<CR>
nnoremap <leader>\ :NERDTreeFind<CR>
nnoremap <leader>q :q<CR>
nnoremap gp p`[v`]=

"key bindings visual mode
vnoremap <C-c> "+y<Esc>
