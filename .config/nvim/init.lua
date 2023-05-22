-- All the plugins
-- require("plugins")
--
local function notify(cmd)
    return string.format("<cmd>call VSCodeNotify('%s')<CR>", cmd)
end

-- Mappings
vim.g.mapleader = ","
if vim.g.vscode then
    -- VSCode
    vim.api.nvim_set_keymap("n", "<leader>w", ":Write<cr>", { noremap=true })
    -- zz
    --vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap=true })
    --vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap=true })

    vim.api.nvim_set_keymap("n", "<leader>f", notify "workbench.action.quickOpen", { silent = true }) -- find files
    vim.api.nvim_set_keymap("n", "<leader>e", notify "workbench.action.toggleSidebarVisibility", { silent = true }) -- find files
    vim.api.nvim_set_keymap("n", "<S-l>", notify "workbench.action.nextEditor", { silent = true }) -- find files
    vim.api.nvim_set_keymap("n", "<S-h>", notify "workbench.action.previousEditor", { silent = true }) -- find files
    vim.api.nvim_set_keymap("n", "<leader>c", notify "workbench.action.closeActiveEditor", { silent = true }) -- find files
else
    -- ordinary Neovim
end

