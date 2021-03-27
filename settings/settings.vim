set nu rnu
set laststatus=2
set cursorline
set showmatch
set colorcolumn=80
set tabstop=4 shiftwidth=4 softtabstop=4
set expandtab
set noswapfile
set nobackup
set undofile
set undoreload=1000
set clipboard+=unnamedplus
set fillchars+=vert:│              " better looking window separator
set synmaxcol=160                  " only syntax highlight first 160 characters of a line
set wildignore+=*.pyc
set mouse=a                         " enable mouse in neovim

" because I always type it wrong:
iab teh the
iab thsi this

" Set shell to use in terminal
set shell=/usr/bin/zsh

" Specify version of python to use
let g:python3_host_prog = expand("$HOME/.config/nvim/venv/bin/python")
" Disable Python 2 support
let g:loaded_python_provider=0
" Disable Perl support
let g:loaded_perl_provider = 0

" webdevicons
let g:webdevicons_enable = 1

runtime ftplugin/man.vim

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

" autocmd BufEnter * silent! lcd %:p:h

" better whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" use smart pairings
let g:pear_tree_repeatable_expand = 0
let g:pear_tree_ft_disabled = ["TelescopePrompt"]

" delimitMate
let g:delimitMate_expand_cr=2

" vim-rooter
let g:rooter_patterns = ['.git']
let g:rooter_change_directory_for_non_project_files = 'current'

" ultisnips
let g:UltiSnipsSnippetDirectories=["UltiSnips", "snips"]

" display indentation levels differently
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
