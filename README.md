自分用Vimの設定ファイル

・Windowsでプラグインのインストール、実行に失敗するとき

  非ANCII文字のUserフォルダをANCII文字のシンボリックリンクで張り替えることで対応していましたが、今回から.vimフォルダをCドライブ直下に置き、vim.exeがあるフォルダのvimrcに
	let $HOME = "C:/VIM/"
を追記することで解決しています。

・runpde.BATについて
  PROCESSINGの.pdeファイルをコンパイルし、C:\libraly\processingに出力、実行するものです。processing-java.exeにパスが通ってないと失敗します。
:Quickrunで実行されます。
