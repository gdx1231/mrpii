*****************************************
*	����:	MAIN.PRG
*	����:	����
*	ʱ��:	1998-12-21
*****************************************
MODIFY Window  Screen Title '�����������ϵͳ-����ר�� v2.0'
zoom Window Screen Max
SET Century On
SET Date To YMD
SET Currency To '��'
SET  Mark to '-'
SET Exclusive Off
SET Delete on
Set talk off
Set status bar off
set safety off

Public nHandle,cOpr,cUser

nHandle=SqlConnect("MRPII_SERVER","sa","gdx1231")

nCs=5
Do While nHandle<0
	nHandle=SqlConnect("MRPII_SERVER","sa","gdx1231")
	nCs=nCs+1
	IF nCs>10
		=MessageBox("���ݿ����Ӵ����������Ա��ϵ",16,"ʧ��!!!!!!")
		Quit
	ENDIF
ENDDO
=dosql('use cwk')
Do SetDate
set procedure to Main.Prg
ON SHUTDOWN DO quitmain
Do Form Welcome
DO Form KL
DO main.mpr
READ Events

Procedure Quitmain
IF MessageBox('�����Ҫ�˳���ϵͳ��?',32+1,'�˳�ϵͳ')=1
	IF nHandle>0
		=SQLDisconnect(nHandle)
	ENDIF
	QUIT
ENDIF