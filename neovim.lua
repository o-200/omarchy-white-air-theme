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
                base09 = "#0a64f5",        -- Numbers, constants
                base0A = "#6495ed",        -- Classes, types, parameters
                base0B = "#0a64f5",        -- Strings, methods
                base0C = "#151719",        -- Regex, escapes
                base0D = "#3b83bd",        -- Functions, keywords
                base0E = "#0047ab",        -- Keywords, tags
                base0F = "#cc6633",        -- Deprecated
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

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
