lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.pyls.setup{ on_attach=require'completion'.on_attach }

" without this, code completion fails to work:
lua <<EOF
    require'nvim-treesitter.configs'.setup {
        ensure_installed = "maintained", -- one of "all", "maintained"  (parsers with maintainers), or a list of languages
        highlight = {
            enable = true,
        },
        incremental_selection = {
            enable = true,
        },
        indent = {
            enable = true,
        },
    }
EOF

" Use completion-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()

