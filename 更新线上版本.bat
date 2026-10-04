@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo [1/3] 同步发布目录...
call "%~dp0sync-release.sh"
if errorlevel 1 goto fail
echo [2/3] 提交并推送...
git add docs/index.html README.md sync-release.sh
git commit -m "docs: 同步展示页到发布目录" || echo （无改动可提交）
git push origin main
if errorlevel 1 goto fail
echo [3/3] 完成。线上地址：
echo https://zalgo1024.github.io/ternary-structure-theory-showcase/
pause
exit /b 0
:fail
echo 出了点问题，见上方报错。
pause
exit /b 1
