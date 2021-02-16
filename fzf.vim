" fzf
let g:fzf_tags_command = 'ctags -R'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"

nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>t :Tags<CR>
nnoremap <silent> <leader>fb :Black<CR>
nnoremap <silent> <leader>g :Rg<CR>

