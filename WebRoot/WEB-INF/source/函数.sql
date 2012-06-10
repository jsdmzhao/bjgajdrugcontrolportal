drop table B_CYWZ cascade constraints;

/*==============================================================*/
/* Table: B_CYWZ                                               */
/*==============================================================*/

create table B_CYWZ  (
   N_XH                 NUMBER(4),
   N_LBXH               NUMBER(4),
   C_YHID               VARCHAR2(30),
   C_BT                 VARCHAR2(200),
   C_LJ                 VARCHAR2(100),
   N_XSXH               NUMBER(10),
   D_DJ                 DATE
) tablespace DCP
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    minextents 1
    maxextents unlimited
  );
  
  
alter table B_CYWZ
  add constraint PK_B_CYWZ primary key (N_XH)
  using index 
  tablespace DCP
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
  
comment on table B_CYWZ is
'常用网址表';

comment on column B_CYWZ.N_XH is
'序号';

comment on column B_CYWZ.N_LBXH is
'类别序号';

comment on column B_CYWZ.C_BT is
'标题';

comment on column B_CYWZ.C_LJ is
'连接地址';

comment on column B_CYWZ.N_XSXH is
'显示序号';

comment on column B_CYWZ.D_DJ is
'登记日期';


--SEQUENCE
create sequence SEQ_B_CYWZ
minvalue 1000
maxvalue 9999
start with 1000
increment by 1
cache 20;

