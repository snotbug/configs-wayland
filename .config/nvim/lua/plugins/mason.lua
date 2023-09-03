return
{
    "williamboman/mason.nvim",
    cmd = "Mason",
    dependencies =
    {
        {"williamboman/mason-lspconfig.nvim"},
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")

        mason.setup(
        {
            log_level = vim.log.levels.INFO,
            max_concurrent_installers = 4,
        })

        mason_lspconfig.setup(
        {
            ensure_installed =
            {
            },
            automatic_installation = true,
        })
    end,
}
