return {
  {
    "tpope/vim-dadbod",
    dependencies = {
      "kristijanhusak/vim-dadbod-ui",
      "kristijanhusak/vim-dadbod-completion",
    },
    opts = {
      db_competion = function()
        require("cmp").setup.buffer { sources = { { name = "vim-dadbod-completion" } } }
      end,
    },
    config = function(_, opts)
      -- location to save connections, and queries?
      -- vim.g.db_ui_save_location = vim.fn.stdpath "config" .. require("plenary.path").path.sep .. "db_ui"
      vim.g.db_ui_save_location  = '~/Projects/DB/queries'
      vim.g.dbs = {
          -- 'dev': 'postgres://postgres:mypassword@localhost:5432/my-dev-db',
          -- 'staging': 'postgres://postgres:mypassword@localhost:5432/my-staging-db',
          -- 'wp': 'mysql://root@localhost/wp_awesome',
          -- 'test': 'sqlserver://sqlserver@localhost/wp_awesome',
      }
      vim.g.db_ui_table_helpers = {
        'sqlserver'== {
            'peek' == 'select top 100 * from {table}'
        },
      }



      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "sql",
        },
        command = [[setlocal omnifunc=vim_dadbod_completion#omni]],
      })
      -- sets ExecuteQuery to F5
      vim.api.nvim_set_keymap({'n','v'}, '<F5>', '<Plug>(DBUI_ExecuteQuery)',{ noremap=false, silent=true})
      -- See dadbod-ui docs. See db_ui#query and b:db_ui_table_name b:db_ui_schema_name buffers
      -- vim.keymap.set('n', '<leader>eeee', function()
      --   vim.cmd[[ db_ui#query ]]
      -- end,

      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "sql",
          "mysql",
          "plsql",
        },
        callback = function()
          vim.schedule(opts.db_completion)
        end,
      })
    end,
    keys = {
      { "<leader>Dt", "<cmd>DBUIToggle<cr>", desc = "Toggle UI" },
      { "<leader>Df", "<cmd>DBUIFindBuffer<cr>", desc = "Find Buffer" },
      { "<leader>Dr", "<cmd>DBUIRenameBuffer<cr>", desc = "Rename Buffer" },
      { "<leader>Dq", "<cmd>DBUILastQueryInfo<cr>", desc = "Last Query Info" },
    },
  },
}
