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
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/ale.vim
source $HOME/.config/nvim/airline.vim
source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/colorscheme.vim
source $HOME/.config/nvim/ctrlp.vim
source $HOME/.config/nvim/functions.vim
source $HOME/.config/nvim/keys.vim
source $HOME/.config/nvim/fzf.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/python-mode.vim
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/vim-rooter.vim
source $HOME/.config/nvim/vimwiki.vim

