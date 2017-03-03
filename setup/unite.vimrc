autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
	" Overwrite settings.
	inoremap <silent><buffer><expr> <C-s> unite#do_action('split')
	inoremap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
	nnoremap <buffer> <C-j> <plug>(unite_toggle_auto_preview)
	" nnoremap <silent><buffer><expr> r     unite#do_action('rename')
	nnoremap <silent> <leader>r :call unite#action#do_candidates('rename',unite#get_candidates([['file', expand('%')]]))<CR>

	" nnoremap <buffer> <esc> <plug>(unite_exit)
	" inoremap <buffer> <TAB> <plug>(unite_select_next_line)
	" inoremap <buffer> <S-TAB> <plug>(unite_select_previous_line)
	" inoremap <buffer> <BS> <BS>
endfunction
