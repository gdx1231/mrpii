Create Cursor QCKCLS(???? C(20),N208 I,N207 I)
Select QCKC
COPY TO WWWWWWWWW
Select QCKCLS
Append From WWWWWWWWW
Delete File WWWWWWWWW.DBF
Select CRKMXLS
For N=1 To RecCount()
	Go N
	cDh=Alltrim(????)
	Select QCKCLS
	Locate For Alltrim(QCKCLS.????)==cDh
	IF Found()
		Replace N208 With N208+CRKMXLS.N208RK-CRKMXLS.N208CK,;
				N207 With N207+CRKMXLS.N207RK-CRKMXLS.N207CK
	ELSE
		Append Blank
		Replace ???? With cDh,;
				N208 With CRKMXLS.N208RK-CRKMXLS.N208CK,;
				N207 With CRKMXLS.N207RK-CRKMXLS.N207CK
	ENDIF
	Select CRKMXLS
ENDFOR