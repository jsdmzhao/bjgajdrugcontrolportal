DROP TABLE B_KQ_SXB ;

DROP TABLE B_KQ_YBJL;

DROP TABLE B_KQ_CCJL;

DROP TABLE B_KQ_QQSB;


DROP TABLE B_KQ_ZB;

/*==============================================================*/
/* Table: B_KQ_ZB                                              */
/*==============================================================*/
CREATE TABLE B_KQ_ZB  (
   N_XH                 NUMBER(8)                       NOT NULL,
   D_SJ                 DATE,
   USER_ID              NUMBER(8),
   C_DD                 VARCHAR2(200),
   C_YY                 VARCHAR2(4000),
   C_BZ                 VARCHAR2(200),
   CONSTRAINT PK_B_ZHIBAN PRIMARY KEY (N_XH)
);

COMMENT ON TABLE B_KQ_ZB IS
'值班';

COMMENT ON COLUMN B_KQ_ZB.N_XH IS
'序号';

COMMENT ON COLUMN B_KQ_ZB.D_SJ IS
'时间';

COMMENT ON COLUMN B_KQ_ZB.C_DD IS
'地点';

COMMENT ON COLUMN B_KQ_ZB.C_YY IS
'原因';

COMMENT ON COLUMN B_KQ_ZB.USER_ID IS
'人员';

COMMENT ON COLUMN B_KQ_ZB.C_BZ IS
'备注';


/*==============================================================*/
/* Table: B_KQ_SXB                                              */
/*==============================================================*/
CREATE TABLE B_KQ_SXB  (
   N_XH                 NUMBER(8)                       NOT NULL,
   N_LX                 NUMBER(4),
   USER_ID              NUMBER(8),
   C_DD                 VARCHAR2(200),
   C_YY                 VARCHAR2(4000),
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

COMMENT ON COLUMN B_KQ_SXB.C_DD IS
'地点';

COMMENT ON COLUMN B_KQ_SXB.C_YY IS
'原因';

COMMENT ON COLUMN B_KQ_SXB.D_DJ IS
'登记时间';

COMMENT ON COLUMN B_KQ_SXB.C_ZT IS
'状态';



/*==============================================================*/
/* Table: B_KQ_YBJL                                             */
/*==============================================================*/
CREATE TABLE B_KQ_YBJL  (
   N_XH                 NUMBER(8)                      NOT NULL,
   USER_ID              NUMBER(8),
   C_DD                 VARCHAR2(200),
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

COMMENT ON COLUMN B_KQ_YBJL.C_DD IS
'地点';

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
   C_DD                 VARCHAR2(200),
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

COMMENT ON COLUMN B_KQ_CCJL.C_DD IS
'地点';

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
   C_DD                 VARCHAR2(200),
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

COMMENT ON COLUMN B_KQ_QQSB.C_DD IS
'地点';


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


/*==============================================================*/
/* Table: B_KQ_ZBZ                                             */
/*==============================================================*/
CREATE TABLE B_KQ_ZBZ  (
   N_XH                 NUMBER(8)       NOT NULL,
   C_ZM                 VARCHAR2(200),                
   USER_ID              NUMBER(8),
   C_JB                 VARCHAR2(200),
   C_ZT                 CHAR(1),
   CONSTRAINT PK_B_KQ_ZBZ PRIMARY KEY (N_XH)
);

/*==============================================================*/
/* Table: B_HYJL                                             */
/*==============================================================*/
CREATE TABLE B_HYJL  (
   N_XH                 NUMBER(8)                       NOT NULL,
   C_HYZT                VARCHAR2(200),
   C_HYDD                VARCHAR2(200),
   D_RQ                 DATE,
   C_HYNR                VARCHAR2(4000),
   C_CJRY               VARCHAR2(4000),
   C_BZ              VARCHAR2(4000),
   C_ZT                 CHAR(1),
   CONSTRAINT PK_B_HYJL PRIMARY KEY (N_XH)
);

/*==============================================================*/
/* Table: B_CLXX                                             */
/*==============================================================*/
CREATE TABLE B_CLXX  (
   N_XH                 NUMBER(8)                       NOT NULL,
   C_XXWH               VARCHAR2(200),
   D_XXRQ                 DATE,
   C_BZ              VARCHAR2(4000),
   C_ZT                 CHAR(1),
   CONSTRAINT PK_B_CLXX PRIMARY KEY (N_XH)
);

create sequence SEQ_KQ_ZBZ
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;


create sequence SEQ_HYJL
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;


create sequence SEQ_CLXX
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;



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

create sequence SEQ_KQ_CCJL
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


create sequence SEQ_KQ_ZB
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;

