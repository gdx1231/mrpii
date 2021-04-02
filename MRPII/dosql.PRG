Para cSql,cRet,cFs
IF Empty(cSql)
	Return .F.
ENDIF
IF Empty(cRet)
	nRet=SqlExec(nHandle,cSql)
ELSE
	cRet=Alltrim(cRet)
	nRet=SqlExec(nHandle,cSql,cRet)
ENDIF
IF nRet<0
	=AError(aEr)
	=MessageBox(aEr(2),16,"")
	Return .F.
ENDIF
IF Empty(cFs) OR Empty(cRet)
	Return .T.
ENDIF
=aFields(aFi)
nFi=INT(Alen(aFi)/16)
=CursorSetprop("SendUpdates",.T.)
=CursorSetprop("KeyFieldList",aFi(1,1))
=CursorSetprop("Tables",cRet)
cFields=""
cFields1=""
For N=1 To nFi
	cFields=cFields+aFi(N,1)
	cFields1=cFields1+aFi(N,1)+" "+cRet+"."+aFi(N,1)
	IF N<nFi
		cFields=cFields+","
		cFields1=cFields1+","
	ENDIF
ENDFOR
=CursorSetprop("UpdatableFieldList",cFields)
=CursorSetprop("UpdateNameList",cFields1)