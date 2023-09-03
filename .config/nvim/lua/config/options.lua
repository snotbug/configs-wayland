local options =
{
    number = true,
    relativenumber = true,
    signcolumn = "yes",
    cursorline = true,
    numberwidth = 4,
    showtabline = 0,
    linebreak = false,
    pumheight = 10,
    completeopt =
    {
        "menuone",
        "noselect"
    },
    termguicolors = true,
    cmdheight = 1,
    showmode = false,
    showcmd = false,

    tabstop = 4,
    softtabstop = 4,
    expandtab = true,
    shiftwidth = 4,
    smartindent = true,
    wrap = false,
    scrolloff = 8,
    sidescrolloff = 8,
    hlsearch = true,
    incsearch = true,
    smartcase = true,

    swapfile = false,
    backup = false,
    writebackup = false,
    undofile = true,
    fileencoding = "utf-8",

    mouse = "a",
    timeoutlen = 300,
    updatetime = 300,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
