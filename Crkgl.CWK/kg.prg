=Dosql('Dt_kg','kg1')
Index On 代号 Tag Dh
=Dosql('select * from kg','kg')
Index On 代号 Tag Dh
Select Kg1
nRec=RecCount()
M=0
For N=1 To nRec
	Go N
	@ 1,1 Say n/nRec
	cDh=Alltrim(代号)
	Select Kg
	Locate For Alltrim(Kg.代号)==cDh
	IF Found()
		Select Kg1
		Loop
	ELSE
		Insert Into Kg Values(cDh,Kg1.库工)
		M=M+1
	ENDIF
	Select Kg1
ENDFOR
Select Kg
@ 1,2 Say M