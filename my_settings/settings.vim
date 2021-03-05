" Settings
filetype plugin indent on
" syntax enable
set novisualbell
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
" ignore python compiled files
set wildignore+=*.pyc
set mouse=a                         " enable mouse in neovim

" replace vimgrep
set grepprg=rg\ --vimgrep\ --smart-case\ --follow
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

" Install python 3.x under ubuntu
" wget https://www.python.org/ftp/python/3.x.0/Python-3.x.0.tar.xz
" ./configure
" make -j4
" Don't clobber the system Python:
" sudo make altinstall

" webdevicons
let g:webdevicons_enable = 1
let g:webdevicons_enable_ctrlp = 1

" commentary
augroup plugin_commentary
    au!
    au FileType text setlocal commentstring=#\ %s
    au FileType unix setlocal commentstring=\"\ %s
augroup END

runtime ftplugin/man.vim

" es6 syntax highlighting
" augroup filetype javascript syntax=javascript

" nvim-autocompletion
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" build ctags:
" From within something like erezlife/
" ctags --languages=python,javascript --python-kinds=-vi --tag-relative=yes -f ./tags -R --fields=+iaSszt --extras=+q ./

