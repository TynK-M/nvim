return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            size = 15,
            open_mapping = [[<C-\>]],
            float_opts = {
                border = "rounded",
            },
        })
    end,
}
