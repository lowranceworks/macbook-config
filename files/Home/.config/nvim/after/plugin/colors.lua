require('dracula').setup({
  disable_background = true
})

vim.cmd[[colorscheme dracula]]

function ColorMyPencils(color) 
vim.cmd.colorscheme(color)

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()