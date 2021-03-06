" Keyboard mappings
let g:mapleader = "\<Space>"
nnoremap ; :
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>so :so $MYVIMRC<CR>
nnoremap <leader>w :w<CR>
tnoremap <ESC><ESC> <C-\><C-n>

nnoremap <Esc> :nohlsearch<CR>
nnoremap <F5> :lua package.loaded.configs = nil<cr>:source ~/.config/nvim/init.vim<cr>

" Telescope
nnoremap <leader>tf <cmd>lua require('configs.telescope').find_files()<CR>
nnoremap <leader>tdf <cmd>lua require('configs.telescope').search_dotfiles()<CR>
nnoremap <leader>tc <cmd>lua require('configs.telescope').colors()<CR>
nnoremap <leader>tb <cmd>Telescope file_browser<CR>
nnoremap <leader>tg <cmd>Telescope live_grep<CR>
" nnoremap <leader>tb <cmd>Telescope buffers<CR>
nnoremap <leader>th <cmd>lua require('configs.telescope').help_tags()<CR>
nnoremap <leader>ts <cmd>Telescope grep_string<CR>
nnoremap <leader>gf <cmd>Telescope git_files<CR>
nnoremap <leader>gc <cmd>Telescope git_commits<CR>
nnoremap <leader>gb <cmd>Telescope git_branches<CR>
nnoremap <leader>gs <cmd>Telescope git_status<CR>
nnoremap <silent><C-p> <cmd>Telescope oldfiles<CR>
nnoremap <leader>tu <cmd>Telescope ultisnips ultisnips<CR>
nnoremap <leader>m <cmd>Telescope media_files<CR>
" nnoremap <leader>td <cmd>lua require('telescope.themes').get_dropdown()<CR>
" require'telescope.builtin'.lsp_code_actions(require('telescope.themes').get_dropdown())

" NvimTree
nnoremap <leader>tt :NvimTreeToggle<CR>
nnoremap <leader>tr :NvimTreeRefresh<CR>
nnoremap <leader>tn :NvimTreeFindFile<CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Quickly append semicolon or comma
nnoremap ;; <Esc>A;<Esc>
nnoremap ,, <Esc>A,<Esc>

" Toggle quickfix and location lists
nnoremap <leader><leader>q :call ToggleQuickfixList()<CR>
nnoremap <leader><leader>l :call ToggleLocationList()<CR>

nnoremap <leader>ww :StripWhitespace<CR>

" Up/Downcase the current word while in insert mode
nnoremap <silent> <C-g>u <Esc>guawea
nnoremap <silent> <C-g>U <Esc>gUawea

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" increment numbers
nmap <C-a> <Plug>(dial-increment)
nmap <C-x> <Plug>(dial-decrement)
vmap <C-a> <Plug>(dial-increment)
vmap <C-x> <Plug>(dial-decrement)
vmap g<C-a> <Plug>(dial-increment-additional)
vmap g<C-x> <Plug>(dial-decrement-additional)

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

" Black (because python-mode and Ack uses 'Black')
" nnoremap <leader>fb <cmd>call black#Black()<CR>
nnoremap <leader>b <cmd>:Black<CR>

" Sort lines alphabetically
vnoremap <leader>s :sort<CR>

" bufferline
nnoremap <leader>bl :BufferLinePick<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<C-j>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Harpoon
nnoremap <leader>hh :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <leader>ht :lua require("harpoon.mark").toggle_file()<CR>
nnoremap <leader>ha :lua require("harpoon.mark").add_file()<CR>
nnoremap <leader>hr :lua require("harpoon.mark").rm_file()<CR>
nnoremap <leader>hn :lua require("harpoon.ui").nav_next()<CR>
nnoremap <leader>hp :lua require("harpoon.ui").nav_prev()<CR>
nnoremap <leader>hx :lua require("harpoon.mark").clear_all()<CR>
nnoremap <leader>mj :lua require("harpoon.mark").set_current_at(1)<CR>
nnoremap <leader>mk :lua require("harpoon.mark").set_current_at(2)<CR>
nnoremap <leader>ml :lua require("harpoon.mark").set_current_at(3)<CR>
nnoremap <leader>m; :lua require("harpoon.mark").set_current_at(4)<CR>
" nnoremap <leader>1 :lua require("harpoon.ui").close_menu_and_nav_file(1)<CR>
" nnoremap <leader>2 :lua require("harpoon.ui").close_menu_and_nav_file(2)<CR>
" nnoremap <leader>3 :lua require("harpoon.ui").close_menu_and_nav_file(3)<CR>
" nnoremap <leader>4 :lua require("harpoon.ui").close_menu_and_nav_file(4)<CR>
" nnoremap <leader>5 :lua require("harpoon.ui").close_menu_and_nav_file(5)<CR>
" nnoremap <leader>6 :lua require("harpoon.ui").close_menu_and_nav_file(6)<CR>
" nnoremap <leader>7 :lua require("harpoon.ui").close_menu_and_nav_file(7)<CR>
" nnoremap <leader>8 :lua require("harpoon.ui").close_menu_and_nav_file(8)<CR>
" nnoremap <leader>9 :lua require("harpoon.ui").close_menu_and_nav_file(9)<CR>
nnoremap <leader>h1 :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <leader>h2 :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <leader>h3 :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <leader>h4 :lua require("harpoon.ui").nav_file(4)<CR>
nnoremap <leader>h5 :lua require("harpoon.ui").nav_file(5)<CR>
nnoremap <leader>h6 :lua require("harpoon.ui").nav_file(6)<CR>
nnoremap <leader>h7 :lua require("harpoon.ui").nav_file(7)<CR>
nnoremap <leader>h8 :lua require("harpoon.ui").nav_file(8)<CR>
nnoremap <leader>h9 :lua require("harpoon.ui").nav_file(9)<CR>
nnoremap <leader>hr1 :lua require("harpoon.mark").rm_file(1)<CR>
nnoremap <leader>hr2 :lua require("harpoon.mark").rm_file(2)<CR>
nnoremap <leader>hr3 :lua require("harpoon.mark").rm_file(3)<CR>
nnoremap <leader>hr4 :lua require("harpoon.mark").rm_file(4)<CR>
nnoremap <leader>h[ :lua require("harpoon.term").gotoTerminal(1)<CR>
nnoremap <leader>h] :lua require("harpoon.term").gotoTerminal(2)<CR>
