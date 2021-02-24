" Setup package manager
" To perform initial install of minpac:
" mkdir -p ~/.config/nvim/pack/minpac/opt
" cd ~/.config/nvim/pack/minpac/opt
" git clone https://github.com/k-takata/minpac.git
" Start NeoVIM
" :packadd minpac
" :call minpac#init()
" Restart nvim
" :call minpac#update()
" Restart nvim

" plugins.vim must come first
source $HOME/.config/nvim/my_settings/plugins.vim
source $HOME/.config/nvim/my_settings/ale.vim
source $HOME/.config/nvim/my_settings/airline.vim
source $HOME/.config/nvim/my_settings/coc.vim
source $HOME/.config/nvim/my_settings/colorscheme.vim
source $HOME/.config/nvim/my_settings/functions.vim
source $HOME/.config/nvim/my_settings/keys.vim
source $HOME/.config/nvim/my_settings/fzf.vim " load after keys.vim
source $HOME/.config/nvim/my_settings/plug-config/rnvimr.vim
source $HOME/.config/nvim/my_settings/python-mode.vim
source $HOME/.config/nvim/my_settings/settings.vim
source $HOME/.config/nvim/my_settings/vim-rooter.vim
source $HOME/.config/nvim/my_settings/vimwiki.vim

