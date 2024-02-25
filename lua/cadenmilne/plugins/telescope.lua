return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set("n", "<Leader>fo", builtin.oldfiles, {})
        vim.keymap.set("n", "<Leader>fw", builtin.current_buffer_fuzzy_find, {})
    end
}
