
--手机归属地

DROP TABLE KIT_SJGSD;

/*==============================================================*/
/* Table: KIT_SJGSD                                             */
/*==============================================================*/
CREATE TABLE KIT_SJGSD  (
   N_HMD                NUMBER(7)                       NOT NULL,
   C_GSD                VARCHAR2(200),
   C_BZ                 VARCHAR2(200),
   CONSTRAINT PK_KIT_SJGSD PRIMARY KEY (N_HMD)
);

COMMENT ON TABLE KIT_SJGSD IS
'手机归属地';

COMMENT ON COLUMN KIT_SJGSD.N_HMD IS
'号码段';

COMMENT ON COLUMN KIT_SJGSD.C_GSD IS
'归属地';

COMMENT ON COLUMN KIT_SJGSD.C_BZ IS
'备注';
