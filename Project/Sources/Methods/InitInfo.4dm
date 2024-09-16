//%attributes = {"invisible":true}



var objTabs : Object

var Infos : Collection


Infos:=ds:C1482.INFO.all().query("PageNumber <= :1"; 2).orderBy("PageNumber").toCollection()
objTabs:=New object:C1471("values"; Infos.extract("TabTitle"); "index"; 0)



