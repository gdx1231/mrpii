Public nHandle,cOpr
set defa to c:\mrpii
nHandle=SqlConnect("MRPII_SERVER","sa","")
IF nHandle<0
	=MessageBox("���ݿ����Ӵ���",16,"")
	Return
ENDIF
Set Century On
Set Date TO ymd
set mark to '-'
Set Talk off
cOpr='������'