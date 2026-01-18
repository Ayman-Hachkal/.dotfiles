return { 
  'vyfor/cord.nvim',
  build = ':Cord update',
  opts = function()
    require('cord').setup({
    display = {
      theme = 'catpuccin',
      flavor = 'dark',
      },
    })
  end
}
