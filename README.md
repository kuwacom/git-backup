# git-backup
gitに定期的にファイルをバックアップするプログラム(windows用)
# 使い方
まず初めに`setup.bat`を実行してGITを設定します
その後`back_up.bat`の`echo d | xcopy /E "<バックアップしたいファイルのディレクトリ>" "backup\%times%"`と
`git remote add origin <ここに自分のGITURL(https)を置く>`と`timeout /nobreak <バックアップする間隔(秒)>`を
自分の値に書き換えます
その後`start.bat`を実行することで指定したリポジトリにバックアップされます
