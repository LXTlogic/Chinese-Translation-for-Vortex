@echo off
color 37
mode con cols=36 lines=20
title Vortex���ĺ�����װ�ű�
echo Vortex���ĺ�����װ�ű�
echo.
echo �ű����ߣ�liuyanxi
echo.
echo ==============================
echo.
if exist zh (
goto B
) else (
goto ERROR2
)
:B
if "%APPDATA%" == "" (
		goto ERROR
	)
set vortexpath=%APPDATA%\Vortex
:F
tasklist | find /i "vortex.exe" >nul
if "%errorlevel%"=="1" (goto A) else (goto G)
:A
echo ����������ʼ��װ����...
pause >nul
cls
md "%vortexpath%\locales\zh" >nul 2>nul
copy /y zh %vortexpath%\locales\zh
if %errorlevel% geq 1 (
goto ERROR3
) else (
goto E
)
:E
echo.
echo ==============================
echo.
echo ����ִ�гɹ���
echo.
echo ��װ��ɺ�����Ҫ��Vortex�����룺SETTINGS-INTERFACE-LANGUAGEѡ�����ġ�
echo.
echo ������Ľű����д������⣬��Է����и��õĽ��飬����github��Ŀ��liuyanxi975/Chinese-Translation-for-Vortex�ύissues��pr���ǳ���л��
echo.
echo ��������˳��ű�....
pause >nul
exit
:ERROR
echo �Զ���ȡĿ¼ʧ�ܣ�����Ҫ�ֶ�����һЩ������ÿһ����������趨Ĭ��ֵ����ʹ��Ĭ��ֵ��ֱ�ӻس����ɡ�
echo.
echo ���������ʾ���˽Ⲣ����...
pause >nul
:D
cls
set name=Administrator
set /p name=���������ļ�����û�����Ĭ��Administrator����
set drive=C
echo.
set /p drive=����������ϵͳ�̣�������ĸ��Ĭ��C�̣���
set vortexpath=%drive%:\Users\%name%\AppData\Roaming\vortex
echo.
if exist %vortexpath% (
echo �趨��ɣ�
echo.
goto A
) else (
echo ���������޷��ҵ�Ŀ¼�����������������������������ʧ�����ֶ���װ��
pause >nul
goto D
)
:ERROR2
echo �뽫�����ļ��С�zh���ͱ��ű�������ͬһĿ¼�����ԣ�
echo.
echo ��������˳��ű�....
pause >nul
exit
:ERROR3
echo.
echo ==============================
echo.
echo ����ִ�д��󣡾��������鿴������ʾ��
echo.
echo �������޷��õ�����볢���ֶ���װ,�ֶ���װ�̳���ѹ��������վ����!
echo.
echo �����Ը�����github��Ŀ��liuyanxi975/Chinese-Translation-for-Vortex�ύissues����ȡ����ϵ���ǳ���л��
echo.
echo ��������˳��ű�....
pause >nul
exit
:G
if "%off%" == "1" (
		goto ERROR4
	)
echo ��⵽����������Vortex
echo �ű����Զ��ر�Vortex
echo ������������
pause >nul
cls
echo ���ڹر�...
taskkill /f /im vortex.exe >nul
set off=1
timeout /nobreak /t 3 >nul
cls
echo Vortex���ĺ�����װ�ű�
echo.
echo �ű����ߣ�liuyanxi
echo.
echo ==============================
echo.
goto F
:ERROR4
cls
echo.
echo ==============================
echo.
echo �ر�Vortexʧ�ܣ��볢���ֶ��رպ������д˽ű���
echo.
echo ��������˳��ű�....
pause >nul
exit