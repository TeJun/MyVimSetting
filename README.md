# My Vim Setting

## 針對 Vim 作一些基本配置的設定

* 安裝[NERDTree](https://github.com/scrooloose/nerdtree)套件，可使用<F8>來切換，這是一套樹狀結構檢視工具
* 編碼設定UTF-8, 讀取檔案編碼設定UTF-8與CP950(一般Windows上的檔案編碼)
* 可在畫面上使用滑鼠鼠標與滾輪，但在MAC環境的終端機下無法正常運作
* 語法高亮度顯示
* 設定背景為黑色，佈景為[gruvbox](https://github.com/morhetz/gruvbox)
* 高亮度顯示當前行，並顯示行號，於右下角顯示所在座標
* 可增量搜尋
* 多餘空格以紅色顯示
* 存檔時，自動刪除多餘空格

## gitconfig設定檔

鑑於個人需求，另外提供gitconfig檔的設定

* 設定Git使用者名稱與信箱
* 增加顏色區別，適用在diff, status, brance, log時
* 自動判斷換行符號處理

## Installation

* 將安裝腳本檔(install.sh)檔變更為可執行
```
cd MyVimSetting\
chmod +x install.sh
```
* 執行install.sh來進行安裝設定
```
sh install.sh
```

### Vim Theme & NERD Tree Screenshot

![Vim Theme Screenshot](https://i.imgur.com/X6EtgwY.png)
