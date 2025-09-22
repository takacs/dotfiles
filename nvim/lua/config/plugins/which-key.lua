-- Useful plugin to show you pending keybinds

return
{
  "folke/which-key.nvim",
  event = "VimEnter", -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require("which-key").setup()

    -- Document existing key chains (for layered commands)
    require("which-key").add({
      { "<leader>c", name = "[C]ode" },
      { "<leader>d", name = "[D]ocument" },
      { "<leader>g", name = "[G]it" },
      { "<leader>r", name = "[R]ename" },
      { "<leader>s", name = "[S]earch" },
      { "<leader>t", name = "[T]oggle" },
      { "<leader>w", name = "[W]orkspace" },
    })
  end,
}
