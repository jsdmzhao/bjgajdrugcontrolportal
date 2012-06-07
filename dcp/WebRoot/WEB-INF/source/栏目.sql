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
'��Ŀ��';

comment on column B_LANMU.N_XH is
'���';

comment on column B_LANMU.C_LMDM is
'��Ŀ����';

comment on column B_LANMU.C_LMMC is
'��Ŀ����';

comment on column B_LANMU.C_YHID is
'�û�';

comment on column B_LANMU.C_YHZID is
'�û���';

comment on column B_LANMU.C_SJLMDM is
'�ϼ���Ŀ����';

comment on column B_LANMU.C_SFDH is
'�Ƿ񵼺�';

comment on column B_LANMU.C_SFTP is
'�Ƿ�ͼƬ';

comment on column B_LANMU.C_TPLJDZ is
'ͼƬ���ӵ�ַ';

comment on column B_LANMU.C_SFNR is
'�Ƿ�����';

comment on column B_LANMU.C_NR is
'����';

comment on column B_LANMU.C_LJ is
'����';

comment on column B_LANMU.N_XSXH is
'��ʾ���';

comment on column B_LANMU.D_DJ is
'�Ǽ�����';
