select cf
cc=''
for n=1 to reccount()
	go n
	cdh=alltrim(����)
	cc=cc+"����='"+cDh+"' OR "
endfor
cc="set filter to "+substr(cc,1,len(cc)-4)
return cc