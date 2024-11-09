-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

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
    { '<leader>tt', '<cmd>Neotree reveal filesystem toggle<CR>', desc = '[T]oggle Neotree filesystem' },
    { '<leader>tb', '<cmd>Neotree reveal buffers toggle<CR>', desc = '[T]oggle Neotree buffer' },
  },
  opts = {
    close_if_last_window = true,
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      window = {
        mappings = {
          -- ['\\'] = 'close_window',
        },
      },
    },
  },
}
