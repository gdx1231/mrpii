create cursor aaa(dh c(20),cs I)
select xq
for n=1 to reccount()
	go n
	@10,10 say n
	cdh=alltrim(����)
	select aaa
	locate for alltrim(dh)==cdh
	if !found()
		Append blank
		repl dh with cdh,cs with 1
	else
		repl cs with cs+1
	endif
	select xq
endfor
select aaa
*!*	Select AAA
*!*	Scan For Cs>1
*!*		cdh=alltrim(Dh)
*!*		?cDh
*!*		Select Xq
*!*		Replace Xq.�ಽ�� With AAA.Cs For Alltrim(Xq.����)==cDh
*!*		Select AAA
*!*	ENDSCAN

brow for cs>1 nowait