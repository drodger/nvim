call plug#begin(stdpath('config') . '/plugins')

" Color schemes
Plug 'dracula/vim'
Plug 'sjl/badwolf'

" Show hex values with color as background
Plug 'gko/vim-coloresque'

" Fuzzy finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Git
" Show git author, last modified date
Plug 'f-person/git-blame.nvim'
" Show git change symbols in left gutter
Plug 'mhinz/vim-signify'
" Use git commands
Plug 'tpope/vim-fugitive'

" LSP
Plug 'neovim/nvim-lspconfig'

" Code completion
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/completion-treesitter'

" statusline
Plug 'beauwilliams/statusline.lua'

" Work with blocks of text better
" Use gc to block out comments
Plug 'tpope/vim-commentary'
" Surround blocks of text
Plug 'tpope/vim-surround'
" Show trailing whtiespace
Plug 'ntpeters/vim-better-whitespace'

call plug#end()
