
function! CocCurrentFunction()
	return get(b:, 'coc_current_function', '')
endfunction

let g:lightline = {
	\ 'colorscheme' : 'wombat',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\ 	     [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified', 'relativepath' ] ]
	\ },
	\ 'component_function' : {
	\   'cocstatus': 'coc#status',
	\   'currentfunction': 'CocCurrentFunction'
	\ }
	\ }
