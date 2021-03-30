source $HOME/.config/nvim/settings/plugins.vim
source $HOME/.config/nvim/settings/colorscheme.vim
source $HOME/.config/nvim/settings/settings.vim
source $HOME/.config/nvim/settings/keys.vim
source $HOME/.config/nvim/settings/functions.vim
source $HOME/.config/nvim/settings/vimwiki.vim

if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1

lua require("configs")
lua require'nvim-treesitter.configs'.setup { highlight={ enable=true }, indent = { enable = true } }
luafile ~/.config/nvim/lua/plugins/galaxyline.lua
