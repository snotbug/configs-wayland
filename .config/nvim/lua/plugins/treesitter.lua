return
{
    "nvim-treesitter/nvim-treesitter",
    config = function()
        local configs = require "nvim-treesitter.configs"
        configs.setup
        {
            ensure_installed =
            {
                "python",
                "gdscript",
            },
            ignore_install =
            {
                ""
            },
            sync_install = false,
            highlight =
            {
                enable = true,
                disable =
                {
                    "css"
                },
            },
            autopairs = {enable = true,},
            indent =
            {
                enable = true,
                disable =
                {
                    "python",
                    "css"
                }
            },
            context_commentstring =
            {
                enable = true,
                enable_autocmd = false,
            },
        }
    end,
}
