*****************************************
*	程序:	MAIN.PRG
*	作者:	郭磊
*	时间:	1998-12-21
*****************************************
Public nHandle,cOpr,cUser
cOpr=''
MODIFY Window  Screen Title '出入库管理管理系统 v2.0 - 库房专用' 
DO main.mpr
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
*(=dosql('use mpLX')   && ZZG 修改

do SetDate
set procedure to Main.Prg
ON SHUTDOWN DO quitmain
Do Form Welcome
DO Form KL
READ Events

Procedure Quitmain
IF MessageBox('你真的要退出本系统吗?',32+1,'退出系统')=1
	IF nHandle>0
		=SQLDisconnect(nHandle)
	ENDIF
	QUIT
ENDIF