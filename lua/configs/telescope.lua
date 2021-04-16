
local vim = vim
local telescope = require("telescope")
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")
local M = {}

-- telescope.load_extension("fzy_native")
telescope.load_extension("fzf")
telescope.load_extension('ultisnips')
telescope.load_extension('media_files')

telescope.setup {
    defaults = {
        -- file_sorter = require('telescope.sorters').get_fzy_sorter,
        prompt_prefix = ' > ',
        color_devicons = true,

        file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

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
        fzf = {
            override_generic_sorter = false,
            override_file_sorter = true,
            case_mode = "smart_case",
        },
        -- fzy_native = {
        --     override_generic_sorter = false,
        --     override_file_sorter = true,
        -- },
        media_files = {
            filetypes = {"png", "webp", "jpg", "jpeg", "webm", "pdf", "mp4"},
            find_cmd = "rg" -- find command (defaults to `fd`)
        }
    }
}
local function generateOpts(opts)
  local common_opts = {
    preview_title = "Just look at it",
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
