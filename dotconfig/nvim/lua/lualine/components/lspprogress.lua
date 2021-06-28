local highlight = require('lualine.highlight')
local utils = require('lualine.utils.utils')

local LspProgress = require('lualine.component'):new()

print('Hello\n')
-- LuaFormatter off
LspProgress.default = {
	colors = {
	  percentage  = '#ffffff',
	  title  = '#ffffff',
	  message  = '#ffffff',
	},
	seperators = {
		seperator = ' | ',
		message = { pre = '(', post = ')'},
		percentage = { pre = '', post = '%% ' },
		title = { pre = '', post = ': ' },
	},
	display_components = { 'title', 'percentage', 'message' },
	timer = { enddelay = 500, spinner = 200 },
	--spinner_symbols_spinner = { '-', '/', '|', "\\" },
	spinner_symbols = { ' ', ' ', ' ', ' ', ' ', ' ' },
}

-- Information before and after information sent from the LSP
print('world\n')
LspProgress.config = {
	seperators = {
	},
	colors = {},
	-- The order to display the information from the LSP
	display_components = {},
	timer = {},
	spinner_symbols = {},
}
print('progress\n')
LspProgress.progress = {}

print('spinner\n')
LspProgress.spinner = { }
print('LspProgress started')
-- Initializer
LspProgress.new = function(self, options, child)
  local new_lsp_progress = self._parent:new(options, child or LspProgress)

  -- Setup default separators override these values with ones from the config.
  for i, j in pairs(LspProgress.default) do
--	  print(vim.inspect(j) .. '\n')
	  for k, l in pairs(j) do
		  LspProgress.config[i][k] = l
	  end
  end

  setup_spinner()

  -- Setup callback to get updates from the lsp to update lualine.
  new_lsp_progress.progress_callback = function (_, _, msg, client_id)
  	local key = msg.token
  	local val = msg.value

	-- print(vim.inspect(msg))

  	if key then
		if LspProgress.progress[key] == nil then
			LspProgress.progress[key] = { title = nil, message = nil, percentage = nil }
		end

		local progress = LspProgress.progress[key]

		--print(vim.inspect(progress))

  		if val then
  			if val.kind == 'begin' then
				progress.title = val.title
  			end
			if val.kind == 'report' then
				if val.percentage then
					progress.percentage = val.percentage
				end
				if val.message then
					progress.message = val.message
				end
  			end
			if val.kind == 'end' then
				if progress.percentage then
					progress.percentage = '100'
					progress.message = 'Completed'
				end
				vim.defer_fn(function() 
					LspProgress.progress[key] = nil
					LspProgress.update_progress()
				end, LspProgress.config.timer.enddelay)
			end
  		end
		LspProgress.update_progress()
		--print(vim.inspect(msg))
  	end
  end

  new_lsp_progress.register_progress = function()
	  vim.lsp.handlers["$/progress"] = new_lsp_progress.progress_callback
  end

  new_lsp_progress:register_progress()

  -- print(LspProgress.progress.message)
  return new_lsp_progress
end

LspProgress.update_progress = function() 
  	local progress_message = ''
	local result = {}
	for _, progress in pairs(LspProgress.progress) do
		local p = {}
		if progress.title then
			for _, i in pairs(LspProgress.config.display_components) do
				if progress[i] then
					table.insert(p, LspProgress.config.seperators[i].pre .. progress[i] .. LspProgress.config.seperators[i].post)
				end
			end
			table.insert(result, table.concat(p, ''))
		end
--	print(vim.inspect(progress))
	end
	if #result > 0 then
		LspProgress.progress_message = table.concat(result, LspProgress.config.seperators.seperator)
	else
		LspProgress.progress_message = ''
	end
end

LspProgress.update_status = function(self)
	if LspProgress.progress_message and LspProgress.progress_message ~= '' then
		return LspProgress.spinner.symbol .. LspProgress.progress_message
	end
	return nil
end
function setup_spinner()
	LspProgress.spinner.index = 0
	LspProgress.spinner.symbol_mod = #LspProgress.config.spinner_symbols 
	local timer = vim.loop.new_timer()
	timer:start(0, LspProgress.config.timer.spinner,
	function()
	--	print('Spinner\n\r')
	--	print(LspProgress.spinner.index .. '\n\r')
		LspProgress.spinner.index = (LspProgress.spinner.index % LspProgress.spinner.symbol_mod) + 1
	--	print(LspProgress.spinner.index .. '\n\r')
		LspProgress.spinner.symbol = LspProgress.config.spinner_symbols[LspProgress.spinner.index]
	--	print(LspProgress.spinner.index .. ': ' .. LspProgress.spinner.symbol .. '\n\r')
	end)
end

return LspProgress
