return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          -- Explorer file watching kept libuv fs_event/timer handles open,
          -- which made `nvim .` exits slow and return status 1.
          watch = false,
          layout = {
            layout = {
              position = "right",
            },
          },
        },
      },
    },
  },
}
