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

packadd minpac
call minpac#init()

" Plugins
call minpac#add('christoomey/vim-tmux-navigator')
call minpac#add('ctrlpvim/ctrlp.vim')
call minpac#add('editorconfig/editorconfig-vim')
call minpac#add('gko/vim-coloresque')
call minpac#add('junegunn/fzf')
call minpac#add('junegunn/fzf.vim')
call minpac#add('junegunn/gv.vim')
call minpac#add('isRuslan/vim-es6')
call minpac#add('itchyny/lightline.vim')
call minpac#add('majutsushi/tagbar')
call minpac#add('mhinz/vim-grepper')
call minpac#add('mhinz/vim-signify')
call minpac#add('ntpeters/vim-better-whitespace')
call minpac#add('pearofducks/ansible-vim')
call minpac#add('python-mode/python-mode')
call minpac#add('Raimondi/delimitMate')
call minpac#add('ryanoasis/vim-devicons')
call minpac#add('ncm2/ncm2')
call minpac#add('ncm2/ncm2-bufword')
call minpac#add('ncm2/ncm2-github')
call minpac#add('ncm2/ncm2')
call minpac#add('ncm2/ncm2-tmux')
call minpac#add('ncm2/ncm2-tagprefix')
call minpac#add('filipekiss/ncm2-look.vim')
call minpac#add('ncm2/ncm2-cssomni')
call minpac#add('ncm2/ncm2-tern')
call minpac#add('ncm2/ncm2-jedi')  " Don't forget to pip install jedi
call minpac#add('roxma/nvim-yarp')
call minpac#add('sjl/badwolf')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-jdaddy')
call minpac#add('tpope/vim-surround')
call minpac#add('universal-ctags/ctags')
call minpac#add('valloric/matchtagalways')
call minpac#add('w0rp/ale')

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMRU'

" Grepper
let g:grepper = {}
let g:grepper.tools = ['rg', 'git', 'grep']

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
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" python-mode
let g:pymode_folding = 0
let g:pymode_indent = 1
let g:pymode_virtualenv = 1
let g:pymode_lint = 0  " let ale do linting
let g:pymode_rope = 0
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_slow_sync = 1  " slower, but better
let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all
let g:pymode_syntax_docstrings = g:pymode_syntax_all

" w0rp/ale
let g:ale_sign_warning = '▲'
let g:ale_sign_error = '✗'

" build ctags:
" From within something like erezlife/
" ctags --languages=python,javascript --python-kinds=-vi --tag-relative=yes -f ./tags -R --fields=+iaSszt --extras=+q ./

" Specify version of python to use
"if !filereadable("/etc/os-release")
    let g:python_host_prog = 'python3'
" endif
" Installing Python36 under Ubuntu:
" sudo add-apt-repository ppa:jonathonf/python-3.6
" sudo apt update
" sudo apt install python3.6
" sudo apt install python3.6-dev
" sudo apt install python3.6-venv
" wget https://bootstrap.pypa.io/get-pip.py
" sudo python3.6 get-pip.py

" Settings
filetype plugin indent on
colorscheme badwolf
syntax enable
set novisualbell
set relativenumber number
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
set synmaxcol=200                  " only syntax highlight first 200 characters of a line
" ignore python compiled files
set wildignore+=*.pyc

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
nmap <silent> <leader>f :Files<CR>
nmap <silent> <leader>g :Grepper<CR>
nmap <silent> <leader>u :Buffers<CR>
nmap <silent> <leader>t :Tags<CR>
tnoremap <ESC><ESC> <C-\><C-n>
cmap w!! w !sudo tee > /dev/null %
nmap <silent> <leader><space> :StripWhitespace<CR>

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

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANTE: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect


" Airline
if has('macunix')
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '◀'
    let g:airline_section_b = '%{strftime("%b %d\ %I:%M")}'
endif

" lightline
let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ 'active': {
	\	'left': [ [ 'mode', 'paste', 'ctrlpmark' ],
	\			  [ 'fugitive', 'readonly', 'filename' ] ],
	\	'right': [ ['datetime'], [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
	\ },
	\ 'component': {
	\	'readonly': '%{&readonly?"":""}',
	\	'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
    \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}',
	\ },
	\ 'component_function': {
    \   'mode': 'LightLineMode',
	\   'filename': 'LightLineFilename',
	\   'fileformat': 'LightLineFileformat',
	\   'filetype': 'LightLineFiletype',
	\   'fileencoding': 'LightLineFileencoding',
	\   'ctrlpmark': 'CtrlPMark',
    \   'fugitive': 'LightLineFugitive',
    \   'datetime': 'LightLineDateTime'
	\ },
	\ 'component_expand': {
	\   'syntastic': 'SyntasticStatuslineFlag',
	\ },
	\ 'component_type': {
	\   'syntastic': 'error',
	\ },
	\ 'separator': { 'left': '', 'right': '' },
	\ 'subseparator': { 'left': '', 'right': '' }
	\ }

function! LightLineDateTime()
    return strftime('%b %d %I:%M')
endfunction

function! LightLineModified()
  return &filetype =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightLineReadonly()
  return &filetype !~? 'help' && &readonly ? 'RO' : ''
endfunction

function! LightLineFilename()
  let l:fname = expand('%:t')
  return l:fname == 'ControlP' && has_key(g:lightline, 'ctrlp_item') ? g:lightline.ctrlp_item :
        \ ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
        \ ('' != l:fname ? l:fname : '[No Name]') .
        \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

function! LightLineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightLineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol(): 'no ft') : ''
endfunction

function! LightLineFileencoding()
  return winwidth(0) > 70 ? (strlen(&fileencoding) ? &fileencoding . ' ' . WebDevIconsGetFileFormatSymbol() : &encoding) : ''
endfunction

function! LightLineMode()
    let l:fname = expand('%:t')
    return l:fname == 'ControlP' ? 'CtrlP' :
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction
