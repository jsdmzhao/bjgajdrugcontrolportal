DROP TABLE B_GONGGAO CASCADE CONSTRAINTS;

/*==============================================================*/
/* Table: B_GONGGAO                                             */
/*==============================================================*/
CREATE TABLE B_GONGGAO 
(
   N_XH                 VARCHAR2(8)          NOT NULL,
   C_BT                 VARCHAR2(200),
   C_YHID               VARCHAR2(30),
   C_YHZID              VARCHAR2(30),
   C_NR                 CLOB,
   D_DJ					DATE
)tablespace DCP
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
alter table b_gonggao
  add constraint PK_B_GONGGAO primary key (N_XH)
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

COMMENT ON TABLE B_GONGGAO IS
'公告';

COMMENT ON COLUMN B_GONGGAO.N_XH IS
'序号';

COMMENT ON COLUMN B_GONGGAO.C_BT IS
'标题';

COMMENT ON COLUMN B_GONGGAO.C_YHID IS
'用户';

COMMENT ON COLUMN B_GONGGAO.C_YHZID IS
'用户组';

COMMENT ON COLUMN B_GONGGAO.C_NR IS
'内容';

--SEQUENCE
create sequence SEQ_B_GONGGAO
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;

