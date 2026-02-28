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
                base02 = "#77dde7",        -- Selection background
                base03 = "#afdafc",        -- Comments
                base04 = "#0a64f5",        -- Dark foreground
                base05 = "#3b83bd",        -- Default foreground
                base06 = "#030303",        -- Light foreground
                base07 = "#f8f8ff",        -- Light background
                base08 = "#1560bd",        -- Red variables, errors
                base09 = "#0a64f5",        -- numbers, constants
                base0A = "#6495ed",        -- classes, types, parameters
                base0B = "#0a64f5",        -- strings, methods
                base0C = "#151719",        -- regex, escapes
                base0D = "#3b83bd",        -- functions, keywords
                base0E = "#0047ab",        -- keywords, tags
                base0F = "#b87333",        -- deprecated things
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
