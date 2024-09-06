return {
    "olimorris/codecompanion.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        "hrsh7th/nvim-cmp",              -- Optional: For activating slash commands and variables in the chat buffer
        "nvim-telescope/telescope.nvim", -- Optional: For working with files with slash commands
        {
            "stevearc/dressing.nvim",    -- Optional: Improves the default Neovim UI
            opts = {},
        },
    },
    -- config = true,
    config = function()
        require("codecompanion").setup({
            adapters = {
                anthropic = function()
                    return require("codecompanion.adapters").extend("anthropic", {
                        env = {
                            api_key = "MY_OTHER_ANTHROPIC_KEY"
                        },
                    })
                end,
            },
        })
    end,
}
