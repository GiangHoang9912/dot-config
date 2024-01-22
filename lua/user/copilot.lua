-- setting copilot
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', {
    silent = true,
    expr = true
})
vim.api.nvim_set_keymap("i", "<C-H>", 'copilot#Previous()', {
    silent = true,
    expr = true
})
vim.api.nvim_set_keymap("i", "<C-K>", 'copilot#Next()', {
    silent = true,
    expr = true
})
vim.api.nvim_set_keymap("i", "<C-L>", 'copilot#Cancel()', {
    silent = true,
    expr = true
})
vim.api.nvim_set_keymap("i", "<C-Space>", 'copilot#Trigger()', {
    silent = true,
    expr = true
})

vim.g.copilot_filetypes = {
    ["*"] = false,
    ["javascript"] = true,
    ["typescript"] = true,
    ["lua"] = false,
    ["rust"] = true,
    ["c"] = true,
    ["c#"] = true,
    ["c++"] = true,
    ["go"] = true,
    ["python"] = true
}

-- setting multiple cursors
vim.g.multi_cursor_start_word_key = '<C-n>'
vim.g.multi_cursor_select_all_word_key = '<A-n>'
vim.g.multi_cursor_start_key = '<C-n>'
vim.g.multi_cursor_select_all_key = '<A-n>'
vim.g.multi_cursor_next_key = '<C-n>'
vim.g.multi_cursor_prev_key = '<C-p>'
vim.g.multi_cursor_skip_key = '<C-x>'
vim.g.multi_cursor_quit_key = '<Esc>'
vim.g.multi_cursor_start_key = '<C-n>'
