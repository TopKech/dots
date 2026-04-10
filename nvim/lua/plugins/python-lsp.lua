return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = { enabled = false },
          ty = {
            settings = {
              ty = {
                inlayHints = {
                  variableTypes = false,
                  callArgumentNames = false,
                },
              },
            },
        },
        ruff = {},
      },
    },
  },
}
