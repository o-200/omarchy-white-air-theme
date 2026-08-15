return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                base00 = "#ffffff",        -- Default Background
                base01 = "#f1f5f9",        -- Lighter Background
                base02 = "#cbd5e1",        -- Selection Background
                base03 = "#94a3b8",        -- Comments, Line Numbers
                base04 = "#64748b",        -- Dark Foreground
                base05 = "#1e293b",        -- Default Foreground
                base06 = "#0f172a",        -- Light Foreground
                base07 = "#ffffff",        -- Light Background
                base08 = "#e11d48",        -- Variables, Errors
                base09 = "#ea580c",        -- Numbers, Constants
                base0A = "#d97706",        -- Classes, Types
                base0B = "#059669",        -- Strings
                base0C = "#0284c7",        -- Regex, Escapes
                base0D = "#0a64f5",        -- Functions, Methods
                base0E = "#7c3aed",        -- Keywords, Tags
                base0F = "#d97706",        -- Deprecated
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
