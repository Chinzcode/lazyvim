return {
    "nvim-telescope/telescope.nvim",
    keys = {
        {
            "<leader>cp",
            function()
                require("telescope.builtin").find_files({
                    winblend = 10,
                    search_dirs = {
                        ".",
                        "/Users/trym/projects/corepublish/corepublish/",
                        "/Users/trym/projects/corepublish/cplib/",
                    },
                    additional_args = { "--no-ignore-vcs", "-F", "-Tmarkdown" },
                    hidden = true,
                })
            end,
            desc = "Find files in corepublish",
        },
        {
            "<leader>sc",
            function()
                require("telescope.builtin").live_grep({
                    winblend = 10,
                    search_dirs = {
                        ".",
                        "/Users/trym/projects/corepublish/corepublish/",
                        "/Users/trym/projects/corepublish/cplib/",
                    },
                    additional_args = { "--no-ignore-vcs", "-F", "-Tmarkdown" },
                })
            end,
            desc = "Live grep in corepublish",
        },
    },
}
