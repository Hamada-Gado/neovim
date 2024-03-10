return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "rcarriga/nvim-dap-ui",
        },
        config = function()
            local dap, dapui = require("dap"), require("dapui")
            dapui.setup()

            require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")

            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                dapui.close()
            end

            vim.keymap.set("n", "<Leader>dt", ":DapToggleBreakpoint<CR>")
            vim.keymap.set("n", "<Leader>dc", ":DapContinue<CR>")
            vim.keymap.set("n", "<Leader>dx", ":DapTerminate<CR>")
            vim.keymap.set("n", "<Leader>di", ":DapStepInto<CR>")
            vim.keymap.set("n", "<Leader>do", ":DapStepOver<CR>")
            vim.keymap.set("n", "<Leader>dd", ":DapStepOut<CR>")
            vim.keymap.set("n", "<Leader>dr", ":DapRestartFrame<CR>")
        end,
    },
    {
        "mfussenegger/nvim-dap-python",
        ft = "python",
        dependencies = {
            "mfussenegger/nvim-dap",
            "rcarriga/nvim-dap-ui",
        },
        config = function()
            local dap = require("dap")

            dap.adapters.python = {
                type = "executable",
                command = "python",
                args = { "-m", "debugpy.adapter" },
            }

            dap.configurations.python = {
                {
                    type = "python",
                    request = "launch",
                    name = "Launch file",
                    program = "${file}",
                    pythonPath = function()
                        return vim.fn.exepath("python3")
                    end,
                },
            }
        end,
    },
}
