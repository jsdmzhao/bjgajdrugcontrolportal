DROP TABLE B_KQ_SXB ;

DROP TABLE B_KQ_YBJL;

DROP TABLE B_KQ_CCJL;

DROP TABLE B_KQ_QQSB;

/*==============================================================*/
/* Table: B_KQ_SXB                                              */
/*==============================================================*/
CREATE TABLE B_KQ_SXB  (
   N_XH                 NUMBER(8)                       NOT NULL,
   N_LX                 NUMBER(4),
   USER_ID              NUMBER(8),
   D_DJ                 DATE,
   C_ZT                 CHAR(1),
   CONSTRAINT PK_B_KQ_SXB PRIMARY KEY (N_XH)
);

COMMENT ON TABLE B_KQ_SXB IS
'考勤-上下班';

COMMENT ON COLUMN B_KQ_SXB.N_XH IS
'序号';

COMMENT ON COLUMN B_KQ_SXB.N_LX IS
'类型';

COMMENT ON COLUMN B_KQ_SXB.USER_ID IS
'用户ID';

COMMENT ON COLUMN B_KQ_SXB.D_DJ IS
'登记时间';

COMMENT ON COLUMN B_KQ_SXB.C_ZT IS
'状态';



/*==============================================================*/
/* Table: B_KQ_YBJL                                             */
/*==============================================================*/
CREATE TABLE B_KQ_YBJL  (
   N_XH                 NUMBER(10)                      NOT NULL,
   USER_ID              NUMBER(8),
   N_LX                 NUMBER(4),
   C_YY                 VARCHAR2(4000),
   D_KSSJ               DATE,
   D_JSSJ               DATE,
   D_DJ                 DATE,
   C_ZT                 CHAR(1),
   CONSTRAINT PK_B_KQ_YBJL PRIMARY KEY (N_XH)
);

COMMENT ON TABLE B_KQ_YBJL IS
'考勤-一般记录';

COMMENT ON COLUMN B_KQ_YBJL.N_XH IS
'序号';

COMMENT ON COLUMN B_KQ_YBJL.USER_ID IS
'用户ID';

COMMENT ON COLUMN B_KQ_YBJL.N_LX IS
'类型';

COMMENT ON COLUMN B_KQ_YBJL.C_YY IS
'原因';

COMMENT ON COLUMN B_KQ_YBJL.D_KSSJ IS
'开始日期';

COMMENT ON COLUMN B_KQ_YBJL.D_JSSJ IS
'结束时间';

COMMENT ON COLUMN B_KQ_YBJL.D_DJ IS
'登记时间';

COMMENT ON COLUMN B_KQ_YBJL.C_ZT IS
'状态';




/*==============================================================*/
/* Table: B_KQ_CCJL                                             */
/*==============================================================*/
CREATE TABLE B_KQ_CCJL  (
   N_XH                 NUMBER(8)                       NOT NULL,
   USER_ID              NUMBER(8),
   C_CCCS               VARCHAR2(100),
   C_YY                 VARCHAR2(4000),
   D_KSSJ               DATE,
   D_JSSJ               DATE,
   D_DJ                 DATE,
   C_ZT                 CHAR(1),
   CONSTRAINT PK_B_KQ_CCJL PRIMARY KEY (N_XH)
);

COMMENT ON TABLE B_KQ_CCJL IS
'考勤-出差记录';

COMMENT ON COLUMN B_KQ_CCJL.N_XH IS
'序号';

COMMENT ON COLUMN B_KQ_CCJL.USER_ID IS
'用户ID';

COMMENT ON COLUMN B_KQ_CCJL.C_CCCS IS
'出差城市';

COMMENT ON COLUMN B_KQ_CCJL.C_YY IS
'原因';

COMMENT ON COLUMN B_KQ_CCJL.D_KSSJ IS
'开始时间';

COMMENT ON COLUMN B_KQ_CCJL.D_JSSJ IS
'结束时间';

COMMENT ON COLUMN B_KQ_CCJL.D_DJ IS
'登记时间';

COMMENT ON COLUMN B_KQ_CCJL.C_ZT IS
'状态';




/*==============================================================*/
/* Table: B_KQ_QQSB                                             */
/*==============================================================*/
CREATE TABLE B_KQ_QQSB  (
   N_XH                 NUMBER(8)                       NOT NULL,
   USER_ID              NUMBER(8),
   D_RQ                 DATE,
   C_SJ                 VARCHAR2(4000),
   C_TXYY               VARCHAR2(4000),
   D_DJ                 DATE,
   C_ZT                 CHAR(1),
   CONSTRAINT PK_B_KQ_QQSB PRIMARY KEY (N_XH)
);

COMMENT ON TABLE B_KQ_QQSB IS
'考情-缺勤申辩';

COMMENT ON COLUMN B_KQ_QQSB.N_XH IS
'序号';

COMMENT ON COLUMN B_KQ_QQSB.USER_ID IS
'用户ID';

COMMENT ON COLUMN B_KQ_QQSB.D_RQ IS
'日期';

COMMENT ON COLUMN B_KQ_QQSB.C_SJ IS
'事件';

COMMENT ON COLUMN B_KQ_QQSB.C_TXYY IS
'填写原因';

COMMENT ON COLUMN B_KQ_QQSB.D_DJ IS
'登记时间';

COMMENT ON COLUMN B_KQ_QQSB.C_ZT IS
'状态';


create sequence SEQ_KQ_SXB
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;



create sequence SEQ_KQ_YBJL
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;

create sequence SEQ_KQ_CCJL;
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;

create sequence SEQ_KQ_QQSB
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;
