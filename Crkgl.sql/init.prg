Public nHandle,cOpr,cUser
set defa to e:\gdx\mrpii\crkgl.sql
nHandle=SqlConnect("MRPII_SERVER","sa","")
IF nHandle<0
	=MessageBox("���ݿ����Ӵ���",16,"")
	Return
ENDIF
=dosql('use mplx')
Set Century On
Set Date TO ymd
set mark to '-'
Set Talk off
cOpr='GDX'
cUser='GDX'
set delete on