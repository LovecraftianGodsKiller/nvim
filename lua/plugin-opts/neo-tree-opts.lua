config = function ()
    vim.fn.sign_define("DiagnosticError",
        {text = " ", texthl = "DiagnosticSignError"})
    vim.fn.sign_define("DiagnosticSignWarn",
        {text = " ", texthl = "DiagnosticSignWarn"})
    vim.fn.sign_define("DiagnosticSignInfo",
        {text = " ", texthl = "DiagnosticSignInfo"})
    vim.fn.sign_define("DiagnosticSignHint",
        {text = "󰌵", texthl = "DiagnosticSignHint"})

    require("neo-tree").setup({
        close_if_last_window = false,
        popup_border_style = "rounded",
        enable_git_status = true,
        sort_case_sensitive = false,
        sort_function = nil,
        default_component_configs = {
            container = {
                enable_character_fade = true,
            },
        },
        indent = {
            indent_size = 4,
            padding = 2,
            with_markers = true,
            indent_marker = "|",
            last_indent_marker = "└",
            highlight = "NeoTreeIndentMarker",
            with_expanders = nil,
            expander_collapsed = "",
            expander_expanded = "",
            expander_hihglight = "NeoTreeExpander",
        },
        icon = {
            folder_closed = "",
            folder_open = "",
            folder_empty = "󰜌",
            -- next are only a fallback if not using nvim-web-devicons
            default = "*",
            highlight = "NeoTreeFileIcon",
        },
        modified = {
            symbol = "[+]",
            highlight = "NeoTreeModified",
        },
        name = {
            trailing_slash = false,
            use_git_status_colors = true,
            highlight = "NeoTreeFileName",
        },
        git_status = {
            symbols = {
                added       = "✚",
                modified    = "",
                deleted     = "✖",
                renamed     = "󰁕",
                -- Status Type
                untracked = "",
                ignored   = "",
                unstaged  = "󰄱",
                staged    = "",
                conflict  = "",
            },
        },
        file_size = {
            enabled = true,
            required_width = 64,
        },
        type = {
            enabled = true,
            required_width = 122,
        },
        last_modified = {
            enabled = true,
            required_width = 88,
        },
        created = {
            enabled = true,
            required_width = 110,
        },
        symlink_target = {
            enabled = false,
        },
        -- list of functions, each representing a global custom command
        -- will be available in all sources (if not overriden in `opts[source_name].commands`)
        -- see :h neo-tree-custom-commands-global
        commands = {},
        window = {
            position = "left",
            width = 40,
            mapping_options = {
                noremap = true,
                nowait = true,
            },
            mappings = {
                ["<cr>"] = "open",
                ["<esc>"] = "cancel",
                ["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
                ["l"] = "focus_preview",
                ["S"] = "open_split",
                ["s"] = "open_vslpit",
                -- ["S"] = "split_with_window_picker",
                -- ["s"] = "vsplit_with_window_picker",
                ["t"] = "open_tabnew",
                -- [<cr>] = "opem_drop",
                -- ["t"] = "open_tab_drop",
                ["w"] = "open_with_window_picker",
                -- ["P"] = "toggle_previee", -- enter preview mode, which shows the current node without focusing
                ["C"] = "close_node",
                ["z"] = "close_all_nodes",
                ["a"] = {
                    "add",
                    config = {
                        show_path = "none" -- "none", "reletive", "absolute",
                    },
                },
                ["A"] = "add_dictionary",
                ["d"] = "delete",
                ["r"] = "rename",
                ["y"] = "copy_to_clipboard",
                ["x"] = "cut_to_clipboard",
                ["p"] = "paste_from_clipboard",
                ["c"] = "copy", --takes text input for destination, also accepts the optional config.show_path like "add":
                ["c"] = {
                    "copy",
                    config = {
                        show_path = "none", -- "none", "reletive", "absolute"
                    },
                },
                ["m"] = "move",
                ["q"] = "close_window",
                ["R"] = "refresh",
                ["?"] = "show_help",
                ["<"] = "prev_source",
                [">"] = "next_source",
                ["i"] = "show_file_details",
            },
        },
        nesting_rules = {
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    hide_hidden = false,
                    hide_by_name = {
                        --"node-modules"
                    },
                    hide_by_pattern = { -- uses glob style patterns 
                        --"*.meta"
                        --"*./src/*/tsconfig.json",
                    },
                    always_show = { -- remains visible even if other settings would normally hide it)
                        --".gitignored",
                    },
                    never_show = { -- remains hidden even if visisble is toggleed to true, this overrides always
                        --".DS_Store",
                        --"thumbs.db"
                    },
                    never_show_by_pattern = { -- uses glob style patterns
                        --".null-ls_*"
                    },
                    follow_current_file = {
                        enabled = false, -- This will find and focus the file in the active buffer every time
                        --               -- the current file is changed while tthe tree is open
                        leave_dirs_open = false, -- 'false' clpses auto expanded dirs, such as with ':Neotree reveal'                        
                    },
                    group_empty_dirs = false, -- when true, empty folders will be grouped together
                    hijack_netrw_behavior = "open_default", -- netrw disabled, opening a directory opens neo-tree in whatever position is specified in window.posisiton netrw disabled, opening a directory opens within the window like netrw would, regardless of window.position netrw left alome, neo-tree does not handle openeing dirs
                    use_libuv_file_watcher = false, -- this will use the OS level file watchers to detect changes instead of relying on nvim autocmd events
                    window = {
                        mappings = {
                            ["<bs>"] = "navigate_up",
                            ["."] = "set_root",
                            ["H"] = "toggle_hidden",
                            ["/"] = "fuzzy_finder",
                            ["D"] = "fuzzy_finder_directory",
                            ["#"] = "fuzzy_sorter", -- fuzzy sorting using the fzy algorithm
                            -- ["D"] = "fuzzy_sorter_directory",
                            ["f"] = "filter_on_submit",
                            ["<c-x>"] = "clear_filter",
                            ["[g"] = "prev_git_modified",
                            ["]g"] = "next_next_git_modified",
                            ["o"] = { "show_help", nowait = false, config = { title = "Order by", prefix_key = "o" } },
                            ["oc"] = { "order_by_created", nowait = false },
                            ["od"] = { "order_by_diagnostics", nowait = false },
                            ["og"] = { "order_by_git_status", nowait = false },
                            ["om"] = { "order_by_modified", nowait = false },
                            ["on"] = { "order_by_name", nowait = false },
                            ["os"] = { "order_by_size", nowait = false },
                            ["ot"] = { "order_by_type", nowait = false },
                        },
                        fuzzy_finder_mappings = {
                            ["<down>"] = "move_cursor_down",
                            ["<C-n>"] = "move_cursor_down",
                            ["<up>"] = "move_cursor_up",
                            ["<C-p>"] = "move_cursor_up",
                        },
                    },
                },
                buffers = {
                    follow_current_file = {
                        enabled = false, -- will find a focus the file in the active buffer every time
                                        -- current file is changed while the tree is open.
                        leav_dirs_open = false, -- 'false' closes auto expanded.dirs, such as with ':Neotree reveal'
                    },
                    group_empty_dirs = false, -- when true, empty folders will be grouped together
                    show_unloaded = false,
                    window = {
                        mappings = {
                            ["bd"] = "buffer_delete",
                            ["<bs>"] = "navigate_up",
                            ["."] = "set_root",
                            ["o"] = { "show_help", nowait = false, config = { title = "Order by", prefix_key = "o" } },
                            ["oc"] = { "order_by_created", nowait = false },
                            ["od"] = { "order_by_diagnostics", nowait = false },
                            ["om"] = { "order_by_modified", nowait = false },
                            ["on"] = { "order_by_name", nowait = false },
                            ["os"] = { "order_by_size", nowait = false },
                            ["ot"] = { "order_by_type", nowait = false },
                        },
                    },
                },
                git_status = {
                    window = {
                        position = "float",
                        mappings = {
                            ["A"]  = "git_add_all",
                            ["gu"]  = "git_unstage_file",
                            ["ga"]  = "git_add_file",
                            ["gr"]  = "git_revert_file",
                            ["gc"]  = "git_commit",
                            ["gp"]  = "git_push",
                            ["gg"]  = "git_commit_and_push",
                            ["o"] = { "show_help", nowait = false, config = { title = "Order by", prefix_key = "o" } },
                            ["oc"] = { "order_by_created", nowait = false },
                            ["od"] = { "order_by_diagnostics", nowait = false },
                            ["om"] = { "order_by_modified", nowait = false },
                            ["on"] = { "order_by_name", nowait = false },
                            ["os"] = { "order_by_size", nowait = false },
                            ["ot"] = { "order_by_type", nowait = false },
                        },
                    },
                },
            },
        },
    })
    vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
    end


