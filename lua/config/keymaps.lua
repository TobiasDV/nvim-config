-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Toggle terminal consistently across all modes (<C-_> is how some terminals send <C-/>)
for _, mode in ipairs({ "n", "i", "v", "t" }) do
  vim.keymap.set(mode, "<C-/>", function() Snacks.terminal.focus(nil, { cwd = LazyVim.root() }) end, { desc = "Terminal (Root Dir)" })
  vim.keymap.set(mode, "<C-_>", function() Snacks.terminal.focus(nil, { cwd = LazyVim.root() }) end, { desc = "which_key_ignore" })
end
