return
{
    "neovim/nvim-lspconfig",
    config = function()
        local function lsp_keymaps(bufnr)
            local opts =
            {
                noremap = true,
                silent = true
            }
            local keymap = vim.api.nvim_buf_set_keymap

            keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
            keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
            keymap(bufnr, "n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
            keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
            keymap(bufnr, "n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
            keymap(bufnr, "n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
        end

        local on_attach = function(client, bufnr)
            lsp_keymaps(bufnr)
        end

        vim.diagnostic.config(
        {
            virtual_text = false,
            update_in_insert = true,
            severity_sort = true,
            float =
            {
                focusable = false,
                style = "minimal",
                source = "always",
            },
        })

        local lspconfig = require("lspconfig")
        local servers =
        {
            "pyright",
            "gdscript",
        }

        for _, lsp in ipairs(servers) do
            lspconfig[lsp].setup
            {
                on_attach = on_attach,
            }
        end
    end,
}
