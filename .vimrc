set nocompatible

execute pathogen#infect()
syntax enable
filetype plugin indent on

set background=dark
""colorscheme solarized
"
"Note: for this to work, we need the Gnome terminal to install nord as well
colorscheme nord

nnoremap ,top :read ~/.snippets/top.txt<CR><CR>2jA<C-R>=strftime("%m/%d/%Y")<CR><ESC>jA

nnoremap ,fun :read ~/.snippets/fun.txt<ESC>jA

set expandtab

set hlsearch

set wildmenu

set showcmd

set colorcolumn=80

set relativenumber

set number

set cursorline


"Set the path
"NOTE: this is the'lazy' way and might run slow on big projects. See:
"https://gist.github.com/romainl/7e2b425a1706cd85f04a0bd8b3898805
set path=.,,**

"search the current directory and then up all the way to root for a tags
"folder
set tags=tags;/


"Make viminfo remember 1000 files, and global marks A-Z and 0-9
set viminfo='1000,f1


"syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_c_checkers = ['gcc']

let g:syntastic_javascript_checkers = ['jshint']

let g:syntastic_python_checkers = ['flake8']

let g:syntastic_sql_checkers = ['sqlint']
"end syntastic recommended settings

"You Complete Me

"Allow checkers to run even with YCM
let g:ycm_show_diagnostics_ui = 0

"Selectively allow loading of certain .ycm_extra_conf.py files
let g:ycm_extra_conf_globlist = ['/home/gavin/Dropbox/Reference/o/OSU/361/Super Nerds/super_nerds_backend/*']

"YCM shows documentation in a popup under the curser after delay
"let g:ycm_auto_hover = 'CursorHold'


" Map the leader key to ','

let mapleader=","

" Enable use of the mouse for all modes
set mouse=a

if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

"Bracket and such completion
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"airline theme
"let g:airline_solarized_bg='light'
let g:airline_powerline_fonts = 1 "fancy arrows, needs powerline fonts

"SNIPPETS

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"Indent Guides
"let g:indent_guides_enable_on_vim_startup = 1
set ts=4 sw=4 et
"let g:indent_guides_start_level = 2
"let g:indent_guides_guide_size = 1
"let g:indent_guides_auto_colors = 1
"let g:indent_guides_color_change_percent = 10

"IndentLines
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_color_term = 66 "Term colors

"Vim folding

set fdm=indent

"Retain Indent level on Folds, Better Styling
"from: https://github.com/chrisbra/vim_dotfiles/blob/master/plugin/CustomFoldText.vim
fu! CustomFoldText(string) "{{{1
    "get first non-blank line
    let fs = v:foldstart
    if getline(fs) =~ '^\s*$'
      let fs = nextnonblank(fs + 1)
    endif
    if fs > v:foldend
        let line = getline(v:foldstart)
    else
        let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
    endif
    let pat  = matchstr(&l:cms, '^\V\.\{-}\ze%s\m')
    " remove leading comments from line
    let line = substitute(line, '^\s*'.pat.'\s*', '', '')
    " remove foldmarker from line
    let pat  = '\%('. pat. '\)\?\s*'. split(&l:fmr, ',')[0]. '\s*\d\+'
    let line = substitute(line, pat, '', '')

"   let line = substitute(line, matchstr(&l:cms,
"	    \ '^.\{-}\ze%s').'\?\s*'. split(&l:fmr,',')[0].'\s*\d\+', '', '')

    let w = get(g:, 'custom_foldtext_max_width', winwidth(0)) - &foldcolumn - (&number ? 8 : 0)
    let foldSize = 1 + v:foldend - v:foldstart
    let foldSizeStr = " " . foldSize . " lines "
    let foldLevelStr = '+'. v:folddashes
    let lineCount = line("$")
    if has("float")
	try
	    let foldPercentage = printf("[%.1f", (foldSize*1.0)/lineCount*100) . "%] "
	catch /^Vim\%((\a\+)\)\=:E806/	" E806: Using Float as String
	    let foldPercentage = printf("[of %d lines] ", lineCount)
	endtry
    endif
    if exists("*strwdith")
	let expansionString = repeat(a:string, w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
    else
	let expansionString = repeat(a:string, w - strlen(substitute(foldSizeStr.line.foldLevelStr.foldPercentage, '.', 'x', 'g')))
    endif
    return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
endf

set foldtext=CustomFoldText('.')


"map <F5> to delete all trailing whitespace
:nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

"Remap the split navigations for easy navigation between splits. 
"So instead of ctrl-w then j, it’s just ctrl-j
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Customized version of folded text, idea by 
" http://www.gregsexton.org/2011/03/improving-the-text-displayed-in-a-fold/
"
"Vim Wiki
let g:vimwiki_list = [{'path': '/home/gavin/Dropbox/Reference/w/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]


