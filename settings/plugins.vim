call plug#begin(stdpath('config') . '/plugins')

" Color schemes
Plug 'dislabled/panenight.vim'
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'sjl/badwolf'

" Show hex values with color as background
Plug 'gko/vim-coloresque'

" Fuzzy finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-frecency.nvim'

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
" Plug 'nvim-lua/completion-nvim'
Plug 'hrsh7th/nvim-compe'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'nvim-treesitter/completion-treesitter'
Plug 'tami5/sql.nvim'

" Snippets engine
" Plug 'SirVer/ultisnips'
" Use the engine in neovim
" Plug 'honza/vim-snippets'
Plug 'hrsh7th/vim-vsnip'
" Plug 'norcalli/snippets.nvim'

" statusline
Plug 'beauwilliams/statusline.lua'

" Tags
Plug 'universal-ctags/ctags'
" Display tagbar
Plug 'majutsushi/tagbar'
" Python code formatter
Plug 'psf/black'

" Tmux
Plug 'christoomey/vim-tmux-navigator'

" Work with blocks of text better
" Use gc to block out comments
Plug 'tpope/vim-commentary'
" Surround blocks of text
Plug 'tpope/vim-surround'
" Show trailing whtiespace
Plug 'ntpeters/vim-better-whitespace'
" Surround objects with matching things
Plug 'Raimondi/delimitMate'

" Vimwiki filetype support
Plug 'vimwiki/vimwiki'

" Show icons for file types
Plug 'kyazdani42/nvim-web-devicons'

" Use editor config for project
Plug 'editorconfig/editorconfig-vim'

call plug#end()
