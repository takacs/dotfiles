vim.loader.enable()

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"


vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<leader>x", ":.lua<CR>")
vim.keymap.set("v", "<leader>x", ":lua<CR>")

-- Highlight when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.lsp.enable({
  -- lua
  "lua_ls",
  -- nix
  --
  --[[
  "nil_ls",
  "nixd",
  -- python
  "pyright",
  "ruff",
  -- markdown
  "ltex",
  -- terraform
  "terraformls",
  -- yaml
  "yamlls",
  -- bash
  "bashls"
  ]] --
})

require("config.lazy")
