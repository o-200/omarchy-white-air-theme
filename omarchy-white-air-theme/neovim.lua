return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#1e1e2e",
                bg_dark = "#1e1e2e",
                bg_highlight = "#45475a",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#ffffff",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#cdd6f4",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#45475a",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#f38ba8",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#f38ba8",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#f9e2af",
                -- green: Comments, strings, success states, git additions
                green = "#a6e3a1",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#94e2d5",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#89b4fa",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#cba6f7",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#cba6f7",
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
