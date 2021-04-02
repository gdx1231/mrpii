select rkhz.产品,0,as 期初未达,sum(rkhz.je) as 入库金额,rkhz.交库单位,部件,外协员 from rkhz;
 group by 产品,交库单位,部件,外协员 order by 交库单位 where 趴帐>0;
 
 