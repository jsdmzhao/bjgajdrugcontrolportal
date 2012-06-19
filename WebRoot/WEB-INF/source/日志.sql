
DROP TABLE B_RIZHI CASCADE CONSTRAINTS;

/*==============================================================*/
/* TABLE: B_RIZHI                                                */
/*==============================================================*/
CREATE TABLE B_RIZHI 
(
   N_XH     NUMBER(8),
   C_YHID   VARCHAR2(20),
   C_YHZID  VARCHAR2(20),
   D_DJ     DATE,
   C_BT     VARCHAR2(100),
   C_NR     CLOB,
   C_SFSH   CHAR(1),
   C_SHR    VARCHAR2(20),
   D_SHSJ   DATE
)TABLESPACE DCP
  PCTFREE 10
  PCTUSED 40
  INITRANS 1
  MAXTRANS 255
  STORAGE
  (
    INITIAL 16K
    MINEXTENTS 1
    MAXEXTENTS UNLIMITED
  );
  
  --SEQUENCE
create sequence SEQ_B_RIZHI
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;
