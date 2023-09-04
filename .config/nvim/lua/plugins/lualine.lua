return
{
    "nvim-lualine/lualine.nvim",
    config = function()
        local lualine = require("lualine")
        lualine.setup
        {
            options =
            {
                globalstatus = true,
                icons_enabled = true,
                theme = "auto",
                component_separators =
                {
                    left = "",
                    right = "",
                },
                section_separators =
                {
                    left = "",
                    right = "",
                },
            },
            sections =
            {
                lualine_a =
                {
                    {"mode",},
                },
                lualine_b =
                {
                    {"branch",},
                },
                lualine_c =
                {
                    {
                        "filename",
                        path = 2,
                    },
                },
                lualine_x =
                {
                    {
                        "diff",
                        colored = false,
                        symbols =
                        {
                            added = "+ ",
                            modified = "* ",
                            removed = "- "
                        },
                        cond = hide_in_width,
                    },
                    {"encoding",},
                    {"filetype",},
                },
                lualine_y =
                {
                    {"location",},
                },
                lualine_z =
                {
                    {"progress",},
                },
            },
        }
    end,
}
