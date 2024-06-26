return {
  -- -- Disable telescope
  -- {
  --   "nvim-telescope/telescope.nvim",
  --   requires = {
  --     { "nvim-lua/plenary.nvim" },
  --     { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
  --   },
  --   config = function()
  --     local telescope = require("telescope")
  --     local actions = require("telescope.actions")
  --
  --     -- Check if the current directory is a Git repository
  --     local function is_git_repo()
  --       local handle = io.popen("git rev-parse --is-inside-work-tree 2>/dev/null")
  --       local result = handle:read("*a")
  --       handle:close()
  --       return result:match("true")
  --     end
  --
  --     -- configure telescope
  --     telescope.setup({
  --       -- configure custom mappings
  --       defaults = {
  --         mappings = {
  --           i = {
  --             ["<C-p>"] = actions.move_selection_previous, -- Ctrl + p to move to previous result
  --             ["<C-n>"] = actions.move_selection_next, -- Ctrl + n to move to next result
  --             ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- Ctrl + q send selected to quickfixlist
  --           },
  --         },
  --       },
  --       extensions = {
  --         fzf = {
  --           fuzzy = true, -- false will only do exact matching
  --           override_generic_sorter = true, -- override the generic sorter
  --           override_file_sorter = true, -- override the file sorter
  --           case_mode = "smart_case", -- or "ignore_case" or "respect_case"
  --           -- the default case_mode is "smart_case"
  --         },
  --       },
  --     })
  --     telescope.load_extension("fzf")
  --
  --     -- Create custom Telescope commands with Git repo check
  --     local builtin = require("telescope.builtin")
  --
  --     vim.api.nvim_create_user_command("TelescopeGitFiles", function()
  --       if is_git_repo() then
  --         builtin.git_files()
  --       else
  --         print("Not a git repository")
  --       end
  --     end, {})
  --
  --     vim.api.nvim_create_user_command("TelescopeGitStatus", function()
  --       if is_git_repo() then
  --         builtin.git_status()
  --       else
  --         print("Not a git repository")
  --       end
  --     end, {})
  --
  --     vim.api.nvim_create_user_command("TelescopeGitCommits", function()
  --       if is_git_repo() then
  --         builtin.git_commits()
  --       else
  --         print("Not a git repository")
  --       end
  --     end, {})
  --
  --     vim.api.nvim_create_user_command("TelescopeGitBCommits", function()
  --       if is_git_repo() then
  --         builtin.git_bcommits()
  --       else
  --         print("Not a git repository")
  --       end
  --     end, {})
  --
  --     vim.api.nvim_create_user_command("TelescopeGitBranches", function()
  --       if is_git_repo() then
  --         builtin.git_branches()
  --       else
  --         print("Not a git repository")
  --       end
  --     end, {})
  --   end,
  -- },
}
