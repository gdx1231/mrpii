/* Microsoft SQL Server - Scripting			*/
/* Server: GDX					*/
/* Database: MRPII					*/
/* Creation Date 99-8-6 18:22:50 			*/

if exists (select * from sysobjects where id = object_id(N'[dbo].[dt_Cpcf]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[dt_Cpcf]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[aa]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[aa]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[Dt_Cp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Dt_Cp]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[dt_InsertSczl]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[dt_InsertSczl]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[dt_InsertZzzl]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[dt_InsertZzzl]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[dt_KC_N208Jga]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[dt_KC_N208Jga]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[dt_sclh]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[dt_sclh]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[dt_Zzlh]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[dt_Zzlh]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[v_kc_n208jga]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[v_kc_n208jga]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[V_wxmx]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[V_wxmx]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[cb]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cb]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[cbxm]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cbxm]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[cl]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cl]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[cp]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cp]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[CPCF]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[CPCF]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[flgq]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[flgq]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[kc]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[kc]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[n208jga]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[n208jga]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[Name]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Name]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[password]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[password]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[py]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[py]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[sczl]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[sczl]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[sczlmx]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[sczlmx]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[wxdw]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[wxdw]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[wxjg]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[wxjg]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[wxmx]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[wxmx]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[zk]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[zk]
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[zzzlmx]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[zzzlmx]
GO

CREATE TABLE [dbo].[cb] (
	[代号] [char] (20) NOT NULL ,
	[成本项目] [int] NOT NULL ,
	[成本] [money] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[cbxm] (
	[编号] [int] NOT NULL ,
	[成本项目] [char] (20) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[cl] (
	[材料名称] [char] (20) NOT NULL ,
	[价格] [money] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[cp] (
	[产品] [char] (10) NOT NULL ,
	[名称] [char] (40) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CPCF] (
	[代号] [char] (20) NOT NULL ,
	[次数] [smallint] NOT NULL ,
	[操作者] [char] (20) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[flgq] (
	[分类] [char] (2) NOT NULL ,
	[工期] [smallint] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[kc] (
	[代号] [varchar] (20) NOT NULL ,
	[数量] [int] NOT NULL ,
	[n208] [int] NULL ,
	[n208jg] [int] NULL ,
	[n208jga] [int] NULL ,
	[n208jgb] [int] NULL ,
	[n208jgc] [int] NULL ,
	[n207] [int] NULL ,
	[n207jg] [int] NULL ,
	[n343] [int] NULL ,
	[n207jga] [int] NULL ,
	[预期入库] [int] NULL ,
	[预期出库] [int] NULL 
)
GO

CREATE TABLE [dbo].[n208jga] (
	[代号] [char] (20) NOT NULL ,
	[本部件数量] [smallint] NULL ,
	[全机数量] [smallint] NULL ,
	[附注] [varchar] (50) NULL ,
	[部件号] [char] (20) NULL ,
	[所属部件号] [char] (20) NULL ,
	[分类] [char] (2) NULL ,
	[安全量] [smallint] NULL ,
	[组装] [bit] NOT NULL ,
	[有效] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Name] (
	[姓名] [char] (8) NOT NULL ,
	[性别] [bit] NOT NULL ,
	[出生日期] [datetime] NULL ,
	[电话] [char] (30) NULL ,
	[id] [int] IDENTITY (1, 1) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[password] (
	[user_] [char] (24) NOT NULL ,
	[kl] [char] (48) NOT NULL ,
	[ql] [char] (254) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[py] (
	[bm] [char] (2) NOT NULL ,
	[dm] [char] (1) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[sczl] (
	[令号] [char] (13) NOT NULL ,
	[日期] [datetime] NOT NULL ,
	[操作员] [char] (8) NOT NULL ,
	[产品] [char] (20) NOT NULL ,
	[加工日期] [datetime] NULL ,
	[批次] [varchar] (20) NULL ,
	[结束日期] [datetime] NULL ,
	[有效] [bit] NOT NULL ,
	[台份] [smallint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[sczlmx] (
	[令号] [char] (13) NOT NULL ,
	[代号] [char] (20) NOT NULL ,
	[加工数量] [smallint] NOT NULL ,
	[加工单位] [smallint] NOT NULL ,
	[加工日期] [smalldatetime] NOT NULL ,
	[入库日期] [smalldatetime] NOT NULL ,
	[完工数量] [smallint] NOT NULL ,
	[料废] [smallint] NOT NULL ,
	[工废] [smallint] NOT NULL ,
	[其它废] [smallint] NOT NULL ,
	[完成] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[wxdw] (
	[编号] [smallint] IDENTITY (1, 1) NOT NULL ,
	[外协点] [char] (30) NOT NULL ,
	[简称] [char] (10) NOT NULL ,
	[本厂] [bit] NOT NULL ,
	[有效] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[wxjg] (
	[代号] [char] (20) NOT NULL ,
	[工序] [char] (10) NOT NULL ,
	[加工顺序] [int] NOT NULL ,
	[加工成本] [money] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[wxmx] (
	[代号] [char] (20) NOT NULL ,
	[编号] [smallint] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[zk] (
	[代号] [char] (20) NOT NULL ,
	[名称] [char] (26) NOT NULL ,
	[材料] [char] (20) NULL ,
	[单重] [money] NULL ,
	[总成本] [money] NULL 
)
GO

CREATE TABLE [dbo].[zzzlmx] (
	[令号] [char] (13) NOT NULL ,
	[代号] [varchar] (20) NOT NULL ,
	[允许数量] [smallint] NOT NULL ,
	[实际数量] [smallint] NOT NULL ,
	[装配废] [smallint] NULL ,
	[备注] [varchar] (250) NULL 
) ON [PRIMARY]
GO

setuser N'dbo'
GO

EXEC sp_bindefault N'[dbo].[UW_ZeroDefault]', N'[wxjg].[加工成本]'
GO

EXEC sp_bindefault N'[dbo].[Dflt_wxjg_加工顺序]', N'[wxjg].[加工顺序]'
GO

setuser
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

CREATE VIEW dbo.v_kc_n208jga
AS
SELECT n208jga.代号, zk.名称, n208jga.分类, n208jga.全机数量, n208jga.安全量, 
      zk.总成本, kc.n208 - kc.预期出库 + kc.预期入库 AS 库存, wxmx.编号, 
      wxdw.外协点
FROM wxdw RIGHT OUTER JOIN
      wxmx ON wxdw.编号 = wxmx.编号 RIGHT OUTER JOIN
      n208jga ON wxmx.代号 = n208jga.代号 LEFT OUTER JOIN
      zk ON n208jga.代号 = zk.代号 LEFT OUTER JOIN
      kc ON n208jga.代号 = kc.代号
WHERE (n208jga.分类 LIKE 'C_') OR
      (n208jga.分类 = 'A') OR
      (n208jga.分类 = 'B')
GO
SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  ON    SET ANSI_NULLS  ON 
GO

CREATE VIEW dbo.wxmx_view
AS
SELECT wxmx.代号, zk.名称, wxdw.外协点, wxmx.编号
FROM wxmx INNER JOIN
      zk ON wxmx.代号 = zk.代号 INNER JOIN
      wxdw ON wxmx.编号 = wxdw.编号
GO
SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

CREATE PROCEDURE dt_Cpcf(@cCp Char(20),@cCzy Char(20)) AS
Declare @cMl Char(250)
Set @cMl="Declare CPCF_LS Cursor For select "+Rtrim(@cCp)+".代号 from "+Rtrim(@cCp)+" left outer join  wxmx on "+Rtrim(@cCp)+".代号=wxmx.代号 where "+Rtrim(@cCp)+".分类 in ('A','B','C1','C2','C3')"
Exec(@cMl)
Declare @cDh Char(20)
Declare @nCs Int
Open CpCf_LS
Fetch Next From Cpcf_Ls Into @cDh
While @@Fetch_Status=0
Begin
	Select @nCs=(Select Max(次数) From CPCF Where 代号=@cDh AND 操作者=@cCzy)
	IF @nCs IS Null
		insert into CPCF(代号,次数,操作者) Values(@cDh,1,@cCzy)
	ELSE
		update CPCF Set 次数=@nCs+1 Where 代号=@cDh AND 操作者=@cCzy
	Fetch Next From CPCF_LS Into @cDh
END
Close Cpcf_ls
DEALLOCATE Cpcf_ls
Select 代号,次数 From CPCF Where 操作者=@cCzy AND 次数>1
Delete CPCF Where 操作者=@cCzy

GO
SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

CREATE PROCEDURE aa(@cCp Char(20),@cCzy Char(20)) AS
Declare @cMl Char(250)
Set @cMl="Declare CPCF_LS Cursor For select "+Rtrim(@cCp)+".代号 from "+Rtrim(@cCp)+" left outer join  wxmx on "+Rtrim(@cCp)+".代号=wxmx.代号 where "+Rtrim(@cCp)+".分类 in ('A','B','C1','C2','C3')"
select @cml
GO
SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

CREATE PROCEDURE Dt_Cp(@cCp Char(20)) AS
Exec("Select "+@cCp+".代号,Zk.名称,"+@cCp+".全机数量,"+@cCp+".分类,"+@cCp+".安全量,"+@cCp+".组装 "
	+"From "+@cCp+" Left Outer Join Zk On "+@cCp+".代号=Zk.代号"
	+" Where "+@cCp+".附注 Not Like('%借用件%') AND "+@cCp+".全机数量>0")



GO
SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

CREATE PROCEDURE dt_InsertSczl(@cCzy Char(8),@cCp Char(20)) AS
Declare @nLh integer
declare @clh char(13)
Declare @nLen Integer
Declare @cRq Char(9)
Set @cRq='S'+Convert(Char(10),GetDate(),112)
select @nlh=MAX(Convert(INTEGER,Substring(令号,10,4))) from sczl where substring(令号,1,9)=@cRq
if @nlh is null
	Select @clh=@cRq+'0001'
else
	Begin
	 select @clh=Ltrim(Rtrim(Str(@nlh+1)))
	 Select @nLen=Len(@cLh)
	 While @nLen<4
	  Begin 
		Select @clh='0'+@clh
		Select @nLen=Len(@cLh)
	  END
     	 Select @cLh=@cRq+@cLh
	End
Insert Into Sczl (令号,日期,操作员,产品) Values(@cLh,getdate(),@cCzy,@cCp)
select @clh SCLh
GO
SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

CREATE PROCEDURE dt_InsertZzzl(@cCzy Char(8),@cCp Char(20),@cPc Char(20),@dKsrq datetime,@dJsrq datetime,@nTf int) AS
Declare @nLh integer
declare @clh char(13)
Declare @nLen Integer
Declare @cRq Char(9)
Set @cRq='W'+Convert(Char(10),GetDate(),112)
select @nlh=MAX(Convert(INTEGER,Substring(令号,10,4))) from sczl where substring(令号,1,9)=@cRq
if @nlh is null
	Select @clh=@cRq+'0001'
else
	Begin
		select @clh=Ltrim(Rtrim(Str(@nlh+1)))
		Select @nLen=Len(@cLh)
		While @nLen<4
	  	Begin 
			Select @clh='0'+@clh
			Select @nLen=Len(@cLh)
	  	END
     	 	Select @cLh=@cRq+@cLh
	End

Insert Into Sczl (令号,日期,操作员,产品,批次,加工日期,结束日期,台份) Values(@cLh,getdate(),@cCzy,@cCp,@cPc,@dKsrq,@dJsrq,@nTf)
--select @clh ZZLh

Declare @cDh char(20),@nSl int
Exec("Declare Nxxx Cursor For Select 代号,全机数量*50 from "+@cCp+" Where 分类 In ('A','B','C1','C2','C3') AND 组装=1")
Open Nxxx
Fetch Next From Nxxx Into @cDh,@nSl
While @@Fetch_Status=0
Begin
	insert into zzzlmx(令号,代号,允许数量,实际数量) values(@cLh,Rtrim(@cDh),@nSl,0)
	Fetch Next From Nxxx Into @cDh,@nSl
END
Close Nxxx
DEALLOCATE Nxxx


GO
SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

CREATE PROCEDURE dt_KC_N208Jga(@nSl Integer) AS
Select N208JGA.代号,Zk.名称,分类,全机数量,
安全量,Zk.总成本,
Kc.数量-kc.预期出库+kc.预期入库-全机数量*(@nSl+安全量) AS 库存
from N208JGA Left Join zk
on N208Jga.代号=Zk.代号
Left Join Kc
on N208Jga.代号=kc.代号
Where 分类 Like 'C_' OR 分类='A' OR 分类='B'
AND Kc.数量-kc.预期出库+kc.预期入库-全机数量*(@nSl+安全量)>0
Order By 分类,N208JGA.代号
GO
SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

CREATE PROCEDURE dt_sclh AS
declare @cRq Char(9)
Declare @nLh integer
declare @clh char(13)
Declare @nLen Integer
Set @cRq='S'+Convert(Char(10),GetDate(),112)
select @nlh=MAX(Convert(INTEGER,Substring(令号,10,4))) from sczl where substring(令号,1,9)=@cRq
if @nlh is null
	Select @clh=@cRq+'0001'
else
	Begin
	 select @clh=Ltrim(Rtrim(Str(@nlh+1)))
	 Select @nLen=Len(@cLh)
	 While @nLen<4
	  Begin 
		Select @clh='0'+@clh
		Select @nLen=Len(@cLh)
	  END
     	 Select @cLh=@cRq+@cLh
	End
select @clh SCLh


GO
SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

CREATE PROCEDURE dt_Zzlh AS
declare @cRq Char(9)
Declare @nLh integer
declare @clh char(13)
Declare @nLen Integer
Set @cRq='W'+Convert(Char(10),GetDate(),112)
select @nlh=MAX(Convert(INTEGER,Substring(令号,10,4))) from sczl where substring(令号,1,9)=@cRq
if @nlh is null
	Select @clh=@cRq+'0001'
else
	Begin
	 select @clh=Ltrim(Rtrim(Str(@nlh+1)))
	 Select @nLen=Len(@cLh)
	 While @nLen<4
	  Begin 
		Select @clh='0'+@clh
		Select @nLen=Len(@cLh)
	  END
     	 Select @cLh=@cRq+@cLh
	End
--返回组装令号
select @clh ZZLh


GO
SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

