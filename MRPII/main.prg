*****************************************
*	����:	MAIN.PRG
*	����:	����
*	ʱ��:	1997-1-3
*****************************************

MODIFY Window Screen Title '��������ϵͳ' Icon file zy\icon\SCGL.ico
Zoom Window Screen Max
SET Century On
SET Date To YMD
SET Currency To '��'
SET  Mark to '-'
SET Exclusive Off
SET Delete on
Set talk off
Set status bar off
set safety off
PUBLIC cOpr,nHandle,cUser
nHandle=0
cOpr=''
cUser=''

Set Procedure To Main
ON SHUTDOWN DO quitMain
nHandle=SqlConnect("MRPII_SERVER","sa","")
IF nHandle<0
	=MessageBox("���ݿ����Ӵ����������Ա��ϵ��",16,"���Ӵ���")
	Return
ENDIF
=DoSQL("USE MRPII")
Do Form ��ӭ
DO Form ����
DO  main.mpr
READ Events

Procedure QuitMain
IF MessageBox('�����Ҫ�˳�����������ϵͳ����?',33,'�˳�ϵͳ')=1
	Clear all
	CLOSE all
	QUIT
ELSE
	RETURN
ENDIF