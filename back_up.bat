@echo off
:loop
git config --global core.autoCRLF false
set times=%date:~0,4%_%date:~5,2%_%date:~8,2%-%time:~0,2%_%time:~3,2%_%time:~6,2%
echo %times%
echo �ꎞ�t�@�C�����R�s�[��...
echo d | xcopy /E "<�o�b�N�A�b�v�������t�@�C���̃f�B���N�g��>" "backup\%times%"

git add "backup/%times%"
echo git��ƃ��[�J���������N��...
git pull origin main

echo �R�~�b�g��...
git commit -m "�ŏI�X�V %times%"
git remote add origin <�����Ɏ�����GITURL(https)��u��>
git branch -M main
echo �v�b�V����...
git push -u origin main
echo �o�b�N�A�b�v���������܂����I

rd /s /q "backup\%times%"

timeout /nobreak <�o�b�N�A�b�v����Ԋu(�b)>
goto loop