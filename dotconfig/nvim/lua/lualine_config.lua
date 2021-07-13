
-- Color table for highlights
local colors = {
  bg = '#202328',
  fg = '#bbc2cf',
  yellow = '#ECBE7B',
  cyan = '#008080',
  darkblue = '#081633',
  green = '#98be65',
  orange = '#FF8800',
  violet = '#a9a1e1',
  magenta = '#c678dd',
  blue = '#51afef',
  red = '#ec5f67'
}

local conditions = {
  buffer_not_empty = function() return vim.fn.empty(vim.fn.expand('%:t')) ~= 1 end,
  hide_in_width = function() return vim.fn.winwidth(0) > 80 end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end
}

local config = {
  options = {
    icons_enabled = true,
    theme = 'dracula',
    component_separators = {'', ''},
    section_separators = {'', ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {},
    lualine_c = { { 'filename', path = 1 } },
    lualine_x = {},
    lualine_y = {'encoding', 'fileformat', 'filetype'},
    lualine_z = {},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
	  lualine_a = {},
	  lualine_b = {'branch'},
	  lualine_c = {},
--	  lualine_c = { { 'filename', { path = 1 } } },
	  lualine_x = {},
	  lualine_y = {'progress'},
	  lualine_z = {},
  },
  extensions = {}
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_b, component)
end
-- Inserts a component in lualine_c at left section
local function ins_left_tabline(component)
  table.insert(config.tabline.lualine_c, component)
end

-- Inserts a component in lualine_x ot right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end
-- Inserts a component in lualine_x ot right section
local function ins_right_tabeline(component)
  table.insert(config.tabline.lualine_x, component)
end

ins_left {
	'lsp_progress',
	display_components = { 'lsp_client_name', 'spinner', { 'title', 'percentage', 'message' }},
	colors = {
		percentage = colors.cyan,
		title = colors.cyan,
		message = colors.cyan,
		spinner = colors.cyan,
		lsp_client_name = colors.magenta,
		use = true,
	},
	separators = {
		component = ' ',
		progress = ' | ',
		message = { pre = '(', post = ')'},
		percentage = { pre = '', post = '%% ' },
		title = { pre = '', post = ': ' },
		lsp_client_name = { pre = '[', post = ']' },
		spinner = { pre = '', post = '' },
	},
	timer = { progress_enddelay = 500, spinner = 500, lsp_client_name_enddelay = 1000 },
	--spinner_symbols = { ' ', ' ', ' ', ' ', ' ', ' ' },
	-- u0001F311
	--spinner_symbols = { '🌑 ', '🌒 ', '🌓 ', '🌔 ', '🌕 ', '🌖 ', '🌗 ', '🌘 ' },
	message = { commenced = 'In Progress', completed = 'Completed' },
}


ins_left {
  'diagnostics',
  sources = {'nvim_lsp'},
  symbols = {error = ' ', warn = ' ', info = ' '},
  color_error = colors.red,
  color_warn = colors.yellow,
  color_info = colors.cyan
}

ins_left_tabline {
	'diff',
	symbols = {added = ' ', modified = ' ', removed = ' '},
	color_added = colors.green,
	color_modified = colors.orange,
	color_removed = colors.red,
	condition = conditions.hide_in_width
}

require'lualine'.setup(config)
