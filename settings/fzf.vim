let g:fzf_tags_command = 'ctags -R'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"
command! -bang PF call fzf#vim#files('~/code/erezlife', <bang>0)

nnoremap <silent> <leader>rg :Rg<CR>

