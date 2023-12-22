:: The structure of the client directory is:
::
:: Root
::  * Dat
::      - Cooked data resides here
::  * BBOnline.exe
::  * readme.txt
::  * textColors.txt

@echo off

pushd ..

:: Delete any files already staged
del StagingFilesClientFancy\* /F /S /Q >nul 2>&1

:: Make the directories up front and suppress if they can't (usually because they already exist)
mkdir StagingFilesClientFancy >nul 2>&1
mkdir StagingFilesClientFancy\Dat >nul 2>&1

:: Copy our files over with overwrite
xcopy Assets\ArtCookedFancy\* StagingFilesClientFancy\Dat\ /Y
xcopy Assets\readme.txt StagingFilesClientFancy\ /Y
xcopy Assets\textColors.txt StagingFilesClientFancy\ /Y

xcopy Build\Win32\Release\BBOnline\BBOnline.exe StagingFilesClientFancy\ /Y

:: Run the index generator
Build\Win32\Release\IndexMaker\IndexMaker.exe %~dp0..\StagingFilesClientFancy\ %~dp0..\index.dat

:: Move the dat file
move %~dp0..\index.dat %~dp0..\StagingFilesClientFAncy\index.dat
popd
