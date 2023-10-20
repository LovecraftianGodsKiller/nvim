return {
  {
    "mrjones2014/legendary.nvim",
    opts = {
      keymaps = {
          { "<leader>ff", ":FzfLua files cwd=~/<CR>", desc = "fzf-lua find files cwd" },
      },
      -- Initial commands to bind, can also be a function that returns the list
      commands = {},
      -- Initial augroups/autocmds to bind, can also be a function that returns the list
      autocmds = {},
      -- Initial functions to bind, can also be a function that returns the list
      funcs = {},
      -- Initial item groups to bind,
      -- note that item groups can also
      -- be under keymaps, commands, autocmds, or funcs;
      -- can also be a function that returns the list
      itemgroups = {},
      -- default opts to merge with the `opts` table
      -- of each individual item
      default_opts = {
        -- for example, { silent = true, remap = false }
        keymaps = {},
        -- for example, { args = '?', bang = true }
        commands = {},
        -- for example, { buf = 0, once = true }
        autocmds = {},
      },
      select_prompt = ' legendary.nvim ',
  -- Character to use to separate columns in the UI
      col_separator_char = '│',
  -- Optionally pass a custom formatter function. This function
  -- receives the item as a parameter and the mode that legendary
  -- was triggered from (e.g. `function(item, mode): string[]`)
  -- and must return a table of non-nil string values for display.
  -- It must return the same number of values for each item to work correctly.
  -- The values will be used as column values when formatted.
  -- See function `default_format(item)` in
  -- `lua/legendary/ui/format.lua` to see default implementation.
      default_item_formatter = nil,
  -- Customize icons used by the default item formatter
      icons = {
    -- keymap items list the modes in which the keymap applies
        -- by default, you can show an icon instead by setting this to
        -- a non-nil icon
        keymap = nil,
        command = '',
        fn = '󰡱',
        itemgroup = '',
      },
      include_builtin = true,
  -- Include the commands that legendary.nvim creates itself
  -- in the legend by default, set to false to disable
      include_legendary_cmds = true,
  -- Options for list sorting. Note that fuzzy-finders will still
  -- do their own sorting. For telescope.nvim, you can set it to use
  -- `require('telescope.sorters').fuzzy_with_index_bias({})` when
  -- triggered via `legendary.nvim`. Example config for `dressing.nvim`:
  --
  -- require('dressing').setup({
  --  select = {
  --    get_config = function(opts)
  --      if opts.kind == 'legendary.nvim' then
  --        return {
  --          telescope = {
  --            sorter = require('telescope.sorters').fuzzy_with_index_bias({})
  --          }
  --        }
  --      else
  --        return {}
  --      end
  --    end
  --  }
  -- })
      sort = {
    -- sort most recently used item to the top
        most_recent_first = true,
    -- sort user-defined items before built-in items
        user_items_first = true,
    -- sort the specified item type before other item types,
    -- value must be one of: 'keymap', 'command', 'autocmd', 'group', nil
        item_type_bias = nil,
    -- settings for frecency sorting.
    -- https://en.wikipedia.org/wiki/Frecency
    -- Set `frecency = false` to disable.
    -- this feature requires sqlite.lua (https://github.com/kkharji/sqlite.lua)
    -- and will be automatically disabled if sqlite is not available.
    -- NOTE: THIS TAKES PRECEDENCE OVER OTHER SORT OPTIONS!
        frecency = {
      -- the directory to store the database in
          db_root = string.format('%s/legendary/', vim.fn.stdpath('data')),
      -- the maximum number of timestamps for a single item
      -- to store in the database
          max_timestamps = 10,
        },
      },
      extensions = {
        which_key = {
        -- Automatically add which-key tables to legendary
        -- see ./doc/WHICH_KEY.md for more details
            auto_register = false,
            -- you can put which-key.nvim tables here,
            -- or alternatively have them auto-register,
            -- see ./doc/WHICH_KEY.md
            mappings = {},
            opts = {},
            -- controls whether legendary.nvim actually binds they keymaps,
            -- or if you want to let which-key.nvim handle the bindings.
            -- if not passed, true by default
            do_binding = true,
            -- controls whether to use legendary.nvim item groups
            -- matching your which-key.nvim groups; if false, all keymaps
            -- are added at toplevel instead of in a group.
            use_groups = true,
        },
        nvim_tree = false,
        smart_splits = false,
        op_nvim = false,
        diffview = false,
      },
      scratchpad = {
    -- How to open the scratchpad buffer,
    -- 'current' for current window, 'float'
    -- for floating window
        view = 'float',
    -- How to show the results of evaluated Lua code.
    -- 'print' for `print(result)`, 'float' for a floating window.
        results_view = 'float',
    -- Border style for floating windows related to the scratchpad
        float_border = 'rounded',
    -- Whether to restore scratchpad contents from a cache file
        keep_contents = true,
      },
  -- Directory used for caches
      cache_path = string.format('%s/legendary/', vim.fn.stdpath('cache')),
  -- Log level, one of 'trace', 'debug', 'info', 'warn', 'error', 'fatal'
      log_level = 'info',
    },
  },
}
