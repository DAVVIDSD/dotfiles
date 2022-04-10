local status, lualine = pcall(require, "lualine")
if (not status) then return end
local diff = {
	"diff",
	colored = false,
	symbols = { added = "? ", modified = "? ", removed = "? " }, -- changes diff symbols
  cond = hide_in_width
}

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'tokyonight',
    section_separators = {left = '', right = ''},
    component_separators = {left = '', right = ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', },
    lualine_c = {{
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 0 -- 0 = just filename, 1 = relative path, 2 = absolute path
    }},
    lualine_x = {
      { 'diagnostics', sources = {"nvim_diagnostic", "coc"}, sections = { "error", "warn" }, symbols = {error = ' ', warn = ' '}, always_visible = true },
      'encoding',
      'filetype'
    },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {{
      'filename',
      file_status = true, -- displays file status (readonly status, modiied status)
      path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
    }},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {'fugitive'}
}
