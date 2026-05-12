return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Keep one C# language server active. csharp_ls was installed alongside
        -- omnisharp and currently exits immediately on this machine.
        csharp_ls = { enabled = false },
        omnisharp = {},
      },
    },
  },
}
