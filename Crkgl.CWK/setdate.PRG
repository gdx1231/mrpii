************************************************
*	设置本机日期和时间和SQLSERVER同步
*	1999-11-15
*	郭磊
************************************************
*定义 Win32Api 功能/SetLocalTime/设置当前时间
*	typedef struct _SYSTEMTIME {  // st  
*	    WORD wYear;
*	    WORD wMonth;
*	    WORD wDayOfWeek;
*	    WORD wDay;
*	    WORD wHour;
*	    WORD wMinute;
*	    WORD wSecond;
*	    WORD wMilliseconds;
*	} SYSTEMTIME;

Declare SetLocalTime In Win32Api String @cTime

dWeek0={1999-11-14}	&&周日
*获取服务器日期时间
=Dosql('Select GetDate() As ServerDate','DDD')	
dTime=ServerDate
=Ct('DDD')
nYear=Year(dTime)
nMonth=Month(dTime)
nDay=Day(dTime)
*定义参量cTime和结构SYSTEMTIME相同
cYear=Chr(Mod(nYear,256))+Chr(Int(nYear/256))
cMonth=Chr(nMonth)+Chr(0)
cDayOfWeek=Chr(Mod(CTOD(DTOC(dTime))-dWeek0,7))+Chr(0)
cDay=Chr(nDay)+Chr(0)
cHour=Chr(Hour(dTime))+Chr(0)
cMinute=Chr(Minute(dTime))+Chr(0)
cSecond=Chr(Sec(dTime))+Chr(0)
cMs=Chr(0)+Chr(0)
cTime=cYear+cMonth+cDayOfWeek+cDay+cHour+cMinute+cSecond+cMs

*设置本地时钟
SetLocalTime(@cTime)
Clear Dlls