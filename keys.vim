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
nnoremap <silent> <C-p> :History<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>ra :RnvimrToggle<CR>
tnoremap <ESC><ESC> <C-\><C-n>
" Uppercase word
nnoremap <C-u> gUaw<CR>
" Better tabbing
vnoremap < <gv
vnoremap > >gv
cmap w!! w !sudo tee > /dev/null %
nmap <silent> <leader><space> :StripWhitespace<CR>
nmap <leader>j :%!python -m json.tool<CR>
map <F4> :Guifont DejaVu Sans Mono:h16<CR>

" Use alt+ arrow keys to resize windows
nnoremap <M-Down>  :resize -2<CR>
nnoremap <M-Up>    :resize +2<CR>
nnoremap <M-Left>  :vertical resize -2<CR>
nnoremap <M-Right> :vertical resize +2<CR>

