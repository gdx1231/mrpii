*****************************************
*功能：返回姓名
*郭磊 1999.5.7
*****************************************
Parameters cSpell
cSpell=Alltrim(cSpell)
IF Used('NameVIEW')
	Select NameVIEW
ELSE
	cSql="Select * From Name"
	=DoSql(cSql,"NameView")
ENDIF
Locate For UPPER(Alltrim(NameView.Spell))==UPPER(cSpell)
IF Found()
	Return Alltrim(NameView.Name)
ELSE
	Return cSpell
ENDIF