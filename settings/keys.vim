" Keyboard mappings
let g:mapleader = "\<Space>"
nnoremap ; :
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>so :so $MYVIMRC<CR>
nnoremap <leader>w :w<CR>
tnoremap <ESC><ESC> <C-\><C-n>

nmap <leader>8 :TagbarToggle<CR>
nnoremap <Esc> :nohlsearch<CR>

" Telescope
nnoremap <leader>tf <cmd>Telescope find_files<CR>
nnoremap <leader>td <cmd>Telescope file_browser<CR>
nnoremap <leader>tg <cmd>Telescope live_grep<CR>
nnoremap <leader>tb <cmd>Telescope buffers<CR>
nnoremap <leader>th <cmd>Telescope help_tags<CR>
nnoremap <leader>ts <cmd>Telescope grep_string<CR>
nnoremap <leader>gf <cmd>Telescope git_files<CR>
nnoremap <leader>gc <cmd>Telescope git_commits<CR>
nnoremap <leader>gb <cmd>Telescope git_branches<CR>
nnoremap <leader>gs <cmd>Telescope git_status<CR>
nnoremap <silent><C-p> <cmd>Telescope oldfiles<CR>
nnoremap <leader>tr  :lua require'telescope'.extensions.frecency.frecency()<CR>
nnoremap <leader>tu <cmd>Telescope ultisnips ultisnips<CR>
nnoremap <leader>m <cmd>Telescope media_files<CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Quickly append semicolon or comma
imap ;; <Esc>A;<Esc>
imap ,, <Esc>A,<Esc>

" Toggle quickfix and location lists
nnoremap <leader><leader>q :call ToggleQuickfixList()<CR>
nnoremap <leader><leader>l :call ToggleLocationList()<CR>

" Up/Downcase the current word while in insert mode
inoremap <silent> <C-g>u <Esc>guawea
inoremap <silent> <C-g>U <Esc>gUawea

" Better tabbing
vnoremap < <gv
vnoremap > >gv

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
" Yank to end of line
nnoremap Y y$

inoremap <C-c> <esc>

" Black (because :Awk uses 'Black')
nnoremap <leader>b <cmd>call black#Black()<CR>

" Sort lines alphabetically
vnoremap <leader>s :sort<CR>

" mapping for nvim-compe when using delimitMate
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm({ 'keys': "\<Plug>delimitMateCR", 'mode': '' })
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<C-j>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" LSP
nnoremap <leader>gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <leader>gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <leader><c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <leader>K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <leader>gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <leader><c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>ws <cmd>lua vim.lsp.buf.add_workspace_folder()<CR>
nnoremap <leader>wr <cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>
nnoremap <leader>wl <cmd>lua print(vim.lsp.buf.list_workspace_folders())<CR>
nnoremap <leader>D <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <leader>gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <leader>e <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <leader>[d <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <leader>]d <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <leader>q <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>

" Harpoon
nnoremap <C-h> :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <C-m> :lua require("harpoon.mark").toggle_file()<CR>
nnoremap <leader>ha :lua require("harpoon.mark").add_file()<CR>
nnoremap <leader>hr :lua require("harpoon.mark").rm_file()<CR>
nnoremap <leader>hx :lua require("harpoon.mark").clear_all()<CR>
nnoremap <leader>hj :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <leader>hk :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <leader>hl :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <leader>h; :lua require("harpoon.ui").nav_file(4)<CR>
nnoremap <leader>h[ :lua require("harpoon.term").gotoTerminal(1)<CR>
nnoremap <leader>h] :lua require("harpoon.term").gotoTerminal(2)<CR>
