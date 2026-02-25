return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                base00 = "#ffffff",        -- Background
                base01 = "#ffffff",        -- Lighter background
                base02 = "#6effe9",        -- Selection background
                base03 = "#B9D3FC",        -- Comments
                base04 = "#0a64f5",        -- Dark foreground
                base05 = "#3584e4",        -- Default foreground
                base06 = "#030303",        -- Light foreground
                base07 = "#f8f8f8",        -- Light background
                base08 = "#1a5fb4",        -- Red variables, errors
                base09 = "#0a64f5",        -- numbers, constants
                base0A = "#5090f8",        -- classes, types, parameters
                base0B = "#0a64f5",        -- strings, methods
                base0C = "#003d9f",        -- regex, escapes
                base0D = "#66d9ef",        -- functions, keywords
                base0E = "#004bc4",        -- keywords, tags
                base0F = "#cc6633",        -- deprecated things
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
