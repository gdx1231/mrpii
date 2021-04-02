=DoSql('Select 代号,分类 from N208JGA','NNN')
=Dosql('Select 代号,分类,0 AS NEW From Zk','Zk')
Index On 代号 Tag Dh
Select NNN
Set Relation To 代号 into ZK
Select NNN
Scan For !Empty(NNN.分类) AND !ISNULL(NNN.分类)
	Select Zk
	Replace 分类 With NNN.分类,New With 1
	Select NNN
ENDSCAN
cSql=""
N=0
Select Zk
Scan For Zk.New=1
	cSql=cSql+" Update Zk Set 分类='"+Alltrim(Zk.分类)+"' Where 代号='"+Alltrim(Zk.代号)+"'"
	N=N+1
	IF N=300
		=Dosql(cSql)
		N=1
		cSql=''
	ENDIF
ENDS
IF !Empty(cSql)
	=Dosql(cSql)
ENDIF
