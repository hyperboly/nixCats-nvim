return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'

    require('telescope').load_extension 'harpoon'

    vim.keymap.set('n', '<leader>a', mark.add_file, { desc = '[A]dd file to Harpoon' })
    vim.keymap.set('n', '<C-e>', '<cmd>Telescope harpoon marks<CR>', { desc = 'Harpoon marks' })
    vim.keymap.set('n', '<C-m>', ui.toggle_quick_menu, { desc = 'Harpoon menu' })
    vim.keymap.set('n', '<C-n>', ui.nav_next, { desc = 'Next Harpoon file' })
    vim.keymap.set('n', '<C-p>', ui.nav_prev, { desc = 'Previous Harpoon file' })
  end,
}
