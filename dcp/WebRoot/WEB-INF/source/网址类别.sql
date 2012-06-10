drop table B_WZLB cascade constraints;

/*==============================================================*/
/* Table: B_WZLB                                               */
/*==============================================================*/
create table B_WZLB  (
   N_XH                 NUMBER(8)                       not null,
   C_LBMC               VARCHAR2(30),
   N_XSXH               NUMBER(4),
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
  
  -- Create/Recreate primary, unique and foreign key constraints 
alter table B_WZLB
  add constraint PK_B_WZLB primary key (N_XH)
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
  
comment on table B_WZLB is
'网址 类别表';

comment on column B_WZLB.N_XH is
'序号';

comment on column B_WZLB.C_LBMC is
'类别名称';

comment on column B_WZLB.N_XSXH is
'显示序号';

comment on column B_WZLB.D_DJ is
'登记日期';


--SEQUENCE
create sequence SEQ_B_WZLB
minvalue 1000
maxvalue 9999
start with 1000
increment by 1
cache 20;

