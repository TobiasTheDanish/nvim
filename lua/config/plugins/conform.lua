return {
  {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        '<leader>fs',
        function()
          require('conform').format { async = true, lsp_fallback = true }
        end,
        mode = 'v',
        desc = 'format selection',
      },
    },
    opts = {},
    config = function()
      require('conform').setup {
        notify_on_error = false,
        formatters_by_ft = {
          lua = { 'stylua' },
          javascript = { 'prettierd', 'prettier', stop_after_first = true },
          typescript = { 'prettierd', 'prettier', stop_after_first = true },
          go = { 'goimports', 'gopls' },
          sql = { 'sql_formatter' },
          templ = { 'templ' },
        },
        format_on_save = function(bufnr)
          local disable_filetypes = { c = true, cpp = true }
          local lsp_format_opt
          if disable_filetypes[vim.bo[bufnr].filetype] then
            lsp_format_opt = 'never'
          else
            lsp_format_opt = 'fallback'
          end
          return {
            timeout_ms = 500,
            lsp_format = lsp_format_opt,
          }
        end,
      }
    end,
  },
}
