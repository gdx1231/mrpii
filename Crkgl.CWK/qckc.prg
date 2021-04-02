cTempFile=Sys(2023)+'\A2'
Select Crkmxls.´úºÅ,Qckc.N207,Qckc.N208,Crkmxls.N207Rk-Crkmxls.N207Ck AS N207CRK,;
	Crkmxls.N208Rk-Crkmxls.N208Ck AS N208CRK From Crkmxls ;
	Left Outer Join Qckc On Qckc.´úºÅ=Crkmxls.´úºÅ Into Table &cTempFile
=CT('A2')
USE &cTempFile In 0
Select A2
Replace N208 With 0 For Isnull(N208)
Replace N207 With 0 For Isnull(N207)
Replace N208 With N208+N208CRK,N207 With N207+N207CRK ALL