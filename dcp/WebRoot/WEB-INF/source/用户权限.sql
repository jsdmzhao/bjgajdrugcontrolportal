
drop table SYS_AUTHORITY ;
drop table SYS_GROUP ;
drop table SYS_GROUP_ROLE ;
drop table SYS_OPERATION ;
drop table SYS_PERMISSION ;
drop table SYS_RESOURCE ;
drop table SYS_ROLE ;
drop table SYS_USER ;
drop table SYS_USER_GROUP ;
DROP TABLE SYS_MENU;
DROP TABLE SYS_BUTTON;

/*==============================================================*/
/* Table: SYS_AUTHORITY                                         */
/*==============================================================*/
create table SYS_AUTHORITY  (
   AUTHORITY_ID         NUMBER(8)                      ,
   RESOURCE_ID          NUMBER(8)                       ,
   OPERATION_ID         NUMBER(8)                      ,
   constraint PK_SYS_AUTHORITY primary key (AUTHORITY_ID)
);

comment on table SYS_AUTHORITY is
'权限';

comment on column SYS_AUTHORITY.AUTHORITY_ID is
'权限编号';

comment on column SYS_AUTHORITY.RESOURCE_ID is
'资源编号';

comment on column SYS_AUTHORITY.OPERATION_ID is
'操作编号';


/*==============================================================*/
/* Table: SYS_GROUP                                             */
/*==============================================================*/
create table SYS_GROUP  (
   GROUP_ID             NUMBER(8)                       ,
   GROUP_NAME           VARCHAR2(20)                    ,
   GROUP_DESCRIPTION    VARCHAR2(100),
   constraint PK_SYS_GROUP primary key (GROUP_ID)
);

comment on table SYS_GROUP is
'组';

comment on column SYS_GROUP.GROUP_ID is
'组编号';

comment on column SYS_GROUP.GROUP_NAME is
'组名称';

comment on column SYS_GROUP.GROUP_DESCRIPTION is
'组描述';



/*==============================================================*/
/* Table: SYS_GROUP_ROLE                                        */
/*==============================================================*/
create table SYS_GROUP_ROLE  (
   GROUP_ROLE_ID        NUMBER(8)                       ,
   GROUP_ID             NUMBER(8)                       ,
   ROLE_ID              NUMBER(8)                       ,
   constraint PK_SYS_GROUP_ROLE primary key (GROUP_ROLE_ID)
);

comment on table SYS_GROUP_ROLE is
'组角色';

comment on column SYS_GROUP_ROLE.GROUP_ROLE_ID is
'组角色编号';

comment on column SYS_GROUP_ROLE.GROUP_ID is
'组编号';

comment on column SYS_GROUP_ROLE.ROLE_ID is
'角色编号';



/*==============================================================*/
/* Table: SYS_OPERATION                                         */
/*==============================================================*/
create table SYS_OPERATION  (
   OPERATION_ID         NUMBER(8)                       ,
   OPERATION_NAME       VARCHAR2(10)                    ,
   OPERATION_DESCRIPTION VARCHAR2(100),
   constraint PK_SYS_OPERATION primary key (OPERATION_ID)
);

comment on table SYS_OPERATION is
'操作';

comment on column SYS_OPERATION.OPERATION_ID is
'操作编号';

comment on column SYS_OPERATION.OPERATION_NAME is
'操作名称';

comment on column SYS_OPERATION.OPERATION_DESCRIPTION is
'操作描述';


/*==============================================================*/
/* Table: SYS_PERMISSION                                        */
/*==============================================================*/
create table SYS_PERMISSION  (
   PERMISSION_ID        NUMBER(8)                       ,
   ROLE_ID              NUMBER(8)                       ,
   AUTHORITY_ID         NUMBER(8)                       ,
   constraint PK_SYS_PERMISSION primary key (PERMISSION_ID)
);

comment on table SYS_PERMISSION is
'授权';

comment on column SYS_PERMISSION.PERMISSION_ID is
'授权编号';

comment on column SYS_PERMISSION.ROLE_ID is
'角色编号';

comment on column SYS_PERMISSION.AUTHORITY_ID is
'权限编号';


/*==============================================================*/
/* Table: SYS_RESOURCE                                          */
/*==============================================================*/
create table SYS_RESOURCE  (
   RESOURCE_ID          NUMBER(8)                       ,
   RESOURCE_NAME        VARCHAR2(20)                    ,
   RESOURCE_DESCRIPTION VARCHAR2(100),
   constraint PK_SYS_RESOURCE primary key (RESOURCE_ID)
);

comment on table SYS_RESOURCE is
'资源';

comment on column SYS_RESOURCE.RESOURCE_ID is
'资源编号';

comment on column SYS_RESOURCE.RESOURCE_NAME is
'资源名称';

comment on column SYS_RESOURCE.RESOURCE_DESCRIPTION is
'资源描述';


/*==============================================================*/
/* Table: SYS_ROLE                                              */
/*==============================================================*/
create table SYS_ROLE  (
   ROLE_ID              NUMBER(8)                       ,
   ROLE_NAME            VARCHAR2(20)                    ,
   ROLE_DESCRIPTION     VARCHAR2(100),
   constraint PK_SYS_ROLE primary key (ROLE_ID)
);

comment on table SYS_ROLE is
'角色';

comment on column SYS_ROLE.ROLE_ID is
'角色编号';

comment on column SYS_ROLE.ROLE_NAME is
'角色名称';

comment on column SYS_ROLE.ROLE_DESCRIPTION is
'角色描述';


/*==============================================================*/
/* Table: SYS_USER                                              */
/*==============================================================*/
create table SYS_USER  (
   USER_ID              NUMBER(8)                       ,
   USER_NAME            VARCHAR2(20)                    ,
   USER_PASSWORD        VARCHAR2(20)                    ,
   USER_LOCK            CHAR(1)                         ,
   constraint PK_SYS_USER primary key (USER_ID)
);

comment on table SYS_USER is
'用户表';

comment on column SYS_USER.USER_ID is
'用户编号';

comment on column SYS_USER.USER_NAME is
'用户名称';

comment on column SYS_USER.USER_PASSWORD is
'用户密码';

comment on column SYS_USER.USER_LOCK is
'用户状态';


/*==============================================================*/
/* Table: SYS_USER_GROUP                                        */
/*==============================================================*/
create table SYS_USER_GROUP  (
   USER_GROUP_ID        NUMBER(8)                       ,
   USER_ID              NUMBER(8)                       ,
   GROUP_ID             NUMBER(8)                       ,
   constraint PK_SYS_USER_GROUP primary key (USER_GROUP_ID)
);

comment on table SYS_USER_GROUP is
'用户组';

comment on column SYS_USER_GROUP.USER_GROUP_ID is
'用户组编号';

comment on column SYS_USER_GROUP.USER_ID is
'用户编号';

comment on column SYS_USER_GROUP.GROUP_ID is
'组编号';



/*==============================================================*/
/* Table: SYS_MENU                                              */
/*==============================================================*/
CREATE TABLE SYS_MENU  (
   MENU_ID              NUMBER(8)                       NOT NULL,
   MENU_NO              VARCHAR2(20),
   MENU_PARENT_NO       VARCHAR2(20),
   MENU_NAME            VARCHAR2(20),
   MENU_URL             VARCHAR2(100),
   MENU_ICON            VARCHAR2(100),
   ISVISIBLE            CHAR(1),
   CONSTRAINT PK_SYS_MENU PRIMARY KEY (MENU_ID)
);

COMMENT ON TABLE SYS_MENU IS
'菜单';

COMMENT ON COLUMN SYS_MENU.MENU_ID IS
'菜单序号';

COMMENT ON COLUMN SYS_MENU.MENU_NO IS
'菜单编号';

COMMENT ON COLUMN SYS_MENU.MENU_PARENT_NO IS
'上级编号';

COMMENT ON COLUMN SYS_MENU.MENU_NAME IS
'菜单名称';

COMMENT ON COLUMN SYS_MENU.MENU_URL IS
'菜单连接';

COMMENT ON COLUMN SYS_MENU.MENU_ICON IS
'菜单图标';

COMMENT ON COLUMN SYS_MENU.ISVISIBLE IS
'有效性';



/*==============================================================*/
/* Table: SYS_BUTTON                                            */
/*==============================================================*/
CREATE TABLE SYS_BUTTON  (
   BTN_ID                NUMBER(8)                       NOT NULL,
   BTN_NAME              VARCHAR2(20),
   BTN_NO                VARCHAR2(20),
   BTN_CLASS             VARCHAR2(20),
   BTN_ICON              VARCHAR2(100),
   BTN_SCRIPT            VARCHAR2(100),
   MENU_ID               NUMBER(8),
   INITSTATUS           CHAR(1)
);

COMMENT ON TABLE SYS_BUTTON IS
'按钮';

COMMENT ON COLUMN SYS_BUTTON.BTN_ID IS
'按钮序号';

COMMENT ON COLUMN SYS_BUTTON.BTN_NAME IS
'按钮名称';

COMMENT ON COLUMN SYS_BUTTON.BTN_NO IS
'按钮编号';

COMMENT ON COLUMN SYS_BUTTON.BTN_CLASS IS
'按钮类别';

COMMENT ON COLUMN SYS_BUTTON.BTN_ICON IS
'按钮图标';

COMMENT ON COLUMN SYS_BUTTON.BTN_SCRIPT IS
'按钮脚本';

COMMENT ON COLUMN SYS_BUTTON.MENU_NO IS
'菜单序号';

COMMENT ON COLUMN SYS_BUTTON.INITSTATUS IS
'状态';


create sequence SEQ_SYS_BTN_ID
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;
 

create sequence SEQ_SYS_MENU_ID
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;
 
create sequence SEQ_SYS_AUTHORITY_ID
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;

create sequence SEQ_SYS_GROUP_ID
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;

create sequence SEQ_SYS_GROUP_ROLE_ID
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;

create sequence SEQ_SYS_OPERATION_ID
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;

create sequence SEQ_SYS_PERMISSION_ID
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;

create sequence SEQ_SYS_RESOURCE_ID
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;

create sequence SEQ_SYS_ROLE_ID
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;

create sequence SEQ_SYS_USER_ID
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;

create sequence SEQ_SYS_USER_GROUP_ID
minvalue 10000000
maxvalue 99999999
start with 10000000
increment by 1
cache 20;

