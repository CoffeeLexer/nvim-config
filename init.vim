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

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'sharkdp/fd'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-tree/nvim-web-devicons'

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
Plug 'AlexvZyl/nordic.nvim'
Plug 'oxfist/night-owl.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'romgrk/barbar.nvim'
Plug 'yamatsum/nvim-cursorline'
Plug 'doctorfree/cheatsheet.nvim'
Plug 'nvim-lua/popup.nvim'
" Themes
Plug 'catppuccin/nvim', {'name': 'catppuccin', 'priority': 100}
call plug#end()

colorscheme night-owl

"autocmd VimEnter * NERDTree


nnoremap <leader>/ :call NERDComment(0,"toggle")<cr>
nnoremap <leader>r :source $MYVIMRC<cr>

nnoremap <leader>p <cmd>Telescope find_files<cr>
nnoremap <leader>F <cmd>Telescope live_grep<cr>
nnoremap <leader>f <cmd>Telescope buffers<cr>

nnoremap <leader>diff <cmd>DiffviewOpen<cr>
nnoremap <leader>hist <cmd>DiffviewFileHistory<cr>

nnoremap <leader>t <cmd>NERDTreeToggle<cr>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
noremap <leader>q :tabclose<cr>

" :help compl-generic auto completer <C>y -> tab
lua << END
require('lualine').setup {
  options = {
    theme = 'horizon'
  }
}
require('nvim-cursorline').setup {
  cursorline = {
    enable = true,
    timeout = 1000,
    number = false,
  },
  cursorword = {
    enable = true,
    min_length = 3,
    hl = { underline = true },
  }
}
END

