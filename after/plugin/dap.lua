require('dap-go').setup{
    dap_configurations = { 
        {
            type = "go",
            name = "Attach remote",
            mode = "remote",
            request = "attach",
        },
    },
    -- delve
    delve = {
        path = "dlv",
        initialize_timeout_sec = 15,
        port = "{port}",
        args = {},
        build_flags = "",
    }
}
