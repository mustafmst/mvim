# Adding new lsp to configuration

1. Add file `<lsp_name>.lua` in this directory
2. Use template:
    ```lua
    local module = {}

    function module.add_null_ls_sources(sources)
        local null_ls = require("null-ls")
        local new_sources = {
            -- null_ls formatters here
        }
        for _, v in pairs(new_sources) do
            table.insert(sources, v)
        end
        return sources
    end

    function module.setup_lsp()
        local lspconfig = require('lspconfig')
        -- lspvonfig for given lsp
        -- You can find it on git: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
    end

    return luals
    ```

This will load it where it is needed
