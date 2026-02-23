vim.opt.relativenumber = true
vim.opt.number = true

-- tabs & indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true -- expand tab to spaces

vim.opt.smartindent = true

-- search settings
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true -- if included mixed case, assumes case-sensitive
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- visual ui
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80" -- 80-char vertical ruler
vim.opt.scrolloff = 8

-- file behavior
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true

-- perfomance n misc
vim.opt.updatetime = 320
vim.opt.isfname:append("@-@")
