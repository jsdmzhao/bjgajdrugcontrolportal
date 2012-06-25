-- Create table
create table B_NBXX_RECIEVE
(
  n_xh     VARCHAR2(8) not null,
  n_nbxxxh NUMBER(8),
  c_jsr    VARCHAR2(3000),
  c_zt     char(1)
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
comment on table B_NBXX_RECIEVE
  is '内部消息-接收人';
-- Add comments to the columns 
comment on column B_NBXX_RECIEVE.n_xh
  is '序号';
comment on column B_NBXX_RECIEVE.c_jsr
  is '接收用户';
comment on column B_NBXX_RECIEVE.c_zt
  is '状态';
-- Create/Recreate primary, unique and foreign key constraints 
alter table B_NBXX_RECIEVE
  add constraint PK_B_NBXX_RECIEVE primary key (N_XH)
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
create sequence SEQ_B_NBXX_RECIEVE
minvalue 10000
maxvalue 99999
start with 10000
increment by 1
cache 20;