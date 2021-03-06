"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.vim/dein')
  call dein#begin('$HOME/.vim/dein')
  call dein#add('$HOME/.vim/dein/repos/github.com/Shougo/dein.vim')
  
  " 追加したいプラグインを入れていく
  call dein#add('scrooloose/nerdtree')
 
  "カラースキーマ系
  call dein#add('raphamorim/lucario')
  call dein#add("jdkanani/vim-material-theme")
  call dein#add("jonathanfilip/vim-lucius")

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------



"------------------------------------------
"カラースキーマが気に入らない場合，:help group-nameと:hiで設定する
"autocmd ColorScheme * highlight String ctermfg=213 guifg=#008800

"カラースキーマの利用
"色のテーマ"
".vim/colors 内にgit clone しておいたファイルを呼び出す
colorscheme lucius
"material-theme
"lucario
"lucius

syntax on
" 256色
set t_Co=256

"truecolor
set termguicolors

" 背景色
set background=dark

"------------------------------------------
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd


" 見た目系
" 行番号を表示
set number

" 現在の行を強調表示
" set cursorline

" 現在の行を強調表示（縦）
" set cursorcolumn

" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore

" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell

" 括弧入力時の対応する括弧を表示
set showmatch

" ステータスラインを常に表示
set laststatus=2

" コマンドラインの補完
set wildmode=list:longest

" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk

" シンタックスハイライトの有効化
syntax enable


" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-

" Tab文字を半角スペースにする
set expandtab

" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2

" 行頭でのTab文字の表示幅
set shiftwidth=2


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

"最下行にステータスを常に表示
set laststatus=2

"ホームポジション崩さないように
noremap <S-h>   ^
noremap <S-j>   }
noremap <S-k>   {
noremap <S-l>   $

"インサートモード中のカーソルの挙動
inoremap <C-e> <Esc>
inoremap <C-l> <Esc>$a
inoremap <C-h> <Esc>^i

"インサートモード中の括弧の補完
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>

" インサートモード中のダブルクォーテーション補完
inoremap " ""<ESC>i

