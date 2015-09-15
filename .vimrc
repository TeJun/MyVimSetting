"Tag List, need use ctags產生標籤,mac上設定仍有問題
nmap <f9> <esc>:Tlist<cr>
"Toggles NERD Tree view (file viewer)
nmap <F8> <ESC>:NERDTreeToggle<CR>

" 檔案編碼
set encoding=utf-8
set fileencodings=utf-8,cp950

"-----------------------
" 基本設置
"-----------------------
"不使用與vi兼容的鍵盤模式
set nocompatible

"檢測文件的類型
filetype on

"記錄歷史的行數
set history=500

set shiftwidth=2 " 設定縮排寬度 = 4
set tabstop=4    " tab 的字元數
set softtabstop=4
set expandtab

"增加sparkup套件
filetype plugin on

" 可以在buffer的任何地方使用鼠標
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"-----------------------
" 界面設置
"----------------------
"語法高亮度顯示
syntax enable

"設定背景暗色系or亮色系與佈景
"set background=light
"colorscheme solarized
"colorscheme github

set background=dark
"colorscheme solarized
colorscheme gruvbox
"colorscheme atom-dark
"colorscheme jellybeans

"顯示行號
set nu!

"高亮顯示當前行
set cursorline

"一般的 linux 裝好 vim 應該都會有這個配色
"colorscheme torte

"背景使用黑色
"set background=dark

"去除vim的GUI版本中的 toolbar
"set guioptions-=T

"在編輯過程中，在右下角顯示光標位置
set ruler

"always show the status line
set laststatus=2

"---------------------
" 格式設置
"---------------------
"自動換行
set wrap

"整詞換行
set linebreak

"自動對齊
set autoindent

"智能對齊
set smartindent

"設置自動縮進
set ai!

"使退格鍵可用
set backspace=2

"---------------------
"編程設置
"---------------------

set nocompatible " VIM 不使用和 VI 相容的模式

"設置匹配模式，類似當輸入一個左括號時會匹配相應的那個右括號
set showmatch

"--------------------
" 搜索相關設置
"-------------------

"默認情況下，搜索結果是高亮度顯示的，該設置關閉高亮顯示
"set nohlsearch

"隨輸入增量搜索
set incsearch

" 空隔增加紅色標示
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'

" Remove trailing whitespace when writing a buffer, but not for diff files.
" From: Vigil <vim5632@rainslide.net>
function RemoveTrailingWhitespace()
	if &ft != "diff"
		let b:curcol = col(".")
		let b:curline = line(".")
		silent! %s/\s\+$//
		silent! %s/\(\s*\n\)\+\%$//
		call cursor(b:curline, b:curcol)
	endif
endfunction
autocmd BufWritePre * call RemoveTrailingWhitespace()
