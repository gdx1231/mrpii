Public nHandle,cOpr,cUser
set defa to g:\gdx\mrpii\crkgl.cwk\
nHandle=SqlConnect("MRPII_SERVER","sa","")
IF nHandle<0
	=MessageBox("���ݿ����Ӵ���",16,"")
	Return
ENDIF
=dosql('use mplx')
*do setdate
Set Century On
Set Date TO ymd
set mark to '-'
Set Talk off
cOpr='GDX'
cUser='GDX'
set delete on