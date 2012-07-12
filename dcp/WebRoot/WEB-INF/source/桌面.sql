

DROP TABLE B_ZMCD ;


DROP TABLE B_WDZM;

/*==============================================================*/
/* Table: B_ZMCD                                                */
/*==============================================================*/
CREATE TABLE B_ZMCD  (
   N_XH                 NUMBER(8)                       NOT NULL,
   C_MC                 VARCHAR2(20),
   C_LJ                 VARCHAR2(100),
   C_TB                 VARCHAR2(100),
   N_XSXH               CHAR(10),
   C_YXX                CHAR(1),
   CONSTRAINT PK_B_ZMCD PRIMARY KEY (N_XH)
);

COMMENT ON TABLE B_WDZM IS
'桌面菜单';

COMMENT ON COLUMN B_ZMCD.N_XH IS
'序号';

COMMENT ON COLUMN B_ZMCD.C_MC IS
'名称';

COMMENT ON COLUMN B_ZMCD.C_LJ IS
'连接';

COMMENT ON COLUMN B_ZMCD.C_TB IS
'图标';

COMMENT ON COLUMN B_ZMCD.N_XSXH IS
'显示序号';

COMMENT ON COLUMN B_ZMCD.C_YXX IS
'有效性';



/*==============================================================*/
/* Table: B_WDZM                                                */
/*==============================================================*/
CREATE TABLE B_WDZM  (
   N_XH                 NUMBER(8)                       NOT NULL,
   C_ZDYMC              VARCHAR2(20),
   N_CDXH               NUMBER(8),
   USER_ID              VARCHAR2(100),
   N_XSXH               CHAR(10),
   C_YXX                CHAR(1),
   CONSTRAINT PK_B_WDZM PRIMARY KEY (N_XH)
);

COMMENT ON TABLE B_WDZM IS
'我的桌面';

COMMENT ON COLUMN B_WDZM.N_XH IS
'序号';

COMMENT ON COLUMN B_WDZM.C_ZDYMC IS
'自定义名称';

COMMENT ON COLUMN B_WDZM.N_CDXH IS
'菜单连接';

COMMENT ON COLUMN B_WDZM.USER_ID IS
'用户ID';

COMMENT ON COLUMN B_WDZM.N_XSXH IS
'显示序号';

COMMENT ON COLUMN B_WDZM.C_YXX IS
'有效性';



create sequence SEQ_ZMCD
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;

create sequence SEQ_WDZM
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;