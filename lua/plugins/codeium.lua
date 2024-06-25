---@type LazySpec
return {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      vim.keymap.set("i", "<Ins>", function() return vim.fn["codeium#Accept"]() end, { expr = true })
      vim.keymap.set("i", "<PageUp>", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true })
      vim.keymap.set("i", "<PageDown>", function() return vim.fn["codeium#CycleCompletions"](-1) end, { expr = true })
      vim.keymap.set("i", "<Del>", function() return vim.fn["codeium#Clear"]() end, { expr = true })
      vim.keymap.set("i", "<End>", function() return vim.fn["codeium#Complete"]() end, { expr = true })
    end,
    lazy = false,
}
