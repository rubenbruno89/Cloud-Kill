@ECHO OFF

:START
cls
%homedrive%
cd %USERPROFILE%
cd..
set profiles=%cd%

for /f "tokens=* delims= " %%u in ('dir /b/ad') do (

cls
title Deletando %%u Dropbox. . .
if exist "%profiles%\%%u\Dropbox" echo Deletando....
if exist "%profiles%\%%u\Dropbox" cd "%profiles%\%%u\Dropbox"
if exist "%profiles%\%%u\Dropbox" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\Dropbox" rmdir /s /q "%profiles%\%%u\Dropbox"

cls
title Deletando %%u Google Drive. . .
if exist "%profiles%\%%u\Google Drive" echo Deletando....
if exist "%profiles%\%%u\Google Drive" cd "%profiles%\%%u\Google Drive"
if exist "%profiles%\%%u\Google Drive" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\Google Drive" rmdir /s /q "%profiles%\%%u\Google Drive"

cls
title Deletando %%u Google Drive. . .
if exist "%profiles%\%%u\OneDrive" echo Deletando....
if exist "%profiles%\%%u\OneDrive" cd "%profiles%\%%u\OneDrive"
if exist "%profiles%\%%u\OneDrive" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\OneDrive" rmdir /s /q "%profiles%\%%u\OneDrive"

)

cls
goto END


:END
exit
