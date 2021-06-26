local highlight = require('lualine.highlight')
local utils = require('lualine.utils.utils')

local LspProgress = require('lualine.component'):new()

-- LuaFormatter off
LspProgress.default_colors = {
  percentage  = '#ffffff',
  title  = '#ffffff',
  message  = '#ffffff',
}

-- Information before and after information sent from the LSP
LspProgress.default_separators = {
	seperator = ' | ',
	message = { pre = '(', post = ')'},
	percentage = { pre = '', post = '%%' },
	title = { pre = '', post = ': ' },
}

LspProgress.seperators = {
}

-- The order to display the information from the LSP
LspProgress.display_components = { 'title', 'percentage', 'message' }

LspProgress.progress = {}

-- Initializer
LspProgress.new = function(self, options, child)
  local new_lsp_progress = self._parent:new(options, child or LspProgress)

  for i, j in pairs(LspProgress.default_separators) do
	  LspProgress.seperators[i] = j
  end

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

  		if val ~= nil then
  			if val.kind == 'begin' then
				progress.title = val.title
  			end
			if val.kind == 'report' then
				if val.percentage ~= nil then
					progress.percentage = val.percentage
				end
				if val.message ~= nil then
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
				end, 1000)
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
			for _, i in pairs(LspProgress.display_components) do
				if progress[i] then
					table.insert(p, LspProgress.seperators[i].pre .. progress[i] .. LspProgress.seperators[i].post)
				end
			end
			table.insert(result, table.concat(p, ''))
		end
--	print(vim.inspect(progress))
	end
	if #result > 0 then
		LspProgress.progress_message = table.concat(result, LspProgress.seperators.seperator)
	else
		LspProgress.progress_message = ''
	end
end

LspProgress.update_status = function(self)
	return LspProgress.progress_message
end

return LspProgress
