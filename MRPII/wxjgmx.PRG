Create Cursor wxmx (代号 c(20),外协单位 c(50),编号 I)
Select Rkjl
nRec=RecCount()
For N=1 To nRec
	Go N
	@ 10,10 Say N/nRec
	IF AT('C',凭证号)=1
		Loop
	ENDIF
	cPzh=凭证号
	cJkdw=Alltrim(交库单位)
	Select Rkmx
	Scan For Rkmx.凭证号=cPzh
		cDh=Alltrim(Rkmx.代号)
		Select Wxmx
		Locate For Alltrim(Wxmx.代号)==cDh .AND. Alltrim(外协单位)==cJkdw
		IF !Found()
			Insert Into wxmx Values(cDh,cJkdw,0)
		ENDIF
		Select Rkmx
	ENDSCAN
	Select Rkjl
ENDFOR