@REM Edited By WinX
if "%1"=="hide" goto CmdBegin
start mshta vbscript:createobject("wscript.shell").run("""%~0"" hide",0)(window.close)&&exit
:CmdBegin
@set flag=1
@set IP=
@set 移动=@cmcc
@set 联通=@unicom
@set 电信=@telecom
@set 校园网=



@REM 修改此处的学号，密码为你校园网的学号和密码，注意，不要乱加空格
@set 学号=08191234
@set 密码=114514


@REM 修改此处的联通为你所使用的运营商的名字，如，联通，移动，电信，校园网
@set upload=%学号%%联通%

@echo off
:loop
if not "%IP%"=="" (
    if "%flag%"=="1" (
        @echo on
        curl "http://10.2.5.251:801/eportal/?c=Portal&a=login&login_method=1&user_account=%upload%&user_password=%密码%&wlan_user_ip=%IP:~1,12%"
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
@REM 这里有bug
goto :loop
