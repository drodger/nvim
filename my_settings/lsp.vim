lua << EOF
    require 'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}
EOF

