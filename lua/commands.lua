local function bd(_)
	require("mini.bufremove").delete(0, false)
end

local function bdforce()
	require("mini.bufremove").delete(0, true)
end

local function rg(opts)
	-- 这里引用了telescope，就算telescope没有被load，也会自动load，lazy.nvim的功劳
	require("telescope.builtin").grep_string({ search = opts.args, disable_coordinates = true })
end

vim.api.nvim_create_user_command("Bd", bd, {})
vim.api.nvim_create_user_command("BD", bdforce, {})
vim.api.nvim_create_user_command("Mkdn2HTML", require("markdown").cToHTML, {})
vim.api.nvim_create_user_command("Mkdn2HTMLBrowse", require("markdown").cToHTMLOpen, {})
vim.api.nvim_create_user_command("Mkdn2HTMLAll", require("markdown").allToHTML, {})
vim.api.nvim_create_user_command("MkdnBrowse", require("markdown").browse, {})
vim.api.nvim_create_user_command("English", require("input").switchEnglish, {})
vim.api.nvim_create_user_command("Chinese", require("input").switchChinese, {})
vim.api.nvim_create_user_command("Rg", rg, { nargs = 1, force = true })

vim.api.nvim_command("augroup Markdown")
vim.api.nvim_command("autocmd!")
vim.api.nvim_command("autocmd FileType markdown setlocal colorcolumn=80")
vim.api.nvim_command("augroup Markdown")