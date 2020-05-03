 " reset augroup
 augroup MyAutoCmd
     autocmd!
 augroup END
  
 " ENV
 let $CACHE = empty($XDG_CACHE_HOME) ? expand('$HOME/.cache') : $XDG_CACHE_HOME
 let $CONFIG = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config') : $XDG_CONFIG_HOME
 let $DATA = empty($XDG_DATA_HOME) ? expand('$HOME/.local/share') : $XDG_DATA_HOME
 
 " Load rc file
 function! s:load(file) abort
     let s:path = expand('$CONFIG/nvim/rc/' . a:file . '.vim')
 
     if filereadable(s:path)
         execute 'source' fnameescape(s:path)
     endif
 endfunction
 
 call s:load('plugins')
 
 "--------------ここまではいじらない
 
 "カラースキーマの設定
 syntax enable
 
 "gitから持ってきたカラースキーマが少し気に入らない場合
 "カラースキーマを呼び出す前に下記の"autocmd~"で変更できる（下記はコメントをBlueに）
 autocmd ColorScheme * highlight Comment ctermfg=4 guifg=#ff0000
 
 colorscheme lucario
 "colorscheme material-theme
 "
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
 " 行番号を表示
 set number

 " 現在の行を強調表示
 " set cursorline 
 
 " 現在の行を強調表示（縦）
 " set cursorcolumn "みづらいのでオフ
 行末の1文字先までカーソルを移動できるように
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
 inoremap [ []<ESC>i
 inoremap [<Enter> []<Left><CR><ESC><S-o>
 
 " インサートモード中のクォーテーション補完
 inoremap " ""<ESC>i
 inoremap ' ''<ESC>i
