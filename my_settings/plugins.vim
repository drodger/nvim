packadd minpac
call minpac#init()

" == Plugins ==
call minpac#add("neovim/nvim-lspconfig")

call minpac#add('christoomey/vim-tmux-navigator')
" Code completion
" AI-driven code completion
" call minpac#add('codota/tabnine-vim')
call minpac#add("nvim-lua/completion-nvim")
call minpac#add("nvim-treesitter/completion-treesitter")

" colorschemes
call minpac#add('ayu-theme/ayu-vim')
call minpac#add('dislabled/panenight.vim')
call minpac#add('dracula/vim')
call minpac#add('morhetz/gruvbox')
call minpac#add('patstockwell/vim-monokai-tasty')
call minpac#add('sjl/badwolf')

call minpac#add('editorconfig/editorconfig-vim')

" Git
" Show git author, last modified date
call minpac#add('f-person/git-blame.nvim')
call minpac#add('gko/vim-coloresque')
" Show git change symbols in left gutter
call minpac#add('mhinz/vim-signify')
" Show git changes in gutter
call minpac#add('tpope/vim-fugitive')

" FZF
call minpac#add('junegunn/fzf')
call minpac#add('junegunn/fzf.vim')
call minpac#add('junegunn/gv.vim')
" Use project directory scope for FZF
" call minpac#add('airblade/vim-rooter')

" Linters
" call minpac#add('dense-analysis/ale')
" Recognize python for linting
" call minpac#add('python-mode/python-mode')

" Syntax highlighters
call minpac#add('nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'})
" call minpac#add('isRuslan/vim-es6')
" syntax highlighting for ansible
" call minpac#add('pearofducks/ansible-vim')

" Display tags for current code
call minpac#add('universal-ctags/ctags')
call minpac#add('majutsushi/tagbar')

" ranger (file folders)
call minpac#add('kevinhwang91/rnvimr')
" Show icons for file types
call minpac#add('ryanoasis/vim-devicons')
call minpac#add('rhysd/git-messenger.vim')

" Black Python code formatter
call minpac#add('psf/black')

" Surround objects with matching things, use ysiw
call minpac#add('Raimondi/delimitMate')
" call minpac#add('SirVer/ultisnips')

" Work with blocks of text better
" Use gc to block out comments
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-jdaddy')
call minpac#add('tpope/vim-surround')
call minpac#add('valloric/matchtagalways')
call minpac#add('ntpeters/vim-better-whitespace')

" Status line
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')

" Support for other file types
call minpac#add('vimwiki/vimwiki')

command! PackUpdate call minpac#update()
command! PU call minpac#update()
command! PackClean call minpac#clean()
command! PC call minpac#clean()

