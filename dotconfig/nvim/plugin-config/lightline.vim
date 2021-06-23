"function LspStatus()
"	return "Oi!!!"
"endfunction

" Register the components:
let g:lightline = {}

let g:lightline.component_expand = {
\		'gitbranch' : 'gitbranch#name',
\	}

let g:lightline.component_function = {
\		'filetype': 'MyFiletype',
\		'fileformat': 'MyFileformat',
\		'lllsp_status' : 'LightlineLspStatus',
\	}


function! MyFiletype()
	return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
	return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! LightlineLspStatus()
	return luaeval("LatestLspMessageForLightline()") " lua LatestLspMessageForLightline()
endfunction

" Add the components to the lightline:
let g:lightline.active = {
\			'left': [
\				[ 'mode', 'paste' ],
\				[ 'filename', 'modified', 'readonly'],
\				[ 'lllsp_status' ],
\			],
\			'right': [ 
\				[ 'gitbranch' ],
\				[ 'lsp_info', 'lsp_hints', 'lsp_errors', 'lsp_warnings', 'lsp_ok' ], 
\				[ 'percent' ],
\				[ 'fileformat', 'fileencoding', 'filetype' ],
\			],
\ }


let g:lightline.inactive = {
\ 'left': [ [ 'filename' ] ],
\ 'right': [ [ 'lineinfo' ],
\            [ 'percent' ] ] }

" register compoments:
" lua require('jg.lightline.lsp').setup()
call lightline#lsp#register()

lua <<EOF

local LlLspMsg = ''

function LatestLspMessageForLightline()
	return LlLspMsg	
end

local function progress_callback(_, _, msg, client_id)

	local tok = msg.token
	local val = msg.value
	LlLspMsg = ''
	if tok ~= nil then
		if val ~= nil then
			if (val.kind == 'start' or val.kind == 'report') then
				LlLspMsg = ' ' .. tok
			end
			if val.percentage ~= nil then
				LlLspMsg = LlLspMsg .. ': ' .. val.percentage .. '%'
			end
		end
	end
	vim.api.nvim_command('doautocmd <nomodeline> User LspMessageUpdate')
end

local function register_progress() vim.lsp.handlers["$/progress"] = progress_callback end

register_progress()

EOF

" autocmd User LspMessageUpdate call lightline#update()

