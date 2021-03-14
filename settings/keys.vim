" Keyboard mappings
let g:mapleader = "\<Space>"
nnoremap ; :
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>so :so $MYVIMRC<CR>
nnoremap <leader>w :w<CR>
tnoremap <ESC><ESC> <C-\><C-n>

map <F3> :nohlsearch<CR>
nmap <F8> :TagbarToggle<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>
nnoremap <leader>ft <cmd>Telescope git_files<CR>
nnoremap <leader>fs <cmd>Telescope grep_string<CR>
nnoremap <leader>gc <cmd>Telescope git_commits<CR>
nnoremap <leader>gb <cmd>Telescope git_branches<CR>
nnoremap <leader>gs <cmd>Telescope git_status<CR>
nnoremap <silent><C-p> <cmd>Telescope oldfiles<CR>
" nnoremap <silent> <C-p> :lua require'telescope'.extensions.frecency.frecency()<CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Uppercase word
nnoremap <C-u> gUaw<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" nmap <silent> <leader><space> :StripWhitespace<CR>

" Use alt+ arrow keys to resize windows
nnoremap <M-Down>  :resize -2<CR>
nnoremap <M-Up>    :resize +2<CR>
nnoremap <M-Left>  :vertical resize -5<CR>
nnoremap <M-Right> :vertical resize +5<CR>
nnoremap <M-0> :resize 100<CR>

" copy (yank)
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

inoremap <C-c> <esc>

"FZF
nnoremap <leader>h :History<CR>