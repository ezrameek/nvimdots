return {
    {
        "RRethy/vim-illuminate",
        config = function()
            require('illuminate').configure({
                providers = {
                    'lsp',
                    'treesitter',
                    'regex',
                },
                under_cursor = true,
            })
            require('illuminate').toggle()
        end
    }
}
