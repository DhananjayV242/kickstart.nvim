-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({

  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- Adding gitsigns plugin
  require 'kickstart.plugins.gitsigns',
  -- require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps

  --Adding which-key plugin
  require 'kickstart.plugins.which-key',

  -- Adding telescope plugin
  require 'kickstart.plugins.telescope',

  -- Main LSP Configuration
  require 'kickstart.plugins.lspconfig',

  -- Conform
  require 'kickstart.plugins.conform',

  -- Expanding default NVIM LSP capabilities
  require 'kickstart.plugins.blink-cmp',

  -- tokyonight colorscheme
  require 'kickstart.plugins.tokyonight',

  require 'kickstart.plugins.todo-comments',

  -- Additional keymaps and stuff. Smol plugins
  require 'kickstart.plugins.mini-nvim',

  -- treesitter plugin. Different from LSP. Check :help lsp-vs-treesitter
  require 'kickstart.plugins.treesitter',

  require 'kickstart.plugins.neo-tree',
  require 'kickstart.plugins.lazygit',
  require 'kickstart.plugins.alpha',
  -- The following comments only work if you have downloaded the kickstart repo, not just copy pasted the
  -- init.lua. If you want these files, they are in the repository, so you can just download them and
  -- place them in the correct locations.
  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  -- require 'kickstart.plugins.lint',
  -- require 'kickstart.plugins.autopairs',

  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    This is the easiest way to modularize your config.
  --
  --  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  -- { import = 'custom.plugins' },
  --
  -- For additional information with loading, sourcing and examples see `:help lazy.nvim-🔌-plugin-spec`
  -- Or use telescope!
  -- In normal mode type `<space>sh` then write `lazy.nvim-plugin`
  -- you can continue same window with `<space>sr` which resumes last telescope search
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
