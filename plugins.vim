packadd minpac
call minpac#init()

" Plugins
call minpac#add('christoomey/vim-tmux-navigator')
call minpac#add('codota/tabnine-vim')
call minpac#add('ctrlpvim/ctrlp.vim')
" colorscheme
call minpac#add('dislabled/panenight.vim')
call minpac#add('editorconfig/editorconfig-vim')
" Show git author, last modified date
call minpac#add('f-person/git-blame.nvim')
call minpac#add('gko/vim-coloresque')
" FZF
call minpac#add('junegunn/fzf')
call minpac#add('junegunn/fzf.vim')

call minpac#add('isRuslan/vim-es6')
" ranger (file folders)
call minpac#add('kevinhwang91/rnvimr')
" Display tags for current code
call minpac#add('majutsushi/tagbar')
" Show git change symbols in left gutter
call minpac#add('mhinz/vim-signify')
" Code completion
call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
call minpac#add('ntpeters/vim-better-whitespace')
call minpac#add('nvim-treesitter/nvim-treesitter')
" syntax highlighting for ansible
call minpac#add('pearofducks/ansible-vim')
" Black Python code formatter
call minpac#add('psf/black')
" Recognize python for linting
call minpac#add('python-mode/python-mode')
" Surround objects with matching things, use ysiw
call minpac#add('Raimondi/delimitMate')
" Show icons for file types
call minpac#add('ryanoasis/vim-devicons')
" colorscheme
call minpac#add('sjl/badwolf')
" Use gc to block out comments
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-jdaddy')
call minpac#add('tpope/vim-surround')
call minpac#add('universal-ctags/ctags')
call minpac#add('valloric/matchtagalways')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('vimwiki/vimwiki')
" linters
call minpac#add('dense-analysis/ale')

command! PackUpdate call minpac#update()
command! PU call minpac#update()
command! PackClean call minpac#clean()
command! PC call minpac#clean()

