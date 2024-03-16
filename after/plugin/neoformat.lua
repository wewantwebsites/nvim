vim.g.neoformat_try_node_exe = 1

local autocmd = vim.api.nvim_create_autocmd
local cmd = vim.cmd 
local pattern = { 'javascript', 'javasciptreact', 'typescript', 'typescriptreact', 'svelte', 'markdown', 'css', 'scss', 'vue' }

vim.keymap.set("n", "<leader><C-f> ", "<cmd>Neoformat <CR />")
autocmd('BufWritePre', {
    pattern = pattern,
    callback = function()
        cmd('Neoformat prettier')
    end
})
