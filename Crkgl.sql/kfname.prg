*****************************************
*���ܣ���������
*���� 1999.5.7
*****************************************
Parameters cSpell
cSpell=Alltrim(cSpell)
IF Used('KFNAME')
	Select KFNAME
ELSE
	cSql="Select * From KFNAME"
	=DoSql(cSql,"KFNAME")
ENDIF
Locate For UPPER(Alltrim(KFNAME.��д))==UPPER(cSpell)
IF Found()
	Return Alltrim(KFNAME.����)
ELSE
	Return cSpell
ENDIF