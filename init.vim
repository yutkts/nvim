set number		"行番号を表示
set autoindent		"改行時に自動でインデントする
set tabstop=2		"タブを何文字の空白に変換するか
set shiftwidth=2	"自動インデント時に入力する空白の数
set expandtab		"タブ入力を空白に変換
set splitright		"画面を立て分割する際に右に開く
set showmode    "入力モードを表示する
set hls			"検索した文字をハイライトする

filetype off

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.config/nvim/')
  call dein#begin('~/.config/nvim/')

  " Let dein manage dein
  " Required:
  call dein#add('~/.config/nvim/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('scrooloose/nerdtree')
  call dein#add('itchyny/lightline.vim')
  call dein#add('cohama/lexima.vim')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

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

"NERDTreeを自動起動させる
autocmd VimEnter * execute 'NERDTree'

"nodeのパスを通す
let g:node_host_prog = system('echo -n $(which neovim-node-host)')
