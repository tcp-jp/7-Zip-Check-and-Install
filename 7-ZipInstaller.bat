:sevenzip
dir "%programfiles(x86)%" | find /i "7-zip" && set path=%path%;%programfiles(x86)%\7-Zip\; && goto :eof
dir "%programfiles%" | find /i "7-zip" && set path=%path%;%programfiles%\7-Zip\; && goto :eof
powershell -command (new-object system.net.webclient).downloadfile('%sevenzipURL:~1,-1%', '%installpath:~1,-1%7zip.exe')
%installpath:~1,-1%7zip.exe /S
set path=%path%;%programfiles(x86)%\7-Zip\; && goto :eof
goto :eof
