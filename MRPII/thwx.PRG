select wxdw
for N=1 to RecCount()
	Go N
	cWxd=Alltrim(外协点)
	nBh=编号
	sele wxmx
	Replace Wxmx.编号 With nBh For Alltrim(Wxmx.外协单位)==cWxd
	sele wxdw
endfor
	