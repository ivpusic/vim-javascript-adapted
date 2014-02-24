set nocompatible

execute pathogen#infect()
syntax on
filetype plugin indent on

" open NerdTree automatic
autocmd vimenter * NERDTree

set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
" allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
"    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
"    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set shortmess+=I                " hide the launch screen
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set nobackup
set noswapfile
set pastetoggle=<F2>

" color scheme
set t_Co=256
colorscheme molokai

" python-mode config
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
let g:pymode_rope_complete_on_dot = 1
let g:pymode_folding = 0
let g:pymode_lint = 1
let g:pymode_rope = 1
let g:pymode_rope_goto_definition_cmd = 'e'
let g:pymode_lint_ignore = "E501"
let g:pymode_rope_rename_bind = '<C-c>rr'

"emmet
imap <C-o> <C-y>,

"handlebars
au BufNewFile,BufRead *.hbs set filetype=handlebars
au BufRead,BufNewFile *.ember set filetype=handlebars

" node-vim
set suffixesadd+=.js

" node-airline
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled = 1
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
let g:airline_section_y = '%t'
let g:airline_section_c = ''

" command-t
set wildignore+=*.o,*.obj,.git,bower_components/**,node_modules/**

" node-js completion
let g:nodejs_complete_config = {
			\  'js_compl_fn': 'jscomplete#CompleteJS',
			\  'max_node_compl_len': 15
			\}

" easy-tags
let g:easytags_auto_highlight = 0

" NERDTree
let NERDTreeIgnore = ['\.pyc$']

" js-hint
let g:syntastic_javascript_checkers = ['jshint']


" key bindings
:noremap <C-a> g0
:noremap <C-e> g$
inoremap <C-a> <Home>
inoremap <C-e> <End>

" small speedup
:set ttyfast
:set lazyredraw

" FUNCTIONS
function! NERDTreeQuit()
	redir => buffersoutput
	silent buffers
	redir END
	"                     1BufNo  2Mods.     3File           4LineNo
	let pattern = '^\s*\(\d\+\)\(.....\) "\(.*\)"\s\+line \(\d\+\)$'
	let windowfound = 0

	for bline in split(buffersoutput, "\n")
		let m = matchlist(bline, pattern)

		if (len(m) > 0)
			if (m[2] =~ '..a..')
				let windowfound = 1
			endif
		endif
	endfor

	if (!windowfound)
		quitall
	endif
endfunction
autocmd WinEnter * call NERDTreeQuit()
