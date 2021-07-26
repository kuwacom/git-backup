@echo off
:loop
git config --global core.autoCRLF false
set times=%date:~0,4%_%date:~5,2%_%date:~8,2%-%time:~0,2%_%time:~3,2%_%time:~6,2%
echo %times%
echo 一時ファイルをコピー中...
echo d | xcopy /E "<バックアップしたいファイルのディレクトリ>" "backup\%times%"

git add "backup/%times%"
echo git上とローカルをリンク中...
git pull origin main

echo コミット中...
git commit -m "最終更新 %times%"
git remote add origin <ここに自分のGITURL(https)を置く>
git branch -M main
echo プッシュ中...
git push -u origin main
echo バックアップが完了しました！

rd /s /q "backup\%times%"

timeout /nobreak <バックアップする間隔(秒)>
goto loop