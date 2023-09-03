return
{
    "hrsh7th/nvim-cmp",
    dependencies =
    {
        {"hrsh7th/cmp-nvim-lsp",},
        {"hrsh7th/cmp-path",},
        {"hrsh7th/cmp-buffer",},
        --{"hrsh7th/cmp-cmdline",},
        --{"hrsh7th/cmp-nvim-lua",},
    },
    config = function()
        local cmp = require("cmp")
        cmp.setup
        {
            mapping = cmp.mapping.preset.insert
            {
                ["<Tab>"] = cmp.mapping.select_next_item(),
                ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                ["<CR>"] = cmp.mapping.confirm {select = true},
            },
            sources =
            {
                {name = "nvim_lsp"},
                {name = "path"},
                {name = "buffer"},
                --{name = "nvim_lua"},
            },
            formatting =
            {
                fields =
                {
                    "abbr",
                    "menu"
                },
                format = function(entry, vim_item)
                    vim_item.menu = (
                    {
                        nvim_lsp = "",
                        path = "",
                        buffer = "",
                        --nvim_lua = "",
                    })[entry.source.name]
                    return vim_item
                end,
            },
        }
    end
}
