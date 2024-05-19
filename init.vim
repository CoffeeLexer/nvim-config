set nocompatible
set showmatch
set ignorecase
set mouse=v
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set expandtab " tabs -> white space
set shiftwidth=4
set autoindent
set number
set relativenumber
set wildmode=longest,list
set cc=80
filetype plugin indent on
syntax on
set mouse=a
set clipboard=unnamedplus
filetype plugin on
set cursorline
set ttyfast
set spell
set noswapfile
set backupdir=~/.cache/vim

"No icons FIX
"https://github.com/ryanoasis/nerd-fonts
set guifont=Cousine\ Nerd\ Font\ Mono:h12

call plug#begin('~/.config/nvim')
Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'jakemason/ouroboros', {'requires': 'nvim-lua/plenary.nvim'}
Plug 'nvim-telescope/telescope.nvim', {'tag': '0.1.6'}
Plug 'hrsh7th/nvim-cmp'
Plug 'cpea2506/relative-toggle.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'

" Themes
Plug 'catppuccin/nvim', {'name': 'catppuccin', 'priority': 100}
call plug#end()

colorscheme catppuccin

 "Example binding -- only works in a c/cpp file
autocmd! Filetype c,cpp map<buffer> <C-e> :Ouroboros<cr>
autocmd VimEnter * NERDTree

nnoremap <leader>r :source $MYVIMRC<cr>


nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>diff <cmd>DiffviewOpen<cr>
nnoremap <leader>hist <cmd>DiffviewFileHistory<cr>

nnoremap <leader>nerd <cmd>NERDTree<cr>

" :help compl-generic auto completer <C>y -> tab
lua << END
require('lualine').setup {
  options = {
    theme = 'horizon'
  }
}
END

