
local vim = vim
local telescope = require("telescope")
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")
local M = {}

telescope.load_extension("fzy_native")
telescope.load_extension('ultisnips')
telescope.load_extension('media_files')

telescope.setup {
    defaults = {
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        prompt_prefix = ' > ',
        color_devicons = true,

        -- file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
        -- grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
        -- qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

        mappings = {
            i = {
                ["<Esc>"] = actions.close,
                ["<C-x>"] = false,
                ["<CR>"] = actions.select_default,
                ["<C-q>"] = actions.send_to_qflist,
            },
        }
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        },
        media_files = {
            -- filetypes whitelist
            -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
            filetypes = {"png", "webp", "jpg", "jpeg", "webm", "pdf", "mp4"},
            find_cmd = "rg" -- find command (defaults to `fd`)
        }
    }
}



            -- map(mode, key, lua function to call)
            --
            -- good place to look: telescope.actions (init.lua)
            -- lua function to call:  (gets bufnr, not necessarily needed)
            --   require('telescope.actions.state').get_selected_entry(bufnr)
            --   Actions just take the bufnr and give out information
            --   require('telescope.actions').close(bufnr)
            --
            --   check out telescope.actions for _all the available_ supported
            --   actions.
            --
            --   :h telescope.setup ->
            --   :h telescope.builtin ->
            --   :h telescope.layout ->
            --   :h telescope.actions

-- telescope.setup({
--   extensions = {
--     media_files = {
--       -- filetypes whitelist
--       -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
--       filetypes = {"png", "webp", "jpg", "jpeg", "webm", "pdf", "mp4"},
--       find_cmd = "rg" -- find command (defaults to `fd`)
--     }
--   },
-- })
local function generateOpts(opts)
  local common_opts = {
    layout_strategy = "center",
    sorting_strategy = "ascending",
    results_title = false,
    preview_title = "Premiew",
    previewer = false,
    width = 80,
    results_height = 15,
    borderchars = {
      {"─", "│", "─", "│", "╭", "╮", "╯", "╰"},
      prompt = {"─", "│", " ", "│", "╭", "╮", "│", "│"},
      results = {"─", "│", "─", "│", "├", "┤", "╯", "╰"},
      preview = {"─", "│", "─", "│", "╭", "╮", "╯", "╰"}
    }
  }
  return vim.tbl_extend("force", opts, common_opts)
end
function M.colors()
  local opts = generateOpts({})
  builtin.colorscheme(opts)
end
function M.find_files()
  local cmn_opts = generateOpts({})
  cmn_opts.find_command = {"rg", "--files", "-L", "--glob", "!.git"}
  builtin.find_files(cmn_opts)
end
function M.help_tags()
  local opts = generateOpts({})
  builtin.help_tags(opts)
end
function M.search_dotfiles()
    builtin.find_files({
        prompt_title = "< VimRC >",
        cwd = "$HOME/.config/nvim/",
    })
end
return M
