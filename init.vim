source $HOME/.config/nvim/settings/plugins.vim
source $HOME/.config/nvim/settings/colorscheme.vim
source $HOME/.config/nvim/settings/settings.vim
source $HOME/.config/nvim/settings/keys.vim
source $HOME/.config/nvim/settings/fzf.vim
source $HOME/.config/nvim/settings/functions.vim
source $HOME/.config/nvim/settings/vimwiki.vim

" lua require("config")
let g:vim_be_good_log_file = 1
let g:vim_apm_log = 1

if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1

lua require("configs")
lua require'nvim-treesitter.configs'.setup { highlight={ enable=true }, indent = { enable = true } }

" Use completion-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()
