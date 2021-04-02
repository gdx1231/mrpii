*****************************************
*	程序:	MAIN.PRG
*	作者:	郭磊
*	时间:	1997-1-3
*****************************************

MODIFY Window Screen Title '生产管理系统' Icon file zy\icon\SCGL.ico
Zoom Window Screen Max
SET Century On
SET Date To YMD
SET Currency To '￥'
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
	=MessageBox("数据库连接错误，请与管理员联系！",16,"连接错误")
	Return
ENDIF
=DoSQL("USE MRPII")
Do Form 欢迎
DO Form 口令
DO  main.mpr
READ Events

Procedure QuitMain
IF MessageBox('您真的要退出《生产管理系统》吗?',33,'退出系统')=1
	Clear all
	CLOSE all
	QUIT
ELSE
	RETURN
ENDIF