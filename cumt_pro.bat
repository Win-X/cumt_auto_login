@REM Edited By WinX
if "%1"=="hide" goto CmdBegin
start mshta vbscript:createobject("wscript.shell").run("""%~0"" hide",0)(window.close)&&exit
:CmdBegin
@set flag=1
@set IP=
@set �ƶ�=@cmcc
@set ��ͨ=@unicom
@set ����=@telecom
@set У԰��=



@REM �޸Ĵ˴���ѧ�ţ�����Ϊ��У԰����ѧ�ź����룬ע�⣬��Ҫ�Ҽӿո�
@set ѧ��=08192947
@set ����=263013


@REM �޸Ĵ˴�����ͨΪ����ʹ�õ���Ӫ�̵����֣��磬��ͨ���ƶ������ţ�У԰��
@set upload=%ѧ��%%��ͨ%

@echo off
:loop
if not "%IP%"=="" (
    if "%flag%"=="1" (
        @echo on
        curl "http://10.2.5.251:801/eportal/?c=Portal&a=login&login_method=1&user_account=%upload%&user_password=%����%&wlan_user_ip=%IP:~1,12%"
        @echo off
        set flag=0  
        timeout /T 2
    ) else (
        set flag=0  
        ping baidu.com -n 1 
        timeout /T 600
    )
) else (
    set flag=1
    timeout /T 2
)
for /f "tokens=2 delims=:" %%b in ('ipconfig ^| find /i "ipv4" ^| findstr  /r 10\..\..*') do set IP=%%b
@REM ������bug
goto :loop