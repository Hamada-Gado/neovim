-- uiua filetype
vim.filetype.add({ extension = { ua = 'uiua' } })

vim.api.nvim_create_autocmd('BufWritePost', {
    pattern = '*.ua',
    callback = function(_)
        vim.cmd(([[
            silent! !uiua fmt %s
            mkview
            e
            loadview
        ]]):format(vim.fn.expand('<amatch>')))
    end,
})
