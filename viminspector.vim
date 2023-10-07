let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval

nmap <Leader>dg <Plug>VimspectorLaunch
nnoremap <leader>dr :VimspectorReset<CR>

let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-node-debug2' ]
