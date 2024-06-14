-- file manager
vim.keymap.set("n", "<leader><Tab>", vim.cmd.Ex)

-- panels
vim.keymap.set("n", "<leader>v", vim.cmd.vnew)
vim.keymap.set("n", "<leader>h", vim.cmd.new)

-- save and close
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>w", vim.cmd.w)

-- finding files
local telescope_builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', function()
    telescope_builtin.grep_string({ search = vim.fn.input("grep >") })
end)

-- git
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- harpoon
local harpoon_mark = require("harpoon.mark")
vim.keymap.set("n", "<leader>a", harpoon_mark.add_file)

local harpoon_ui = require("harpoon.ui")
vim.keymap.set("n", "<C-l>", harpoon_ui.toggle_quick_menu)

-- terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("n", "<leader>>", vim.cmd.terminal)
