@echo off

	rem ---------- ʹ��˵��: ----------

	rem -p����ָ��Ҫ���Եİ���
	rem --throttle ÿ���¼��ļ��ʱ�䣬 ��λΪ����
	rem --tee log��־�ض���
	rem -s ָ��seedֵ�� ���seedֵ��ͬ�� ��ô����ִ�е�����¼�Ҳ��ͬ
	rem -v ָ����־���� һ����3����־����0��1��2(-v : ����0; -v -v ����1; -v -v -v ����2)
	rem -v Ĭ��ѡ����ṩ������ʾ��������ɺ����ս����������Ϣ
	rem -v -v �ṩ��Ϊ��ϸ����־�� ����ÿ�����͵�Activity��ʱ����Ϣ
	rem -v -v -v ����ϸ����־�� �����˲�����ѡ��/δѡ�е�Activity��Ϣ

	rem kill MonkeyTest  adb shell ps | findstr monkey    adb shell kill PID

echo  ---------- ִ��Monkey���� ----------
powershell "adb shell monkey -p com.manboker.headportrait --throttle 300 -s 100 -v -v 50000 | tee log.log"

echo. & pause
