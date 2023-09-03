return
{
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies =
    {
        {"nvim-lua/plenary.nvim"},
    },
    config = function()
        local telescope = require("telescope")
        telescope.setup
        {
            opts =
            {
                defaults =
                {
                    prompt_prefix = "",
                    selection_caret = ">",
                    path_display = {"smart"},
                    file_ignore_patterns =
                    {
                        ".git/",
                        "node_modules"
                    },
                }
            },
        }
    end,
}
