@REM edited by WinX
@set 移动=@cmcc
@set 联通=@unicom
@set 电信=@telecom
@set 校园网=


@REM 修改此处的学号，密码为你校园网的学号和密码
@set 学号=********
@set 密码=******

@REM 修改此处的IP地址为你当前网络的IP地址，矿大的一般是10开头的
@set IP地址=10.*.*.*

@REM 修改此处的联通为你所使用的运营商的名字，如，联通，移动，电信，校园网
@set payload=%学号%%联通%

curl "http://10.2.5.251:801/eportal/?c=Portal&a=login&login_method=1&user_account=%payload%&user_password=%密码%&wlan_user_ip=%IP地址%"