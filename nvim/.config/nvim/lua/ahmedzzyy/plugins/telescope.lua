return {
    'nvim-telescope/telescope.nvim',
    -- branch = "0.2.x",
    version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
        local telescope = require("telescope")

        telescope.setup({
            defaults = {
                path_display = { "smart" }
            }
        })

        telescope.load_extension("fzf")

        local builtin = require('telescope.builtin')
        vim.keymap.set(
            'n', '<leader>ff', builtin.find_files,
            { desc = 'Fuzzy find files in cwd' }
        )
        vim.keymap.set(
            "n", "<leader>fr", builtin.oldfiles,
            { desc = "Fuzzy find recent files" }
        )
        vim.keymap.set(
            'n', '<leader>fg', builtin.live_grep,
            { desc = 'Find string in cwd live grep' }
        )
        vim.keymap.set(
            'n', '<leader>fb', builtin.buffers,
            { desc = 'Telescope buffers' }
        )
        vim.keymap.set(
            'n', '<leader>fh', builtin.help_tags,
            { desc = 'Telescope help tags' }
        )
    end
}
