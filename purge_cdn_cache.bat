@echo off
chcp 65001 >nul
setlocal

echo ========================================================
echo   [LOL Cool] 正在刷新 jsDelivr CDN 边缘缓存...
echo ========================================================
echo.

echo [1/2] 正在刷新 version.json 缓存...
curl.exe -s "https://purge.jsdelivr.net/gh/AlwaysBusyLzc/cdn@lol_cool/taro/prod/1.0.0/version.json"
echo.
echo.

echo [2/2] 正在刷新 hotupdate_bundle.zip 缓存...
curl.exe -s "https://purge.jsdelivr.net/gh/AlwaysBusyLzc/cdn@lol_cool/taro/prod/1.0.0/hotupdate_bundle.zip"
echo.
echo.

echo ========================================================
echo   [完成] CDN 边缘缓存已刷新！客户端可立即获取最新版本。
echo ========================================================
echo.
pause
endlocal
