=Dosql('Dt_kg','kg1')
Index On ���� Tag Dh
=Dosql('select * from kg','kg')
Index On ���� Tag Dh
Select Kg1
nRec=RecCount()
M=0
For N=1 To nRec
	Go N
	@ 1,1 Say n/nRec
	cDh=Alltrim(����)
	Select Kg
	Locate For Alltrim(Kg.����)==cDh
	IF Found()
		Select Kg1
		Loop
	ELSE
		Insert Into Kg Values(cDh,Kg1.�⹤)
		M=M+1
	ENDIF
	Select Kg1
ENDFOR
Select Kg
@ 1,2 Say M