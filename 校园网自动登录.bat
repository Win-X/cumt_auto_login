@REM edited by WinX
@set �ƶ�=@cmcc
@set ��ͨ=@unicom
@set ����=@telecom
@set У԰��=


@REM �޸Ĵ˴���ѧ�ţ�����Ϊ��У԰����ѧ�ź�����
@set ѧ��=********
@set ����=******

@REM �޸Ĵ˴���IP��ַΪ�㵱ǰ�����IP��ַ������һ����10��ͷ��
@set IP��ַ=10.*.*.*

@REM �޸Ĵ˴�����ͨΪ����ʹ�õ���Ӫ�̵����֣��磬��ͨ���ƶ������ţ�У԰��
@set payload=%ѧ��%%��ͨ%

curl "http://10.2.5.251:801/eportal/?c=Portal&a=login&login_method=1&user_account=%payload%&user_password=%����%&wlan_user_ip=%IP��ַ%"