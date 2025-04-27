-- Neo-tree is a Neovim plugin to browse the file system https://github.com/nvim-neo-tree/neo-tree.nvim
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader><Tab>', ':Neotree reveal left<CR>', desc = 'NeoTree reveal left', silent = true },
    { '<leader>e', ':Neotree float<CR>', desc = 'Neotree reveal float', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['<leader><Tab>'] = 'close_window',
          ['<leader>e'] = 'close_window',
        },
      },
    },
  },
}
