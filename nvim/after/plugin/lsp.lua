-- Import Mason and LSPConfig safely
local lspconfig = require("lspconfig")
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

-- Enable Mason
mason.setup()

-- Essential LSPs
local servers = {
    "clangd",  -- C, C++
    "pyright", -- Python
    "rust_analyzer" -- Rust
}

-- Auto-install any missing LSP servers
mason_lspconfig.setup({
    ensure_installed = servers,
    automatic_installation = true, -- If a new LSP is detected, install it automatically
})

-- LSP Keymaps
local on_attach = function(client, bufnr)
    local opts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
end

-- LSP Server Setup
mason_lspconfig.setup_handlers({
    function(server_name)
        lspconfig[server_name].setup {
            on_attach = on_attach,
            capabilities = require("cmp_nvim_lsp").default_capabilities(),
        }
    end
})
