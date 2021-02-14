" Setup package manager
" To perform initial install of minpac:
" mkdir -p ~/.config/nvim/pack/minpac/opt
" cd ~/.config/nvim/pack/minpac/opt
" git clone https://github.com/k-takata/minpac.git
" Start NeoVIM
" :packadd minpac
" :call minpac#init()
" Restart nvim
" :call minpac#update()
" Restart nvim

" plugins.vim must come first
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/ale.vim
source $HOME/.config/nvim/airline.vim
source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/colorscheme.vim
source $HOME/.config/nvim/ctrlp.vim
source $HOME/.config/nvim/fzf.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/python-mode.vim
source $HOME/.config/nvim/vimwiki.vim

" webdevicons
let g:webdevicons_enable = 1
let g:webdevicons_enable_ctrlp = 1

" commentary
augroup plugin_commentary
    au!
    au FileType text setlocal commentstring=#\ %s
    au FileType unix setlocal commentstring=\"\ %s
augroup END

" es6 syntax highlighting
augroup filetype javascript syntax=javascript

" nvim-autocompletion
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" build ctags:
" From within something like erezlife/
" ctags --languages=python,javascript --python-kinds=-vi --tag-relative=yes -f ./tags -R --fields=+iaSszt --extras=+q ./

" Specify version of python to use
if filereadable(expand("~/.config/nvim/venv/bin/python3"))
    let g:python3_host_prog = expand("~/.config/nvim/venv/bin/python3")
else
    let g:python3_host_prog = '/usr/local/bin/python3.9'
endif
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

" Settings
filetype plugin indent on
syntax enable
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

" because I always type it wrong:
iab teh the
iab thsi this


" Keyboard mappings
let g:mapleader = "\<Space>"
map <F2> :set invpaste paste?
map <F3> :nohlsearch<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap ; :
map <leader>c "+y
map <leader>p "+p
vmap <leader>c "+y
vmap <leader>p "+p
nmap <leader>l :lclose<CR> :cclose<CR>
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" nnoremap <silent> <C-p> :FZF -m<cr>
nnoremap <leader>w :w<CR>
nnoremap <leader>ra :RnvimrToggle<CR>
tnoremap <ESC><ESC> <C-\><C-n>
cmap w!! w !sudo tee > /dev/null %
nmap <silent> <leader><space> :StripWhitespace<CR>
nmap <leader>j :%!python -m json.tool<CR>
map <F4> :Guifont DejaVu Sans Mono:h16<CR>

" Functions
" Restore cursor position on file load
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

" Open help in vertical split (right)
augroup vimrc_help
    autocmd!
    autocmd BufEnter *.txt if &buftype == 'help' | wincmd L | endif
augroup END

" auto-resize windows when split
autocmd VimResized * wincmd =

" Set shell to use in terminal
set shell=/usr/bin/zsh

