-- CREATE TABLE
CREATE TABLE D_DM
(
  N_XH     NUMBER(10) NOT NULL,
  N_BXH    NUMBER(4),
  C_DM     VARCHAR2(8),
  C_MC     VARCHAR2(200),
  N_XSXH   NUMBER(10),
  C_TJ     VARCHAR2(8),
  C_SJDM   VARCHAR2(8),
  D_DJ     DATE
)
TABLESPACE DCP
  PCTFREE 10
  INITRANS 1
  MAXTRANS 255
  STORAGE
  (
    INITIAL 10M
    MINEXTENTS 1
    MAXEXTENTS UNLIMITED
  );
-- ADD COMMENTS TO THE TABLE 
COMMENT ON TABLE D_DM
  IS '代码信息';
-- ADD COMMENTS TO THE COLUMNS 
COMMENT ON COLUMN D_DM.N_XH
  IS '序号';
COMMENT ON COLUMN D_DM.N_BXH
  IS '信息类型';
COMMENT ON COLUMN D_DM.C_DM
  IS '代码';
COMMENT ON COLUMN D_DM.C_MC
  IS '名称';
COMMENT ON COLUMN D_DM.N_XSXH
  IS '显示序号';
COMMENT ON COLUMN D_DM.C_TJ
  IS '条件';
COMMENT ON COLUMN D_DM.C_SJDM
  IS '上级代码';
COMMENT ON COLUMN D_DM.D_DJ
  IS '登记时间';
  
  -- Create/Recreate primary, unique and foreign key constraints 
alter table D_DM
  add constraint PK_D_DM primary key (N_XH)
  using index 
  tablespace DCP
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 10M
    minextents 1
    maxextents unlimited
  );