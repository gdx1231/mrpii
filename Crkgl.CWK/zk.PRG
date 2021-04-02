=dosql('select distinct * from zk','ZKOLD')
Index on 代号 tag Dh
Replace 单重 With 0 For isnull(单重)
Replace 分类 With '' For isnull(分类)
select distinct 代号 from zkold into cursor Dh
Index on 代号 Tag Dh
Create Cursor Zk (代号 C(20),名称 C(20),材料 C(20),单重 Y,总成本 Y,分类 C(2),安全量 I)
Select Dh
nRec=RecCount()
For N=1 To nRec
	Go N
	@ 10,10 Say n/nRec
	cDh=Alltrim(代号)
	Select Zkold
	Locate For alltrim(代号)==cDh
	cMc=Alltrim(名称)
	cCl=Alltrim(材料)
	Select Zk
	Insert Into Zk Values(cDh,cMc,cCl,Zkold.单重,Zkold.总成本,Zkold.分类,Zkold.安全量)
	Select dh
endfor
Select Zk