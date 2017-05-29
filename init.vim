set runtimepath+=$HOME/.config/nvim/repos/github.com/Shougo/dein.vim
set runtimepath+=~/.fzf

call dein#begin(expand('~/.cache/dein'))

call dein#add('Shougo/dein.vim')

" plugins
call dein#add('Raimondi/delimitMate')
call dein#add('tpope/vim-commentary')

call dein#add('tpope/vim-surround')
call dein#add('coderifous/textobj-word-column.vim')	" operate on columns of code
call dein#add('junegunn/vim-easy-align')
call dein#add('bronson/vim-trailing-whitespace')
call dein#add('valloric/matchtagalways')
" Async
" call dein#add('benekastah/neomake')
call dein#add('w0rp/ale')
" Navigate
call dein#add('christoomey/vim-tmux-navigator')
" Status lines/info
call dein#add('tpope/vim-fugitive')
call dein#add('mhinz/vim-signify')
call dein#add('junegunn/gv.vim')
call dein#add('manicmaniac/betterga')	" show details of character under cursor
call dein#add('gorodinskiy/vim-coloresque') " preview colors
call dein#add('junegunn/rainbow_parentheses.vim')

if has('macunix')
    call dein#add('bling/vim-airline')
else
    call dein#add('itchyny/lightline.vim')
endif

" Navigate
call dein#add('christoomey/vim-tmux-navigator')

" Find stuff
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('junegunn/fzf')
call dein#add('rking/ag.vim')
call dein#add('Shougo/deoplete.nvim')
" Syntax
call dein#add('pearofducks/ansible-vim')
call dein#add('othree/yajs.vim')
call dein#add('othree/html5.vim')
call dein#add('maksimr/vim-jsbeautify')
call dein#add('elzr/vim-json')
call dein#add('hail2u/vim-css3-syntax')
call dein#add('1995eaton/vim-better-javascript-completion')
call dein#add('klen/python-mode')
call dein#add('mxw/vim-jsx')
call dein#add('pangloss/vim-javascript')
call dein#add('othree/javascript-libraries-syntax.vim')
call dein#add('vim-scripts/VimClojure')
call dein#add('ryanoasis/vim-devicons')

" Color schemes
call dein#add('trusktr/seti.vim')
call dein#add('romainl/flattened')
call dein#add('sjl/badwolf')
call dein#add('joedicastro/vim-molokai256')
call dein#add('fcevado/molokai_dark')
call dein#add('cschlueter/vim-wombat')
call dein#add('altercation/vim-colors-solarized')
call dein#add('Lokaltog/vim-distinguished')
call dein#add('vim-scripts/mayansmoke')
call dein#add('vim-scripts/herald.vim')
call dein#add('vim-scripts/moria')
call dein#add('vim-scripts/Spacegray.vim')
call dein#add('vim-scripts/twilight256.vim')
call dein#add('vim-scripts/less.vim')
call dein#add('DrSpatula/vim-buddy')
call dein#add('evgenyzinoviev/vim-vendetta')
call dein#add('reinecke/vim-cgpro')
call dein#add('rking/vim-detailed')
call dein#add('nielsmadan/harlequin')
call dein#add('vim-scripts/vibrantink')
call dein#add('fabi1cazenave/kalahari.vim')
call dein#add('yantze/pt_black')
call dein#add('mkarmona/materialbox')
call dein#add('vim-scripts/moria')
call dein#add('loogica/vim_themes')
call dein#add('scheakur/vim-scheakur')
call dein#add('AlessandroYorba/Alduin')

call dein#end()

filetype plugin indent on

if dein#check_install()
    call dein#check_install()
endif

" call dein#update()

colorscheme badwolf

" Tmux truecolor
if has('termguicolors')
    set termguicolors
endif

"Neovim
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0
set clipboard+=unnamedplus
let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'


" delimitMate
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 0

" commentary
augroup plugin_commentary
    au!
    au FileType text setlocal commentstring=#\ %s
    " au FileType python setlocal commentstring=#\ %s
    " au FileType php setlocal commentstring=//\ %s
    " au FileType htmldjango setlocal commentstring={#\ %s\ #}
augroup END

" neomake
" let g:neomake_list_height = 5
" let g:neomake_open_list = 2
" let g:neomake_logfile='/tmp/neomake_error.log'
" let g:neomake_python_enabled_makers = ['flake8']
" " let g:neomake_javascript_enabled_makers = ['eslint']
" let g:neomake_jsx_enabled_makers = ['eslint']
" let g:neomake_php_enabled_makers = ['php']
" let g:neomake_html_enabled_makers = ['html']
" let g:neomake_javascript_jscs_maker = {
"     \ 'exe': 'jscs',
"     \ 'args': ['--nocolor', '--preset', 'airbnb', '--reporter', 'inline', '--esnext'],
"     \ 'errorformat': '%f: line %l\, col %c\, %m',
"     \ }
" let g:neomake_javascript_enabled_makers = ['eslint']

" deoplete
let g:deoplete#enable_at_startup = 1
set completeopt+=noinsert

" ag (silver searcher)
let g:ag_prg='ag --nogroup --nocolor --column --vimgrep'
let g:ag_highlight=1

" ctrlp - search through Most Recently Used by default
let g:ctrlp_cmd = 'CtrlPMRU'

" Badwolf
let g:badwolf_darkgutter = 1
let g:badwolf_tabline = 3
let g:badwolf_css_props_highlight = 1

" javscript-libraries-syntax
let g:used_javascript_libs = 'jquery'

" javascript beautifier
if has('macunix')
    let g:editorconfig_Beautifier = '/Users/derek/.config/nvim/.editorconfig'
else
    let g:editorconfig_Beautifier = '/home/derek/.config/nvim/.editorconfig'
endif

" vim-json
let g:vim_json_syntax_conceal = 0

" pymode
let g:pymode_folding = 0
let g:pymode_doc = 0
let g:pymode_virtualenv = 1
let g:pymode_rope = 0

" webdevicons
let g:webdevicons_enable = 1
let g:webdevicons_enable_ctrlp = 1

" Rainbow
call rainbow_parentheses#activate()

" settings
syntax enable
set novisualbell
set relativenumber number
set autochdir
set laststatus=2
set cursorline
set hidden
set showmatch
set noshowmode
set colorcolumn=80
set tabstop=4 shiftwidth=4 softtabstop=4
set expandtab
set noswapfile
set nobackup
set undofile
set undoreload=1000
set viminfo='10,\"100,:200,%,n~/.config/nvim/viminfo
set fillchars+=vert:│              " better looking window separator


" mappings
let g:mapleader = "\<Space>"
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
nmap <leader>l :lclose<CR>
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

" autocmd FileType python setlocal ts=4 sw=4 sts=4 expandtab autoindent
" autocmd FileType php setlocal ts=4 sw=4 sts=4 noexpandtab
" autocmd FileType javascript setlocal ts=4 sw=4 sts=4 expandtab autoindent

" autocmd! BufWritePost * Neomake

" Open help in vertical split (right)
augroup vimrc_help
	autocmd!
	autocmd BufEnter *.txt if &buftype == 'help' | wincmd L | endif
augroup END

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
    return strftime('%b %d\ %I:%M')
endfunction

function! LightLineModified()
  return &filetype =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightLineReadonly()
  return &filetype !~? 'help' && &readonly ? 'RO' : ''
endfunction

function! LightLineFilename()
  let l:fname = expand('%:t')
  return l:fname == 'ControlP' ? g:lightline.ctrlp_item :
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
    if exists('*fugitive#head')
        let l:_ = fugitive#head()
        return strlen(l:_) ? ' ' .l:_ : ''
    endif
    return ''
endfunction

function! <SID>StripTrailingWhitespace()
    " Preparation: save last search, and cursor position.
    let l:_s=@/
    let l:l = line('.')
    let l:c = col('.')
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=l:_s
    call cursor(l:l, l:c)
endfunction
nmap <silent> <Leader><space> :call <SID>StripTrailingWhitespace()<CR>
