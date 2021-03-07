set number
set autochdir
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

" let g:completion_enable_snippet = 'UltiSnips'
" let g:UltiSnipsSnippetDirectories=["UltiSnips", $HOME.'/.config/nvim/snips']

" show diagnostic signs
let g:lsp_signs_enabled = 1
let g:lsp_signs_error = {'text': '✗'}
let g:lsp_signs_warning = {'text': '!'}
let g:lsp_highlights_enabled = 0
