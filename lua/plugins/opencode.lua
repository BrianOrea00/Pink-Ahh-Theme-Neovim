return {
  {
    "NickvanDyke/opencode.nvim",

    dependencies = {
      {
        "folke/snacks.nvim",
        opts = {
          input = {},
          picker = {},
          terminal = {},
        },
      },
    },

    config = function()
      local opencode = require("opencode")
      local terminal = require("snacks.terminal")

      -- ============================================================
      -- OpenCode terminal configuration
      -- ============================================================

      local opencode_cmd = "opencode --port"

      local terminal_opts = {
        win = {
          position = "right",
          width = 0.40,
          enter = false,
        },
      }

      -- ============================================================
      -- OpenCode server configuration
      -- ============================================================

      vim.g.opencode_opts = {
        server = {
          -- Start OpenCode when the plugin needs it
          start = function()
            terminal.open(opencode_cmd, terminal_opts)
          end,
        },
      }

      -- Reload files changed by OpenCode
      vim.o.autoread = true

      -- ============================================================
      -- Toggle OpenCode
      --
      -- Space + o + o
      --
      -- Opens OpenCode if it isn't running.
      -- Shows/hides the terminal if it is running.
      -- ============================================================

      vim.keymap.set({ "n", "t" }, "<leader>oo", function()
        local term = terminal.get(opencode_cmd, {
          create = false,
        })

        if term then
          term:toggle()
        else
          terminal.open(opencode_cmd, terminal_opts)
        end
      end, {
        desc = "Toggle OpenCode",
      })

      -- ============================================================
      -- TERMINATE OpenCode
      --
      -- Space + o + q
      --
      -- This actually closes the terminal and terminates
      -- the running `opencode --port` process.
      -- ============================================================

      vim.keymap.set({ "n", "t" }, "<leader>oq", function()
        local term = terminal.get(opencode_cmd, {
          create = false,
        })

        if term then
          term:close()
          vim.notify("OpenCode terminated", vim.log.levels.INFO)
        else
          vim.notify("OpenCode is not running", vim.log.levels.INFO)
        end
      end, {
        desc = "Terminate OpenCode",
      })

      -- ============================================================
      -- ASK OPENCode
      --
      -- Space + o + a
      -- ============================================================

      vim.keymap.set({ "n", "x" }, "<leader>oa", function()
        opencode.ask("@this: ")
      end, {
        desc = "Ask OpenCode",
      })

      -- ============================================================
      -- OpenCode ACTIONS
      --
      -- Space + o + x
      -- ============================================================

      vim.keymap.set({ "n", "x" }, "<leader>ox", function()
        opencode.select()
      end, {
        desc = "OpenCode actions",
      })

      -- ============================================================
      -- SEND VISUAL SELECTION
      --
      -- Space + o + s
      -- ============================================================

      vim.keymap.set("x", "<leader>os", function()
        return opencode.operator("@this ")
      end, {
        expr = true,
        desc = "Send selection to OpenCode",
      })

      -- ============================================================
      -- SEND CURRENT LINE
      --
      -- Space + o + l
      -- ============================================================

      vim.keymap.set("n", "<leader>ol", function()
        return opencode.operator("@this ") .. "_"
      end, {
        expr = true,
        desc = "Send line to OpenCode",
      })

      -- ============================================================
      -- INTERRUPT CURRENT AI RESPONSE
      --
      -- Space + o + c
      -- ============================================================

      vim.keymap.set({ "n", "t" }, "<leader>oc", function()
        opencode.command("session.interrupt")
      end, {
        desc = "Cancel OpenCode response",
      })

      -- ============================================================
      -- SCROLL UP
      --
      -- Space + o + u
      -- ============================================================

      vim.keymap.set("n", "<leader>ou", function()
        opencode.command("session.half.page.up")
      end, {
        desc = "OpenCode scroll up",
      })

      -- ============================================================
      -- SCROLL DOWN
      --
      -- Space + o + d
      -- ============================================================

      vim.keymap.set("n", "<leader>od", function()
        opencode.command("session.half.page.down")
      end, {
        desc = "OpenCode scroll down",
      })
    end,
  },
}
