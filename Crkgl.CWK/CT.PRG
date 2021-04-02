Parameters cTable
IF Empty(cTable)
	Return
ENDIF
IF USED(cTable)
	Select &cTable
	USE
	Return .T.
ELSE
	Return .F.
ENDIF
