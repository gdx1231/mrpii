*****************************************
*	程序:	MAIN.PRG
*	作者:	郭磊
*	时间:	1998-12-21
*****************************************
MODIFY Window  Screen Title '出入库管理管理系统-财务专用 v2.0'
zoom Window Screen Max
SET Century On
SET Date To YMD
SET Currency To '￥'
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
		=MessageBox("数据库连接错误！请与管理员联系",16,"失败!!!!!!")
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
IF MessageBox('你真的要退出本系统吗?',32+1,'退出系统')=1
	IF nHandle>0
		=SQLDisconnect(nHandle)
	ENDIF
	QUIT
ENDIF