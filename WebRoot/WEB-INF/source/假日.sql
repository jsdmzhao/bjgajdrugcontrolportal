
drop table B_JIARI ;

/*==============================================================*/
/* Table: B_JIARI                                               */
/*==============================================================*/
CREATE TABLE B_JIARI  (
   N_XH                 NUMBER(8)                       NOT NULL,
   D_RQ                 DATE,
   C_ZT                 CHAR(1)                       ,
   CONSTRAINT PK_JIARI PRIMARY KEY (N_XH)
);

COMMENT ON TABLE B_JIARI IS
'假日';

COMMENT ON COLUMN B_JIARI.N_XH IS
'序号';

COMMENT ON COLUMN B_JIARI.D_RQ IS
'日期';

COMMENT ON COLUMN B_JIARI.C_ZT IS
'状态';

create sequence SEQ_JIARI
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;