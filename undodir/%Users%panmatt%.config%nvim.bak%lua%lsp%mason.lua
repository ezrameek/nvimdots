Vim�UnDo� l@��]�OA<k4������%/�T�Y.��3k�   )       *                           e�Æ    _�                            ����                                                                                                                                                                                                                                                                                                                                                             e��u     �         (              �         (    �         '    5��                          �              	       �                         �                     �                                              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e�Ã     �         )              �         )    �         (    5��                          �              	       �                         �                     �                                              �                                              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e�Å     �   )               �               )   -- import mason   local mason = require("mason")       -- import mason-lspconfig   2local mason_lspconfig = require("mason-lspconfig")       <local mason_tool_installer = require("mason-tool-installer")       mason.setup({   
    ui = {           icons = {   &            package_installed = "✓",   $            package_pending = "➜",   (            package_uninstalled = "✗",   
        },       },   })       mason_lspconfig.setup({   +    -- list of servers for mason to install       ensure_installed = {           "lua_ls",           "pyright",           "tsserver",            "bashls",           "clangd",       },   7    -- auto-install configured servers (with lspconfig)   F    automatic_installation = true, -- not the same as ensure_installed   })       mason_tool_installer.setup({       ensure_installed = {   )        "prettier", -- prettier formatter   "        "stylua", -- lua formatter   $        "isort", -- python formatter   $        "black", -- python formatter   "        "pylint", -- python linter            "eslint_d", -- js linter       },   })5��            (      )               �      �      �    )                      �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e�Å    �   	   )   )      
    ui = {           icons = {   &            package_installed = "✓",   $            package_pending = "➜",   (            package_uninstalled = "✗",   
        },       },   })       mason_lspconfig.setup({   +    -- list of servers for mason to install       ensure_installed = {           "lua_ls",           "pyright",           "tsserver",           "bashls",           "clangd",       },   7    -- auto-install configured servers (with lspconfig)   F    automatic_installation = true, -- not the same as ensure_installed   })       mason_tool_installer.setup({       ensure_installed = {   )        "prettier", -- prettier formatter   $        "stylua",   -- lua formatter   '        "isort",    -- python formatter   '        "black",    -- python formatter   $        "pylint",   -- python linter            "eslint_d", -- js linter       },5��    	                   �             }      5��