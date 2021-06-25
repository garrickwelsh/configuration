local highlight = require('lualine.highlight')
local utils = require('lualine.utils.utils')

local LspProgress = require('lualine.component'):new()

-- LuaFormatter off
LspProgress.default_colors = {
  info  = '#ffffff',
}

LspProgress.progress = { }

-- Initializer
LspProgress.new = function(self, options, child)
  local new_lsp_progress = self._parent:new(options, child or LspProgress)

  new_lsp_progress.progress_callback = function (_, _, msg, client_id)
  	local tok = msg.token
  	local val = msg.value
  	local progress_message = ''

	-- print(vim.inspect(msg))

  	if tok ~= nil then
		if LspProgress.progress[tok] == nil then
			LspProgress.progress[tok] = { title = nil, message = nil, percentage = nil }
		end

		local progress = LspProgress.progress[tok]

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
				LspProgress.progress[tok] = nil
			end
  		end
		for _, progress in pairs(LspProgress.progress) do
			if progress.title ~= nil then
				if progress_message ~= '' then
					progress_message = progress_message .. ' | '
				end
				progress_message = progress_message .. progress.title .. ': ' 
				if progress.percentage ~= nil then
					progress_message = progress_message .. progress.percentage .. '%% ' .. '(' .. progress.message .. ')'
				elseif progress.message ~= nil then
					progress_message = progress_message .. progress.message
				end
			end
	--	print(vim.inspect(progress))
		end
		LspProgress.progress_message = progress_message
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

LspProgress.update_status = function(self)
	return LspProgress.progress_message
end

return LspProgress
