-- local sumneko_root_path = '/home/theprimeagen/personal/lua-language-server'
-- local sumneko_binary = sumneko_root_path .. "/bin/Linux/lua-language-server"
local sumneko_root_path = '/home/derek/compile/lua-language-server'
local sumneko_binary = sumneko_root_path .. "/bin/Linux/lua-language-server"

require'compe'.setup({
    enabled = true,
    autocomplete = true,
    source = {
        path = true,
        buffer = true,
        nvim_lsp = true,
        nvim_lua = true,
        tags = true,
        omni = true,
    },
})
require'lspconfig'.tsserver.setup{ on_attach=on_attach }

-- require'lspconfig'.clangd.setup {
--     on_attach = on_attach,
--     root_dir = function() return vim.loop.cwd() end
-- }

require'lspconfig'.pyls.setup{ on_attach=on_attach }
-- require'lspconfig'.gopls.setup{ on_attach=on_attach }
require'lspconfig'.rust_analyzer.setup{ on_attach=on_attach }
require'lspconfig'.solargraph.setup{ on_attach=on_attach }

require'lspconfig'.sumneko_lua.setup {
    on_attach = on_attach,
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = vim.split(package.path, ';'),
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'},
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = {
                    [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                    [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
                },
            },
        },
    },
}

require('gitsigns').setup {
    signs = {
        add          = {hl = 'GitGutterAdd'   , text = '+'},
        change       = {hl = 'GitGutterChange', text = '~'},
        delete       = {hl = 'GitGutterDelete', text = '_'},
        topdelete    = {hl = 'GitGutterDelete', text = '‾'},
        changedelete = {hl = 'GitGutterChange', text = '~'},
    },
}
