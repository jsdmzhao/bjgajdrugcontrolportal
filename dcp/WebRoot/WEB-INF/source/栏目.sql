drop table B_LANMU cascade constraints;

/*==============================================================*/
/* Table: B_LANMU                                               */
/*==============================================================*/
create table B_LANMU  (
   N_XH                 NUMBER(8)                       not null,
   C_LMDM               VARCHAR2(6),
   C_LMMC               VARCHAR2(200),
   C_YHID               VARCHAR2(20),
   C_YHZID              VARCHAR2(20),
   C_SJLMDM             VARCHAR2(6),
   C_SFDH               CHAR(1),
   C_SFTP               CHAR(1),
   C_TPLJDZ             VARCHAR2(100),
   C_SFNR               CHAR(1),
   C_NR                 CLOB,
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
  
  -- Create/Recreate primary, unique and foreign key constraints 
alter table b_lanmu
  add constraint PK_B_LANMU primary key (N_XH)
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
  

comment on table B_LANMU is
'栏目表';

comment on column B_LANMU.N_XH is
'序号';

comment on column B_LANMU.C_LMDM is
'栏目代码';

comment on column B_LANMU.C_LMMC is
'栏目名称';

comment on column B_LANMU.C_YHID is
'用户';

comment on column B_LANMU.C_YHZID is
'用户组';

comment on column B_LANMU.C_SJLMDM is
'上级栏目代码';

comment on column B_LANMU.C_SFDH is
'是否导航';

comment on column B_LANMU.C_SFTP is
'是否图片';

comment on column B_LANMU.C_TPLJDZ is
'图片链接地址';

comment on column B_LANMU.C_SFNR is
'是否内容';

comment on column B_LANMU.C_NR is
'内容';

comment on column B_LANMU.C_LJ is
'链接';

comment on column B_LANMU.N_XSXH is
'显示序号';

comment on column B_LANMU.D_DJ is
'登记日期';
