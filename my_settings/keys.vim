" Keyboard mappings
let g:mapleader = "\<Space>"
nnoremap ; :
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nnoremap <leader>w :w<CR>
cmap w!! w !sudo tee > /dev/null %
tnoremap <ESC><ESC> <C-\><C-n>

map <F2> :set invpaste paste?
map <F3> :nohlsearch<CR>
map <F4> :Guifont DejaVu Sans Mono:h18<CR>
nmap <F8> :TagbarToggle<CR>

map <leader>c "+y
map <leader>p "+p
vmap <leader>c "+y
vmap <leader>p "+p

" Close quicklist
nmap <leader>l :lclose<CR> :cclose<CR>

" Bring up ranger - file explorer
nnoremap <leader>ra :RnvimrToggle<CR>

" Uppercase word
nnoremap <C-u> gUaw<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

nmap <silent> <leader><space> :StripWhitespace<CR>
nmap <leader>j :%!python -m json.tool<CR>
nnoremap <leader>s :%s//g<left><left>
nnoremap <silent> <leader>fb :Black<CR>

" Use alt+ arrow keys to resize windows
nnoremap <M-Down>  :resize -2<CR>
nnoremap <M-Up>    :resize +2<CR>
nnoremap <M-Left>  :vertical resize -2<CR>
nnoremap <M-Right> :vertical resize +2<CR>

" Show git commit message
nmap <Leader>m <Plug>(git-messenger)

" lsp code completion
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
imap <tab> <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
