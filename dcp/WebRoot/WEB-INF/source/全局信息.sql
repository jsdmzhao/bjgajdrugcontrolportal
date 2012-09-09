﻿--jdk 7.0
--myeclipse 10.0
--tomcat 7.0
--oracle 10g/或以上

--tablespace: dcp
--username: dcp
--password:dcp
--系统表 xt_英文单词
--应用表 b_汉语拼音首字母

create tablespace dcp
datafile 'D:\dcp.dbf'
size 50M
reuse
autoextend on
next 20M
maxsize unlimited;

create user dcp
identified by dcp
default tablespace dcp 
quota unlimited on dcp;
grant connect,resource to dcp;
grant create view to dcp;

revoke unlimited tablespace from dcp;
alter user dcp quota 0 on users;
alter user dcp quota unlimited on dcp;