-- Create table
create table b_xinwen
(
  n_xh     NUMBER(8) not null,
  c_bt     VARCHAR2(100),
  c_sftpwz CHAR(1),
  c_tpljdz VARCHAR2(100),
  c_tpkd   NUMBER(10),
  c_tpgd   NUMBER(10),
  c_sfscsp NUMBER(1),
  c_spljdz VARCHAR2(100),
  c_lj     VARCHAR2(100),
  c_jj     VARCHAR2(1000),
  c_nr     CLOB,
  d_fbsj   DATE,
  c_lm     VARCHAR2(6),
  c_yhid   VARCHAR2(20),
  c_yhzid  VARCHAR2(20),
  c_sfsh   CHAR(1),
  c_shr    CHAR(1),
  d_shsj   DATE,
  n_ydcs   NUMBER(10),
  c_sftj   CHAR(1),
  c_sfzd   CHAR(1),
  n_xxxh   NUMBER(10),
  c_sfgl   CHAR(1)
)
tablespace DCP
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table b_xinwen
  is '新闻管理';
-- Add comments to the columns 
comment on column b_xinwen.n_xh
  is '序号';
comment on column b_xinwen.c_bt
  is '标题';
comment on column b_xinwen.c_sftpwz
  is '是否图文文章';
comment on column b_xinwen.c_tpljdz
  is '图片链接地址';
comment on column b_xinwen.c_tpkd
  is '图片宽度';
comment on column b_xinwen.c_tpgd
  is '图片高度';
comment on column b_xinwen.c_sfscsp
  is '是否上传视频';
comment on column b_xinwen.c_spljdz
  is '视频链接地址';
comment on column b_xinwen.c_lj
  is '链接';
comment on column b_xinwen.c_jj
  is '简介';
comment on column b_xinwen.c_nr
  is '内容';
comment on column b_xinwen.d_fbsj
  is '发布时间';
comment on column b_xinwen.c_lm
  is '栏目';
comment on column b_xinwen.c_yhid
  is '用户ID';
comment on column b_xinwen.c_yhzid
  is '用户组ID';
comment on column b_xinwen.c_sfsh
  is '是否审核';
comment on column b_xinwen.c_shr
  is '审核人';
comment on column b_xinwen.d_shsj
  is '审核时间';
comment on column b_xinwen.n_ydcs
  is '阅读次数';
comment on column b_xinwen.c_sftj
  is '是否推荐';
comment on column b_xinwen.c_sfzd
  is '是否置顶';
comment on column b_xinwen.n_xxxh
  is '显示序号';
comment on column b_xinwen.c_sfgl
  is '是否高亮';
-- Create/Recreate primary, unique and foreign key constraints 
alter table b_xinwen
  add constraint PK_B_XINWEN primary key (N_XH)
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
  
  
--SEQUENCE
create sequence SEQ_B_XINWEN
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;