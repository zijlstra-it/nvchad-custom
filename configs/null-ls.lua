local present, null_ls = pcall(require, "null-ls")

if not present then
	return
end

local b = null_ls.builtins

-- to setup format on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local sources = {

	-- webdev stuff
	b.formatting.prettier.with({ filetypes = { "html", "css", "yaml", "json", "markdown" } }),

	-- Lua
	b.formatting.stylua,

	-- Shell
	b.formatting.shfmt,
	-- b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

	-- python
	b.formatting.black,

	-- terraform
	b.formatting.terraform_fmt,

	-- go
	b.formatting.gofmt,
	b.formatting.goimports,
}

null_ls.setup({
	debug = true,
	sources = sources,
	-- configure format on save
	on_attach = function(current_client, bufnr)
		if current_client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({
						filter = function(client)
							--  only use null-ls for formatting instead of lsp server
							return client.name == "null-ls"
						end,
						bufnr = bufnr,
					})
				end,
			})
		end
	end,
})
