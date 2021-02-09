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
call minpac#add('psf/black')
call minpac#add('python-mode/python-mode')
call minpac#add('Raimondi/delimitMate')
call minpac#add('ryanoasis/vim-devicons')
call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
call minpac#add('preservim/nerdtree')
call minpac#add('sjl/badwolf')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-jdaddy')
call minpac#add('tpope/vim-surround')
call minpac#add('universal-ctags/ctags')
call minpac#add('valloric/matchtagalways')
call minpac#add('vimwiki/vimwiki')
" call minpac#add('w0rp/ale')
call minpac#add('dense-analysis/ale')

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
" let g:ale_completion_enabled = 1

" Use Markdown for vimwiki
let g:vimwiki_list = [{'path': '~/private/notes/', 'syntax': 'markdown',
                      \ 'ext': '.md'}]
let g:vimwiki_hl_headers = 1
let g:vimwiki_hl_cb_checked = 1

" fzf
let g:fzf_tags_command = 'ctags -R'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"

" Black python formatter

" build ctags:
" From within something like erezlife/
" ctags --languages=python,javascript --python-kinds=-vi --tag-relative=yes -f ./tags -R --fields=+iaSszt --extras=+q ./

" Specify version of python to use
if filereadable(expand("~/.config/nvim/venv/bin/python3"))
    let g:python3_host_prog = expand("~/.config/nvim/venv/bin/python3")
    let g:python_host_prog = expand("~/.config/nvim/venv/bin/python3")
else
    let g:python3_host_prog = '/usr/local/bin/python3.7'
    let g:python_host_prog = '/usr/local/bin/python3.7'
endif
let g:python2_host_prog = '/usr/bin/python2.7'

" Install python 3.7 under ubuntu
" wget https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tar.xz
" ./configure
" make -j4
" Don't clobber the system Python:
" sudo make altinstall

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
set mouse=a                         " enable mouse in neovim
" settings for coc.vim
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
set termguicolors

" because I always type it wrong:
iab teh the
iab thsi this

inoremap <silent><expr> <TAB>
    \ pumvisible() ? "<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~# '\s'
endfunction

" use <c-space> to trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)


augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Keyboard mappings
let g:mapleader = "\<Space>"
map <F2> :set invpaste paste?
map <F3> :nohlsearch<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap ; :
map <leader>c "+y
map <leader>p "+p
map <C-n> :NERDTreeToggle<CR>
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
nmap <silent> <leader>fb :Black<CR>
tnoremap <ESC><ESC> <C-\><C-n>
cmap w!! w !sudo tee > /dev/null %
nmap <silent> <leader><space> :StripWhitespace<CR>
nmap <leader>j :%!python -m json.tool<CR>
map <F4> :Guifont DejaVu Sans Mono:h14<CR>

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
" autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANTE: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" Set shell to use in terminal
set shell=/usr/bin/zsh

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
    \   'gitbranch': 'fugitive#head',
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
