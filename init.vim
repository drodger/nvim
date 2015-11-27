if (!isdirectory(expand("$HOME/.nvim/bundle/neobundle.vim")))
    call system(expand("mkdir -p $HOME/.nvim/bundle"))
    call system(expand("git clone https://github.com/Shougo/neobundle.vim ~/.nvim/bundle/neobundle.vim"))
endif

set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
set rtp+=~/.fzf
call neobundle#begin(expand('~/.config/nvim/bundle/'))

NeoBundleFetch 'Shuogo/neobundle.vim'

" Bundles
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-surround'
NeoBundle 'coderifous/textobj-word-column.vim'	" operate on columns of code
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-easytags'
NeoBundle 'valloric/matchtagalways'
NeoBundle 'mattn/emmet-vim'
" Async
NeoBundle 'benekastah/neomake'
" Navigate
NeoBundle 'christoomey/vim-tmux-navigator'
" Status lines/info
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'manicmaniac/betterga'	" show details of character under cursor
NeoBundle 'gorodinskiy/vim-coloresque' " preview colors
NeoBundle 'ryanoasis/vim-devicons'
" Find stuff
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'junegunn/fzf'
NeoBundle 'rking/ag.vim'
NeoBundle 'Shougo/deoplete.nvim'
" Syntax
NeoBundle 'pearofducks/ansible-vim'
NeoBundle 'othree/javascript-libraries-syntax.vim'
NeoBundle 'othree/yajs.vim'
NeoBundle 'othree/html5.vim'
NeoBundle 'maksimr/vim-jsbeautify'
NeoBundle 'einars/js-beautify'
NeoBundle 'elzr/vim-json'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle '1995eaton/vim-better-javascript-completion'


" Color schemes
NeoBundle 'joedicastro/vim-molokai256', { 'autoload':
	\ { 'unite_sources': 'colorscheme', }}
NeoBundle 'fcevado/molokai_dark', { 'autoload':
	\ { 'unite_sources': 'colorscheme', }}
NeoBundle 'cschlueter/vim-wombat', { 'autoload':
	\ { 'unite_sources': 'colorscheme', }}
NeoBundle 'altercation/vim-colors-solarized', { 'autoload':
	\ { 'unite_sources': 'colorscheme', }}
NeoBundle 'Lokaltog/vim-distinguished', { 'autoload':
	\ { 'unite_sources': 'colorscheme', }}
NeoBundle 'vim-scripts/mayansmoke', { 'autoload':
	\ { 'unite_sources': 'colorscheme', }}
NeoBundle 'sjl/badwolf', { 'autoload':
	\ { 'unite_sources': 'colorscheme', }}
NeoBundle 'vim-scripts/herald.vim', { 'autoload':
	\ { 'unite_sources': 'colorscheme', }}
NeoBundle 'vim-scripts/moria', { 'autoload':
	\ { 'unite_sources': 'colorscheme', }}
NeoBundle 'vim-scripts/Spacegray.vim', { 'autoload':
	\ { 'unite_sources': 'colorscheme', }}
NeoBundle 'vim-scripts/twilight256.vim', { 'autoload':
	\ { 'unite_sources': 'colorscheme', }}
NeoBundle 'vim-scripts/less.vim', { 'autoload':
	\ { 'unite_sources': 'colorscheme', }}
NeoBundle 'DrSpatula/vim-buddy', { 'autoload':
	\ { 'unite_sources': 'colorscheme', }}
NeoBundle 'evgenyzinoviev/vim-vendetta', { 'autoload':
	\ { 'unite_sources': 'colorscheme', }}
NeoBundle 'reinecke/vim-cgpro', { 'autoload':
	\ { 'unite_sources': 'colorscheme', }}
NeoBundle 'rking/vim-detailed', { 'autoload':
	\ { 'unite_sources': 'colorscheme', }}
NeoBundle 'nielsmadan/harlequin', { 'autoload':
	\ { 'unite_sources': 'colorscheme', }}
NeoBundle 'vim-scripts/vibrantink', { 'autoload':
	\ { 'unite_sources': 'colorscheme', }}
NeoBundle 'fabi1cazenave/kalahari.vim', { 'autoload':
	\ { 'unite_sources': 'colorscheme', }}
NeoBundle 'yantze/pt_black', { 'autoload':
	\ { 'unite_sources': 'colorscheme', }}
NeoBundle 'mkarmona/materialbox', { 'autoload':
    \ { 'unite_sources': 'colorscheme', }}
NeoBundle 'vim-scripts/moria', { 'autoload':
    \ { 'unite_sources': 'colorscheme', }}
NeoBundle 'loogica/vim_themes', { 'autoload':
    \ { 'unite_sources': 'colorscheme', }}
NeoBundle 'scheakur/vim-scheakur', { 'autoload':
    \ { 'unite_sources': 'colorscheme', }}

call neobundle#end()

" Required
filetype plugin indent on
NeoBundleCheck

colorscheme badwolf

"Neovim
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set clipboard+=unnamedplus

" delimitMate
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 0

" commentary
augroup plugin_commentary
    au!
    au FileType text setlocal commentstring=#\ %s
    " au FileType python setlocal commentstring=#\ %s
    " au FileType php setlocal commentstring=//\ %s
    " au FileType htmldjango setlocal commentstring={#\ %s\ #}
augroup END

" neomake
let g:neomake_list_height = 5
let g:neomake_open_list = 2
let g:neomake_python_enabled_makers = ['flake8']
let g:neomake_javascript_enabled_makers = ['jshint']
let g:neomake_php_enabled_makers = ['php']
let g:neomake_html_enabled_makers = ['html']

" deoplete
let g:deoplete#enable_at_startup = 1
set completeopt+=noinsert

" ag (silver searcher)
let g:ag_prg="ag --nogroup --nocolor --column --vimgrep"
let g:ag_highlight=1

" ctrlp - search through Most Recently Used by default
let g:ctrlp_cmd = "CtrlPMRU"

" Badwolf
let g:badwolf_darkgutter = 1
let g:badwolf_tabline = 3
let g:badwolf_css_props_highlight = 1

" javscript-libraries-syntax
let g:used_javascript_libs = 'jquery'

" javascript beautifier
let g:editorconfig_Beautifier = '/home/derek/.config/nvim/.editorconfig'

" vim-json
let g:vim_json_syntax_conceal = 0


" settings
syntax enable
set novb
set relativenumber number
set autochdir
set laststatus=2
set cursorline
set hidden
set showmatch
set noshowmode
set colorcolumn=80
set ts=4 sw=4 sts=4
set expandtab
set noswapfile
set nobackup
set undofile
set undoreload=1000
set viminfo='10,\"100,:200,%,n~/.config/nvim/viminfo
set fillchars+=vert:│              " better looking window separator


" mappings
let mapleader = "\<Space>"
" No need for ex mode
nnoremap Q <nop>
" don't record macros
map q <nop>
" exit insert, dd line, paste, insert
inoremap <c-d> <esc>ddpi
map <F2> :set invpaste paste?<CR>
map <F3> :nohlsearch<CR>
map <F7> :FixWhitespace<CR>
map <leader>c "+y
map <leader>p "+p
vmap <leader>c "+y
vmap <leader>p "+p
nnoremap <leader>r :redraw!<CR>
nmap <leader>t :FZF<CR>
map <leader>t :FZF<CR>
map <leader>te :tabedit
map <leader>tn :tabnew
nmap <leader>g <Plug>(EasyAlign)
xmap <leader>g <Plug>(EasyAlign)
nmap <leader>a :Ag<CR>
nmap <leader>A :Ag <cword><CR>
map <leader>b :call JsBeautify()<CR>
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>ya ggVG"zy
nnoremap ; :
tnoremap <ESC><ESC> <C-\><C-n>
cmap w!! w !sudo tee > /dev/null %

" commands
command! Clean %s/\s\+$//e | nohlsearch

" Restore cursor position on file load
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\	exe "normal g`\"" |
	\ endif

autocmd FileType python setlocal ts=4 sw=4 sts=4 expandtab autoindent
autocmd FileType php setlocal ts=8 sw=8 sts=8 noexpandtab
autocmd FileType javascript setlocal ts=4 sw=4 sts=4 expandtab autoindent

autocmd! BufWritePost * Neomake

" Open help in vertical split (right)
augroup vimrc_help
	autocmd!
	autocmd BufEnter *.txt if &buftype == 'help' | wincmd L | endif
augroup END


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
    return strftime("%b %d\ %I:%M")
endfunction

function! LightLineModified()
  return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightLineReadonly()
  return &ft !~? 'help' && &readonly ? 'RO' : ''
endfunction

function! LightLineFilename()
  let fname = expand('%:t')
  return fname == 'ControlP' ? g:lightline.ctrlp_item :
        \ ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
        \ ('' != fname ? fname : '[No Name]') .
        \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

function! LightLineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightLineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! LightLineFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! LightLineMode()
    let fname = expand('%:t')
    return fname == 'ControlP' ? 'CtrlP' :
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! CtrlPMark()
  if expand('%:t') =~ 'ControlP'
    call lightline#link('iR'[g:lightline.ctrlp_regex])
    return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
          \ , g:lightline.ctrlp_next], 0)
  else
    return ''
  endif
endfunction

let g:ctrlp_status_func = {
  \ 'main': 'CtrlPStatusFunc_1',
  \ 'prog': 'CtrlPStatusFunc_2',
  \ }

function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
  let g:lightline.ctrlp_regex = a:regex
  let g:lightline.ctrlp_prev = a:prev
  let g:lightline.ctrlp_item = a:item
  let g:lightline.ctrlp_next = a:next
  return lightline#statusline(0)
endfunction

function! CtrlPStatusFunc_2(str)
  return lightline#statusline(0)
endfunction

function! LightLineFugitive()
    if exists("*fugitive#head")
        let _ = fugitive#head()
        return strlen(_) ? ' ' ._ : ''
    endif
    return ''
endfunction
