return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons", -- optional, but recommended
	},
	lazy = false, -- neo-tree will lazily load itself

	config = function()
		require("neo-tree").setup({
			enable_git_status = true,
			enable_diagnostics = true,
			filesystem = {
				filtered_items = {
					hide_gitignored = false,
					hide_dotfiles = false,
					hide_ignored = false,
					hide_hidden = false,
				},
			},
		})
		vim.keymap.set("n", "<leader>e", "<Cmd>Neotree<CR>", { desc = "Focus File Explorer" })
		vim.keymap.set("n", "<leader>et", "<Cmd>Neotree toggle reveal<CR>", { desc = "Toggle File Explorer" })
		-- TODO add keymaps for collapse and maybe refresh later
	end,
}
