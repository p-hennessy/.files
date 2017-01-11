set nocompatible
filetype indent plugin on
syntax on
set wildmenu
set showcmd
set hlsearch

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline


"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
" set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell
set noerrorbells
set novisualbell
set tm=500
set encoding=utf8
set ffs=unix,dos,mac

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
"set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>


"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab
retab

"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>
"------------------------------------------------------------
"
au BufWritePost   *.sh             !chmod +x %
au BufWritePost   *.pl             !chmod +x %

"General Customization - jcd
" Below turns on verticle cursor crosshair
set cursorcolumn
set showmatch
set mat=2
set modeline modelines=1    " use settings from file being edited
set wb
set swapfile
set nohlsearch
set sts=2
set foldcolumn=0
set nofen
syntax enable
set background=dark
" Below turn on crosshairs
set cursorline cursorcolumn
set noignorecase
set nosmartcase

"### Added for YAML Markdown
if version < 600
      syntax clear
  elseif exists("b:current_syntax")
        finish
    endif
    syntax clear

    syn match yamlDelimiter "[:,-]"
    syn match yamlBlock "[\[\]\{\}\|\>]"
    syn match yamlOperator "[?^+-]\|=>"

    syn region yamlComment  start="\#" end="$"
    syn match yamlIndicator "#YAML:\S\+"

    syn region yamlString start="'" end="'" skip="\\'"
    syn region yamlString start='"' end='"' skip='\\"' contains=yamlEscape
    syn match  yamlEscape +\\[abfnrtv'"\\]+ contained
    syn match  yamlEscape "\\\o\o\=\o\=" contained
    syn match  yamlEscape "\\x\x\+" contained

    syn match  yamlType "!\S\+"

    syn keyword yamlConstant NULL Null null NONE None none NIL Nil nil
    syn keyword yamlConstant TRUE True true YES Yes yes ON On on
    syn keyword yamlConstant FALSE False false NO No no OFF Off off

    syn match  yamlKey  "\w\+\ze\s*:"
    syn match  yamlAnchor "&\S\+"
    syn match  yamlAlias  "*\S\+"

    " Setupt the hilighting links
    "
    " hi link yamlConstant Keyword
    " hi link yamlIndicator PreCondit
    " hi link yamlAnchor  Function
    " hi link yamlAlias Function
    " hi link yamlKey   Identifier
    " hi link yamlType  Type
    "
    " hi link yamlComment Comment
    " hi link yamlBlock Operator
    " hi link yamlOperator  Operator
    " hi link yamlDelimiter Delimiter
    " hi link yamlString  String
    " hi link yamlEscape  Special

" Vim settings {{{2
" vim: ts=8 fdm=marker
"augroup json_autocmd
"  autocmd!
"  autocmd FileType json set autoindent
"  autocmd FileType json set formatoptions=tcq2l
"  autocmd FileType json set textwidth=78 shiftwidth=2
"  autocmd FileType json set softtabstop=2 tabstop=8
"  autocmd FileType json set expandtab
"  autocmd FileType json set foldmethod=syntax
"augroup END

" contents of minimal .vimrc
"execute pathogen#infect()
syntax on
filetype plugin indent on

"Set vi to wrap lines @ 80 characters & preserve words
":set formatoptions+=w
":set tw=80

":nnoremap Q gqip
