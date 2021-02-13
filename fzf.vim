" fzf
let g:fzf_tags_command = 'ctags -R'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"

nmap <silent> <leader>f :Files<CR>
nmap <silent> <leader>b :Buffers<CR>
nmap <silent> <leader>t :Tags<CR>
nmap <silent> <leader>fb :Black<CR>
nnoremap <leader>g :Rg<CR>

