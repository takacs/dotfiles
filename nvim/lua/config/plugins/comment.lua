-- "Cmd+/" to comment visual regions/lines
return {
  "numToStr/Comment.nvim",
  keys = {
    { "<D-/>", "<Plug>(comment_toggle_linewise_current)", mode = "n", desc = "Toggle comment" },
    { "<D-/>", "<Plug>(comment_toggle_linewise_visual)",  mode = "v", desc = "Toggle comment" },
  },
  opts = {},
}
