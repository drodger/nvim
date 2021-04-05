local sumneko_root_path = '/home/derek/compile/lua-language-server'
local sumneko_binary = sumneko_root_path .. "/bin/Linux/lua-language-server"

local function lsp_map(mode, key_map, cmd)
    vim.api.nvim_buf_set_keymap(0, mode, key_map, cmd, {noremap=true})
end

local function default_on_attach(client)
    print("Attaching to " .. client.name)

    lsp_map('n', 'gd', ':lua vim.lsp.buf.definition()<CR>')
    lsp_map('n', '<leader>gD', ':lua vim.lsp.buf.declaration()<CR>')
    lsp_map('n', '<leader><c-]>',  ':lua vim.lsp.buf.definition()<CR>')
    lsp_map('n', '<leader>K',  ':lua vim.lsp.buf.hover()<CR>')
    lsp_map('n', '<leader>gi',  ':lua vim.lsp.buf.implementation()<CR>')
    lsp_map('n', '<leader><c-k>',  ':lua vim.lsp.buf.signature_help()<CR>')
    lsp_map('n', '<leader>af',  ':lua vim.lsp.buf.code_action()<CR>')
    lsp_map('n', '<leader>ws',  ':lua vim.lsp.buf.add_workspace_folder()<CR>')
    lsp_map('n', '<leader>wr',  ':lua vim.lsp.buf.remove_workspace_folder()<CR>')
    lsp_map('n', '<leader>wl',  ':lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')
    lsp_map('n', '<leader>D',  ':lua vim.lsp.buf.type_definition()<CR>')
    lsp_map('n', '<leader>rn',  ':lua vim.lsp.buf.rename()<CR>')
    lsp_map('n', '<leader>gr',  ':lua vim.lsp.buf.references()<CR>')
    lsp_map('n', '<leader>e',  ':lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
    lsp_map('n', '<leader>[d',  ':lua vim.lsp.diagnostic.goto_prev()<CR>')
    lsp_map('n', '<leader>]d',  ':lua vim.lsp.diagnostic.goto_next()<CR>')
    lsp_map('n', '<leader>q',  ':lua vim.lsp.diagnostic.set_loclist()<CR>')
end

local default_config = {
    on_attach = default_on_attach
}

-- local on_attach = require'compe'.on_attach
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
require'lspconfig'.tsserver.setup(default_config)

-- require'lspconfig'.clangd.setup {
--     default_config,
--     root_dir = function() return vim.loop.cwd() end
-- }

require("revj").setup{
    keymaps = {
        operator = '<Leader>J', -- for operator (+motion)
        line = '<Leader>j', -- for formatting current line
        visual = '<Leader>j', -- for formatting visual selection
    },
}
require'lspconfig'.pyls.setup(default_config)
-- require'lspconfig'.gopls.setup(default_config)
require'lspconfig'.rust_analyzer.setup(default_config)
require'lspconfig'.solargraph.setup(default_config)

require'lspconfig'.sumneko_lua.setup({
    default_config,
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
})

require('gitsigns').setup({
    signs = {
        add          = {hl = 'GitGutterAdd'   , text = '+'},
        change       = {hl = 'GitGutterChange', text = '~'},
        delete       = {hl = 'GitGutterDelete', text = '_'},
        topdelete    = {hl = 'GitGutterDelete', text = '‾'},
        changedelete = {hl = 'GitGutterChange', text = '~'},
    },
})

require'nvim-treesitter.configs'.setup({
  rainbow = {
    enable = true
  }
})

require'harpoon'.setup()

require('lspkind').init({
    -- with_text = true,
    -- symbol_map = {
    --   Text = '',
    --   Method = 'ƒ',
    --   Function = '',
    --   Constructor = '',
    --   Variable = '',
    --   Class = '',
    --   Interface = 'ﰮ',
    --   Module = '',
    --   Property = '',
    --   Unit = '',
    --   Value = '',
    --   Enum = '了',
    --   Keyword = '',
    --   Snippet = '﬌',
    --   Color = '',
    --   File = '',
    --   Folder = '',
    --   EnumMember = '',
    --   Constant = '',
    --   Struct = ''
    -- },
})

require'bufferline'.setup{
  options = {
    -- view = "multiwindow" | "default",
    -- numbers = "none" | "ordinal" | "buffer_id",
    -- number_style = "superscript" | "",
    -- mappings = true | false,
    -- buffer_close_icon= '',
    -- modified_icon = '●',
    close_icon = '',
    -- left_trunc_marker = '',
    -- right_trunc_marker = '',
    -- max_name_length = 18,
    -- max_prefix_length = 15, -- prefix used when a buffer is deduplicated
    -- tab_size = 18,
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict)
        local icon = level:match("error") and " " or " "
        return " " .. icon .. count
    end
    -- -- NOTE: this will be called a lot so don't do any heavy processing here
    -- custom_filter = function(buf_number)
    --   -- filter out filetypes you don't want to see
    --   if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
    --     return true
    --   end
    --   -- filter out by buffer name
    --   if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
    --     return true
    --   end
    --   -- filter out based on arbitrary rules
    --   -- e.g. filter out vim wiki buffer from tabline in your work repo
    --   if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
    --     return true
    --   end
    -- end,
    -- show_buffer_close_icons = true | false,
    -- show_close_icon = true | false,
    -- show_tab_indicators = true | false,
    -- persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    -- -- can also be a table containing 2 custom separators
    -- -- [focused and unfocused]. eg: { '|', '|' }
    -- separator_style = "slant" | "thick" | "thin" | { 'any', 'any' },
    -- enforce_regular_tabs = false | true,
    -- always_show_bufferline = true | false,
    -- sort_by = 'extension' | 'relative_directory' | 'directory' | function(buffer_a, buffer_b)
    --   -- add custom logic
    --   return buffer_a.modified > buffer_b.modified
    -- end
  }
}

-- Configuration
require('Navigator').setup({
    auto_save = 'current',
    disable_on_zoom = true
})

-- Keybindings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', "<A-h>", "<CMD>lua require('Navigator').left()<CR>", opts)
map('n', "<A-k>", "<CMD>lua require('Navigator').up()<CR>", opts)
map('n', "<A-l>", "<CMD>lua require('Navigator').right()<CR>", opts)
map('n', "<A-j>", "<CMD>lua require('Navigator').down()<CR>", opts)
map('n', "<A-p>", "<CMD>lua require('Navigator').previous()<CR>", opts)
