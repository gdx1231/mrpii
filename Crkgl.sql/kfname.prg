*****************************************
*功能：返回姓名
*郭磊 1999.5.7
*****************************************
Parameters cSpell
cSpell=Alltrim(cSpell)
IF Used('KFNAME')
	Select KFNAME
ELSE
	cSql="Select * From KFNAME"
	=DoSql(cSql,"KFNAME")
ENDIF
Locate For UPPER(Alltrim(KFNAME.简写))==UPPER(cSpell)
IF Found()
	Return Alltrim(KFNAME.姓名)
ELSE
	Return cSpell
ENDIF