return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                intelephense = {
                    settings = {
                        intelephense = {
                            environment = {
                                includePaths = {
                                    "./vendor/",
                                    "/Users/trym/projects/corepublish/corepublish/",
                                    "/Users/trym/projects/corepublish/cplib/",
                                },
                            },
                            files = {
                                maxSize = 10000000,
                            },
                            format = {
                                braces = "k&r",
                            },
                        },
                    },
                    init_options = {
                        licenceKey = "006F3Y69WS65HCI",
                    },
                },
            },
        },
    },
    {
        "folke/noice.nvim",
        opts = {
            presets = {
                lsp_doc_border = true,
            },
        },
    },
}
