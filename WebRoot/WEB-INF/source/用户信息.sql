

DROP TABLE B_YH;

/*==============================================================*/
/* Table: B_YH                                                  */
/*==============================================================*/
CREATE TABLE B_YH  (
   N_XH                 NUMBER(9)                       NOT NULL,
   USER_ID              NUMBER(9),
   N_JB                 NUMBER(1)                      ,
   N_YHZ                NUMBER(4)                      ,
   C_ZC                 VARCHAR2(100),
   C_XM                 VARCHAR2(30),
   N_XB                 NUMBER(1)                      ,
   D_SR                 DATE,
   C_GJ                 VARCHAR2(30),
   C_CSD                VARCHAR2(100),
   C_HYZK               VARCHAR2(20),
   C_XL                 VARCHAR2(20),
   C_BYYX               VARCHAR2(100),
   C_ZY                 VARCHAR2(100),
   C_KH                 VARCHAR2(20),
   C_HKSZD              VARCHAR2(100),
   C_DHHM               VARCHAR2(30),
   C_SJHM               VARCHAR2(30),
   C_YX                 VARCHAR2(100),
   C_DZ                 VARCHAR2(100),
   D_GZSJ               DATE,
   D_RZSJ               DATE,
   C_JCJL               VARCHAR2(4000),
   C_BZ                 VARCHAR2(4000),
   N_DLCS               NUMBER(10)                    ,
   D_ZXSC               NUMBER(10)                    ,
   N_LX                 NUMBER(4)                      ,
   C_YXIP               VARCHAR2(20),
   CONSTRAINT PK_yh PRIMARY KEY (N_XH)
);

COMMENT ON TABLE B_YH IS
'用户信息';

COMMENT ON COLUMN B_YH.N_XH IS
'序号';

COMMENT ON COLUMN B_YH.USER_ID IS
'用户ID';

COMMENT ON COLUMN B_YH.N_JB IS
'级别';

COMMENT ON COLUMN B_YH.N_YHZ IS
'用户组';

COMMENT ON COLUMN B_YH.C_ZC IS
'职称';

COMMENT ON COLUMN B_YH.C_XM IS
'姓名';

COMMENT ON COLUMN B_YH.N_XB IS
'性别';

COMMENT ON COLUMN B_YH.D_SR IS
'生日';

COMMENT ON COLUMN B_YH.C_GJ IS
'国籍';

COMMENT ON COLUMN B_YH.C_CSD IS
'出生地';

COMMENT ON COLUMN B_YH.C_HYZK IS
'婚姻状况';

COMMENT ON COLUMN B_YH.C_XL IS
'学历';

COMMENT ON COLUMN B_YH.C_BYYX IS
'毕业院校';

COMMENT ON COLUMN B_YH.C_ZY IS
'专业';

COMMENT ON COLUMN B_YH.C_KH IS
'卡号';

COMMENT ON COLUMN B_YH.C_HKSZD IS
'户口所在地';

COMMENT ON COLUMN B_YH.C_DHHM IS
'电话号码';

COMMENT ON COLUMN B_YH.C_SJHM IS
'手机号码';

COMMENT ON COLUMN B_YH.C_YX IS
'邮箱';

COMMENT ON COLUMN B_YH.C_DZ IS
'地址';

COMMENT ON COLUMN B_YH.D_GZSJ IS
'工作时间';

COMMENT ON COLUMN B_YH.D_RZSJ IS
'入职时间';

COMMENT ON COLUMN B_YH.C_JCJL IS
'检查记录';

COMMENT ON COLUMN B_YH.C_BZ IS
'备注';

COMMENT ON COLUMN B_YH.N_DLCS IS
'登录次数';

COMMENT ON COLUMN B_YH.D_ZXSC IS
'在线时长';

COMMENT ON COLUMN B_YH.N_LX IS
'类型';

COMMENT ON COLUMN B_YH.C_YXIP IS
'允许IP';



create sequence SEQ_YH
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;

