" Restore cursor position on file load
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

" Open help in vertical split (right)
augroup vimrc_help
    autocmd!
    autocmd BufEnter *.txt if &buftype == 'help' | wincmd L | endif
augroup END

if executable('pyls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'allowlist': ['python'],
        \ 'workspace_config': {
        \    'pyls':
        \        {'configurationSources': ['flake8'],
        \         'plugins': {'flake8': {'enabled': v:true},
        \                     'pyflakes': {'enabled': v:false},
        \                     'pycodestyle': {'enabled': v:false},
        \                    }
        \        }
        \ }})
endif
