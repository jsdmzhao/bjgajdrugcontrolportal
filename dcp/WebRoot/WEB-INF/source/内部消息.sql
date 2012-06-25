-- Create table
create table B_NBXX
(
  n_xh    VARCHAR2(8) not null,
  c_bt    VARCHAR2(200),
  c_yhid  VARCHAR2(30),
  c_yhzid VARCHAR2(30),
  c_nr    CLOB,
  d_dj    DATE,
  C_SFSC  CHAR(1),
  C_IP    VARCHAR2(20)
)
tablespace DCP
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table B_NBXX
  is '内部消息';
-- Add comments to the columns 
comment on column B_NBXX.n_xh
  is '序号';
comment on column B_NBXX.c_bt
  is '标题';
comment on column B_NBXX.c_yhid
  is '用户';
comment on column B_NBXX.c_yhzid
  is '用户组';
comment on column B_NBXX.c_nr
  is '内容';
-- Create/Recreate primary, unique and foreign key constraints 
alter table B_NBXX
  add constraint PK_B_NBXX primary key (N_XH)
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

  -- Create sequence 
create sequence SEQ_B_NBXX
minvalue 10000
maxvalue 99999
start with 10000
increment by 1
cache 20;