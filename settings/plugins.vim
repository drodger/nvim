call plug#begin(stdpath('config') . '/plugins')

" LSP
Plug 'sumneko/lua-language-server'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'tjdevries/nlua.nvim'
Plug 'tjdevries/lsp_extensions.nvim'

" Color schemes
Plug 'chriskempson/base16'
Plug 'dislabled/panenight.vim'
Plug 'flazz/vim-colorschemes'
Plug 'gruvbox-community/gruvbox'
Plug 'morhetz/gruvbox'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'phanviet/vim-monokai-pro'
Plug 'sainnhe/gruvbox-material'
Plug 'tanvirtin/nvim-monokai'
Plug 'tiagovla/tokyodark.nvim'

" Show hex values with color as background
" Plug 'gko/vim-coloresque'
Plug 'norcalli/nvim-colorizer.lua'

" Fuzzy finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'on': 'make' }
Plug 'nvim-telescope/telescope-media-files.nvim'

" Git
" Show git author, last modified date
Plug 'f-person/git-blame.nvim'
" Show git change symbols in left gutter
Plug 'lewis6991/gitsigns.nvim'
" git commit browser
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-dispatch'
Plug 'theprimeagen/vim-be-good'
" View commit message for line of code
Plug 'rhysd/git-messenger.vim'

" Treesitter syntax highlighter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" statusline - use galaxyline, because airline is for savages
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'akinsho/nvim-bufferline.lua'

" Python code formatter
Plug 'psf/black'

" Rust, go
Plug 'rust-lang/rust.vim'
Plug 'tweekmonster/gofmt.vim'

" Tmux
Plug 'numToStr/Navigator.nvim'

" Work with blocks of text better

" Use gcc/gc to block out comments
Plug 'b3nj5m1n/kommentary'
" Surround blocks of text
Plug 'blackcauldron7/surround.nvim'
" Remove trailing whitespace
Plug 'ntpeters/vim-better-whitespace'
" pair parenthesis, etc
Plug 'tmsvg/pear-tree'

" Vimwiki filetype support
Plug 'vimwiki/vimwiki'


" Show icons for file types
Plug 'kyazdani42/nvim-web-devicons'
Plug 'onsails/lspkind-nvim'
Plug 'kyazdani42/nvim-tree.lua'

" Use editor config for project
Plug 'editorconfig/editorconfig-vim'

" Debugging
Plug 'puremourning/vimspector'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }

" RRRRRRRRRAAAAAAAAAAAAAAUUUUUUUUUULLLLLLLLLL
Plug 'theprimeagen/harpoon'
Plug 'sbdchd/neoformat'

" snips
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'fhill2/telescope-ultisnips.nvim'

" show indentation
Plug 'lukas-reineke/indent-blankline.nvim', { 'branch': 'lua' }
" different colors for bracket/parens/braces
Plug 'p00f/nvim-ts-rainbow'

Plug 'milkypostman/vim-togglelist'

" fast scrolling
Plug 'karb94/neoscroll.nvim'
" registers
Plug 'gennaro-tedesco/nvim-peekup'
" quickfix window
Plug 'kevinhwang91/nvim-bqf'

" opposite of 'J'
Plug 'sgur/vim-textobj-parameter'
Plug 'kana/vim-textobj-user'
Plug 'AckslD/nvim-revJ.lua'

" Inc/Dec numbers
Plug 'monaqa/dial.nvim'

" spell check
" Wait until this is fixed:
" https://github.com/lewis6991/spellsitter.nvim/issues/2
" Plug 'lewis6991/spellsitter.nvim'

call plug#end()


command! PU :PlugUpdate
command! PC :PlugClean

