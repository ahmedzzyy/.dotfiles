return {
	"nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local ts = require("nvim-treesitter")

        ts.install({
                "vimdoc",
				"javascript",
				"typescript",
                "json",
                "tsx",
				"c",
                "cpp",
				"lua",
				"python",
				"jsdoc",
				"bash",
				"go",
                "markdown"
        })

        vim.api.nvim_create_autocmd('FileType', {
            pattern = { '<filetype>' },
            callback = function()
                vim.treesitter.start()
                vim.bo.indentexpr = "v:lua.vim.treesitter.indentexpr()"
            end
        })
    end
}
