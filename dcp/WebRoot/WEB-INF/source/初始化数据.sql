delete from SYS_AUTHORITY ;
delete from SYS_GROUP ;
delete from SYS_GROUP_ROLE ;
delete from SYS_OPERATION ;
delete from SYS_PERMISSION ;
delete from SYS_RESOURCE ;
delete from SYS_ROLE ;
delete from SYS_USER ;
delete from SYS_USER_GROUP ;
delete from SYS_MENU;
delete from SYS_BUTTON;
delete from D_DM;

delete from B_ZMCD;
delete from B_WDZM;

delete from B_YH



--菜单
insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (1, '1', '0', '新闻管理', '', 'liger/lib/icons/silkicons/application.png', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (101, '101', '1', '文章发布', 'admin/app/news/news.jsp?newsType=1', 'liger/lib/icons/32X32/my_account.gif', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (102, '102', '1', '栏目列表', 'admin/app/column/column.jsp', 'liger/lib/icons/32X32/sitemap.gif', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (103, '103', '1', '文章审核', 'admin/app/news/newsAudit.jsp?newsType=1', 'liger/lib/icons/32X32/zoom.gif', '1' );


insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (2, '2', '0', '车辆管理', '', '', '1' );


insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (201, '201', '2', '车辆列表', 'admin/app/car/car.jsp', 'liger/lib/icons/32X32/sitemap.gif', '1' );


insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (202, '202', '2', '车辆审核', 'admin/app/car/carAudit.jsp', 'liger/lib/icons/32X32/zoom.gif', '1' );


insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (3, '3', '0', '日志管理', '', '', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (301, '301', '3', '日志列表', 'admin/app/blog/blog.jsp', 'liger/lib/icons/32X32/sitemap.gif', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (302, '302', '3', '日志审核', 'admin/app/blog/blogAudit.jsp', 'liger/lib/icons/32X32/zoom.gif', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (303, '303', '3', '日志推荐', 'admin/app/blog/blogSftj.jsp', 'liger/lib/icons/32X32/finished_work.gif', '1' );


insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (4, '4', '0', '警务管理', '', '', '1' );

--insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
--MENU_ICON, ISVISIBLE)values (401, '401', '4', '出勤', 'admin/app/duty/kqybjl.jsp?lx=CQ', 'liger/lib/icons/32X32/sitemap.gif', '1' );
--insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
--MENU_ICON, ISVISIBLE)values (402, '402', '4', '会议培训', 'admin/app/duty/kqybjl.jsp?lx=HYPX', 'liger/lib/icons/32X32/sitemap.gif', '1' );
--insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
--MENU_ICON, ISVISIBLE)values (403, '403', '4', '出差', 'admin/app/duty/kqybjl.jsp?lx=CC', 'liger/lib/icons/32X32/sitemap.gif', '1' );
--insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
--MENU_ICON, ISVISIBLE)values (404, '404', '4', '市内外出', 'admin/app/duty/kqybjl.jsp?lx=SNWC', 'liger/lib/icons/32X32/sitemap.gif', '1' );
--insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
--MENU_ICON, ISVISIBLE)values (405, '405', '4', '请销假', 'admin/app/duty/kqccjl.jsp', 'liger/lib/icons/32X32/sitemap.gif', '1' );
--insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
--MENU_ICON, ISVISIBLE)values (406, '406', '4', '值班组', 'admin/app/duty/kqzbz.jsp', 'liger/lib/icons/32X32/sitemap.gif', '1' );

--insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
--MENU_ICON, ISVISIBLE)values (407, '407', '4', '值班管理', 'admin/app/duty/kqzb.jsp', 'liger/lib/icons/32X32/sitemap.gif', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (401, '401', '4', '因公请销假', 'admin/app/duty/kqybjl.jsp?lx=YG', 'liger/lib/icons/32X32/sitemap.gif', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (402, '402', '4', '因私请销假', 'admin/app/duty/kqybjl.jsp?lx=YS', 'liger/lib/icons/32X32/sitemap.gif', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (403, '403', '4', '勤务安排', 'admin/app/duty/kqqwap.jsp', 'liger/lib/icons/32X32/sitemap.gif', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (404, '404', '4', '会议提示', 'admin/app/duty/kqhyts.jsp', 'liger/lib/icons/32X32/sitemap.gif', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (405, '405', '4', '会议室申请', 'admin/app/duty/kqhyssq.jsp', 'liger/lib/icons/32X32/sitemap.gif', '1' );

--insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
--MENU_ICON, ISVISIBLE)values (406, '406', '4', '值班组管理', 'admin/app/duty/kqzbz.jsp', 'liger/lib/icons/32X32/sitemap.gif', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (407, '407', '4', '值班管理', 'admin/app/duty/kqzb.jsp', 'liger/lib/icons/32X32/sitemap.gif', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (408, '408', '4', '请销假审核', 'admin/app/duty/kqqxjsh.jsp', 'liger/lib/icons/32X32/sitemap.gif', '1' );




insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (5, '5', '0', '系统管理', '', '', '1' );
 
insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (501, '501', '5', '角色管理', 'admin/app/role/role.jsp', 'liger/lib/icons/32X32/my_account.gif', '1' );
 
insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (502, '502', '5', '用户管理', 'admin/app/user/user.jsp', 'liger/lib/icons/32X32/role.gif', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (503, '503', '5', '用户资料', 'admin/app/userinfo/userinfo.jsp', 'liger/lib/icons/32X32/role.gif', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (504, '504', '5', '菜单管理', 'admin/app/menu/menu.jsp', 'liger/lib/icons/32X32/sitemap.gif', '1' );

 
insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (505, '505', '5', '权限中心', 'admin/app/permission/permission.jsp', 'liger/lib/icons/32X32/link.gif', '1' );

 
 insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (506, '506', '5', '网址类别', 'admin/app/website/webtype.jsp', 'liger/lib/icons/32X32/link.gif', '1' );

 insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (507, '507', '5', '常用网址', 'admin/app/website/website.jsp', 'liger/lib/icons/32X32/world.gif', '1' );


 insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (508, '508', '5', '公告列表', 'admin/app/notice/notice.jsp', 'liger/lib/icons/32X32/order_159.gif', '1' );


 insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (509, '509', '5', '车辆管理', 'admin/app/car/cartype.jsp', 'liger/lib/icons/32X32/milestone.gif', '1' );

 insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (510, '510', '5', '假日管理', 'admin/app/holiday/holiday.jsp', 'liger/lib/icons/32X32/world.gif', '1' );

 insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (511, '511', '5', '桌面菜单', 'admin/app/desktop/zmcd.jsp', 'liger/lib/icons/32X32/world.gif', '1' );

 insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (512, '512', '5', '我的桌面', 'admin/app/desktop/wdzm.jsp', 'liger/lib/icons/32X32/world.gif', '1' );

-- insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
--MENU_ICON, ISVISIBLE)values (513, '513', '5', '会议管理', 'admin/app/meeting/meeting.jsp', 'liger/lib/icons/32X32/world.gif', '1' );

 insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (514, '514', '5', '车辆限行', 'admin/app/limit/limit.jsp', 'liger/lib/icons/32X32/world.gif', '1' );




--新增
insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (6, '6', '0', '内部消息', '', 'liger/lib/icons/silkicons/application.png', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (601, '601', '6', '未读消息', 'admin/app/message/messageNoread.jsp', 'liger/lib/icons/32X32/my_account.gif', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (602, '602', '6', '收件箱', 'admin/app/message/messageRecieve.jsp', 'liger/lib/icons/32X32/sitemap.gif', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (603, '603', '6', '发件箱', 'admin/app/message/message.jsp', 'liger/lib/icons/32X32/zoom.gif', '1' );

--新增
insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (7, '7', '0', '内部邮件', '', 'liger/lib/icons/silkicons/application.png', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (701, '701', '7', '未读邮件', 'admin/app/email/emailNoread.jsp', 'liger/lib/icons/32X32/zoom.gif', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (702, '702', '7', '收件箱', 'admin/app/email/emailRecieve.jsp', 'liger/lib/icons/32X32/sitemap.gif', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (703, '703', '7', '发件箱', 'admin/app/email/email.jsp?c_zt=1', 'liger/lib/icons/32X32/zoom.gif', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (704, '704', '7', '草稿箱', 'admin/app/email/email.jsp?c_zt=2', 'liger/lib/icons/32X32/zoom.gif', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (705, '705', '7', '垃圾箱', 'admin/app/email/emailDelete.jsp', 'liger/lib/icons/32X32/zoom.gif', '1' );

--按钮

insert into SYS_BUTTON (BTN_ID, BTN_NAME, BTN_NO, BTN_CLASS, BTN_ICON, BTN_SCRIPT, MENU_ID, INITSTATUS)
SELECT SEQ_SYS_BTN_ID.NEXTVAL, '增加', 'add', null, 'liger/lib/icons/silkicons/add.png', null, MENU_ID, null FROM SYS_MENU WHERE MENU_PARENT_NO<>'0';

insert into SYS_BUTTON (BTN_ID, BTN_NAME, BTN_NO, BTN_CLASS, BTN_ICON, BTN_SCRIPT, MENU_ID, INITSTATUS)
SELECT SEQ_SYS_BTN_ID.NEXTVAL, '修改', 'modify', null, 'liger/lib/icons/silkicons/application_edit.png', null, MENU_ID, null FROM SYS_MENU WHERE MENU_PARENT_NO<>'0';

insert into SYS_BUTTON (BTN_ID, BTN_NAME, BTN_NO, BTN_CLASS, BTN_ICON, BTN_SCRIPT, MENU_ID, INITSTATUS)
SELECT SEQ_SYS_BTN_ID.NEXTVAL, '删除', 'delete', null, 'liger/lib/icons/silkicons/delete.png', null, MENU_ID, null FROM SYS_MENU WHERE MENU_PARENT_NO<>'0';





--部门科室信息



insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000091, 'DEP', '1', '总队领导', 1, null, null, to_date('02-12-2012 19:44:22', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000092, 'DEP', '3', '办公室', 2, null, null, to_date('02-12-2012 19:44:22', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000093, 'DEP', '4', '协调指导大队', 3, null, null, to_date('02-12-2012 19:44:22', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000094, 'DEP', '5', '缉控大队', 4, null, null, to_date('02-12-2012 19:44:22', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000095, 'DEP', '7', '侦查大队', 6, null, null, to_date('02-12-2012 19:44:22', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000096, 'DEP', '8', '查禁大队', 7, null, null, to_date('02-12-2012 19:44:22', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000097, 'DEP', '9', '情报中心', 5, null, null, to_date('02-12-2012 19:44:22', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000098, 'DEP', '10', '两品办', 10, null, null, to_date('02-12-2012 19:44:22', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000099, 'DEP', '11', '易管大队', 8, null, null, to_date('02-12-2012 19:44:22', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000100, 'DEP', '12', '法制处', 9, null, null, to_date('02-12-2012 19:44:22', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000101, 'OFF', '1', '情报一队', 1, null, '9', to_date('02-12-2012 19:44:22', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000102, 'OFF', '2', '情报二队', 2, null, '9', to_date('02-12-2012 19:44:22', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000103, 'OFF', '3', '情报三队', 3, null, '9', to_date('02-12-2012 19:44:22', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000104, 'OFF', '4', '查禁一队', 4, null, '8', to_date('02-12-2012 19:44:23', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000105, 'OFF', '5', '查禁二队', 5, null, '8', to_date('02-12-2012 19:44:23', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000106, 'OFF', '6', '内勤探组', 6, null, '8', to_date('02-12-2012 19:44:23', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000107, 'OFF', '7', '缉控一队', 7, null, '5', to_date('02-12-2012 19:44:23', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000108, 'OFF', '8', '缉控二队', 8, null, '5', to_date('02-12-2012 19:44:23', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000109, 'OFF', '9', '内勤探组', 9, null, '5', to_date('02-12-2012 19:44:23', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000110, 'OFF', '10', '侦察一队', 10, null, '7', to_date('02-12-2012 19:44:23', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000111, 'OFF', '11', '侦察二队', 11, null, '7', to_date('02-12-2012 19:44:23', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000112, 'OFF', '12', '内勤探组', 12, null, '7', to_date('02-12-2012 19:44:23', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000113, 'OFF', '13', '易管队', 13, null, '11', to_date('02-12-2012 19:44:23', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000114, 'OFF', '14', '内勤探组', 14, null, '11', to_date('02-12-2012 19:44:23', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000115, 'OFF', '15', '法制', 15, null, '12', to_date('02-12-2012 19:44:23', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000116, 'OFF', '16', '秘书科', 16, null, '3', to_date('02-12-2012 19:44:23', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000117, 'OFF', '17', '政工科', 17, null, '3', to_date('02-12-2012 19:44:23', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000118, 'OFF', '18', '警务保障及警务指导', 18, null, '3', to_date('02-12-2012 19:44:23', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000119, 'OFF', '19', '吸毒人员动态管控组', 19, null, '4', to_date('02-12-2012 19:44:23', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000120, 'OFF', '20', '预防宣传教育', 20, null, '4', to_date('02-12-2012 19:44:23', 'dd-mm-yyyy hh24:mi:ss'));

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (10000121, 'OFF', '21', '内勤组', 21, null, '4', to_date('02-12-2012 19:44:23', 'dd-mm-yyyy hh24:mi:ss'));



--账户基本信息


insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (319, 'jiangxinchun', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (317, 'zhangyuanhe', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (318, 'wenwu', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (320, 'liuyanjun', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (321, 'lvyang', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (322, 'zhaodongwen', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (323, 'weiguojun', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (324, 'limeng', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (325, 'limeng', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (326, 'cuiguangze', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (327, 'chenchunhong', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (112, 'xiongliang', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (1, 'admin', '1', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (3, 'zhaowenzhong', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (4, 'liuyi', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (5, 'yiyang', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (7, 'tangli', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (8, 'chekejian', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (9, 'luoxiaoyu', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (10, 'dongsong', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (11, 'zhangwenpeng', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (12, 'yanglin', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (13, 'zhangjianqun', '009726', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (16, 'gumeng', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (17, 'xizhiyong', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (18, 'baoliguo', '009726', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (19, 'lizheng', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (20, 'doushaolin', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (21, 'wangyufu', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (22, 'renlijuan', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (23, 'yangjun', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (24, 'chenzhiwen', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (25, 'zhaofang', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (26, 'wangbiao', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (27, 'zhangxian', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (28, 'liuzuojun', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (29, 'wangqi', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (30, 'jiangshengjie', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (31, 'jingjun', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (32, 'lanjinfei', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (33, 'lirui', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (34, 'yanjian', 'kakalove79101218', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (35, 'songwei', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (36, 'wangwenbin', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (37, 'wangpeng', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (38, 'chenqu', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (39, 'lixiaolu', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (40, 'zhangxin', '820304', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (41, 'zhongping', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (42, 'zhangshiqiang', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (43, 'zhangjian', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (44, 'xiaoyanwei', '551203', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (45, 'zhangyun', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (316, 'yangyan', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (47, 'chenshu', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (48, 'gongbaocheng', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (315, 'yangziqing', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (50, 'liuyingru', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (51, 'tenghaihui', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (52, 'songlijun', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (53, 'liyifan', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (55, 'yaoqingsheng', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (56, 'yangguozhang', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (57, 'jixiaolei', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (58, 'guoyinmao', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (59, 'lijing', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (60, 'bibo', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (61, 'zhangxiuqi', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (62, 'wangsuyin', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (63, 'sunyuanyuan', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (64, 'shilei', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (65, 'liujie', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (67, 'wangjinjia', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (68, 'zhaoyuechun', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (69, 'xuyanbo', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (71, 'zhangjihong', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (73, 'tianyongfeng', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (74, 'zhenghong', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (75, 'yinfuqiang', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (76, 'jianghaitao', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (77, 'zhengbin', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (78, 'liangchong', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (79, 'wangxiangli', '293385', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (80, 'liuyinsong', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (81, 'shiwei', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (82, 'wangyang', '123456', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (84, 'huimin', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (85, 'zhangtailin', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (86, 'lixiaodong', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (88, 'gaoliguo', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (89, 'wangguanlong', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (90, 'liuji', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (91, 'piaochengguo', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (92, 'tianliang', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (93, 'luchunhua', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (94, 'zhaohaifeng', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (95, 'jinpeng', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (96, 'shidandan', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (97, 'cuiqun', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (101, 'zhangtao', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (102, 'jiangxinchun', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (104, 'chejiayin', '000000', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (105, 'liuluwa', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (106, 'xuezhuang', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (107, 'jiangrui', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (108, 'quzhongle', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (109, 'zhangjing', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (313, 'haoyibin', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (311, 'cuixin', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (111, 'wangxiaofei', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (312, 'maziwei', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (119, 'jinzhihai', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (113, 'zhibanshi', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (114, 'wangfei', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (115, 'dongyonghui', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (314, 'zhaolingwen', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (116, 'lizhixin', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (310, 'shenshujuan', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (117, 'lizhixin', '111111', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (118, 'renchao', '002912', null);

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (309, 'wangyanming', '111111', null);

--用户基本信息

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (320, 320, '5', '8', '民警', '刘彦俊', null, null, null, null, null, null, null, null, null, null, null, null, null, '北京市宣武区半步桥44号', null, null, null, null, null, 2815208, '1', null, '5');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (321, 321, '5', '8', '民警', '吕扬', null, null, null, null, null, null, null, null, null, null, null, null, null, '北京市宣武区半步桥44号', null, null, null, null, null, 2815208, '1', null, '6');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (322, 322, '5', '5', '民警', '赵东雯', null, null, null, null, null, null, null, null, null, null, null, null, null, '北京市宣武区半步桥44号', null, null, null, null, null, 2815208, '1', null, '9');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (323, 323, '5', '7', '民警', '魏国君', null, null, null, null, null, null, null, null, null, null, null, null, null, '北京市宣武区半步桥44号', null, null, null, null, null, 2815208, '1', null, '11');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (324, 324, '5', '7', '民警', '李蒙', null, null, null, null, null, null, null, null, null, null, null, null, null, '北京市宣武区半步桥44号', null, null, null, null, null, 2815208, '1', null, '12');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (325, 325, '5', '11', '民警', '唐屴', null, null, null, null, null, null, null, null, null, null, null, null, null, '北京市宣武区半步桥44号', null, null, null, null, null, 2815208, '1', null, '14');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (326, 326, '5', '12', '民警', '崔光泽', null, null, null, null, null, null, null, null, null, null, null, null, null, '北京市宣武区半步桥44号', null, null, null, null, null, 2815208, '1', null, '15');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (327, 327, '5', '6', '民警', '陈春红', null, null, null, null, null, null, null, null, null, null, null, null, null, '北京市宣武区半步桥44号', null, null, null, null, null, 2815208, '1', null, '18');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (318, 318, '5', '9', '民警', '文武', null, null, null, null, null, null, null, null, null, null, null, null, null, '北京市宣武区半步桥44号', null, null, null, null, null, 2815208, '1', null, '1');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (319, 319, '5', '8', '民警', '蒋新春', null, null, null, null, null, null, null, null, null, null, null, null, null, '北京市宣武区半步桥44号', null, null, null, null, null, 2815208, '1', null, '4');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (67, 74, '5', '5', '民警', '郑红', null, to_date('08-08-1962', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13801002020', null, '北京市宣武区半步桥44号', null, null, null, null, null, 2815208, '1', '10.8.58.190', '8');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (2, 1, '5', '0', '管理员', '管理员', null, to_date('10-02-2009', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994968', '13910666539', null, '半步桥街44号', null, null, null, null, null, 2482341, '1', '-1', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (4, 4, '0', '1', '总队长', '柳毅', null, to_date('23-01-1961', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13701095101', null, '北京市宣武区半步桥44号', null, null, null, null, null, 16796622, '1', '-1', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (5, 5, '1', '1', '副总队长', '易  阳', null, to_date('03-11-1966', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13801316889', null, '北京市宣武区半步桥44号', null, null, null, null, null, 38876, '1', '10.8.58.53', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (317, 317, '1', '1', '纪委书记', '张远合', null, null, null, null, null, null, null, null, null, null, '83994900', '13901204283', null, '北京市宣武区半步桥44号', null, null, null, null, null, 1571187, '1', '10.8.58.51', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (7, 8, '5', '11', '调研员', '车克俭', null, to_date('24-06-1961', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13701217110', null, '北京市宣武区半步桥44号', null, null, null, null, null, 2656, '1', null, '18');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (8, 9, '2', '9', '政委', '罗晓宇', null, to_date('18-05-1967', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994913', '13801381840', null, '北京市宣武区半步桥44号', null, null, null, null, null, 24264290, '1', '-1', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (9, 10, '3', '4', '副大队长', '董松', null, to_date('03-12-1962', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994922', '13911931677', null, '北京市宣武区半步桥44号', null, null, null, null, null, 213630, '1', '-1', '19');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (10, 11, '3', '3', '副主任', '张文鹏', null, to_date('12-11-1977', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994938', '13701354870', null, '北京市宣武区半步桥44号', null, null, null, null, null, 7815263, '1', '-1', '16');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (11, 12, '5', '3', '民警', '杨琳', null, to_date('26-03-1957', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994928', '13901115169', null, '北京市宣武区半步桥44号', null, null, null, null, null, 2016225, '2', '-1', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (12, 13, '5', '3', '民警', '张建群', null, to_date('12-08-1962', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13611255282', null, '北京市宣武区半步桥44号', null, null, null, null, null, 58721229, '1', '10.8.58.99', '18');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (13, 16, '3', '11', '探长', '顾猛', null, to_date('29-09-1983', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911171665', null, '北京市宣武区半步桥44号', null, null, null, null, null, 1032361, '2', '10.8.58.62', '13');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (14, 17, '5', '11', '民警', '席志勇', null, to_date('06-08-1955', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994926', '15811036116', null, '北京市宣武区半步桥44号', null, null, null, null, null, 6002912, '2', '10.8.58.69', '14');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (15, 18, '5', '3', '警务保障科科长', '暴立国', null, to_date('04-03-1964', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83996637', '13901247323', null, '北京市宣武区半步桥44号', null, null, null, null, null, 26336052, '1', '10.8.45.169', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (16, 19, '5', '7', '民警', '李争', null, to_date('21-11-1974', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994961', '13911818505', null, '北京市宣武区半步桥44号', null, null, null, null, null, 267484, '1', '-1', '10');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (17, 20, '5', '3', '民警', '窦绍林', null, to_date('30-11-1960', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13501007453', null, '北京市宣武区半步桥44号', null, null, null, null, null, 2147286, '2', '-1', '18');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (18, 21, '5', '3', '工会副主席', '王愚福', null, to_date('23-09-1972', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994917', '13910109032', null, '北京市宣武区半步桥44号', null, null, null, null, null, 1610708, '2', '-1', '17');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (19, 22, '5', '3', '民警', '任立娟', null, to_date('13-04-1970', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994918', '13901254895', null, '北京市宣武区半步桥44号', null, null, null, null, null, 22628126, '2', '-1', '16');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (20, 23, '5', '3', '民警', '杨  军', null, to_date('11-09-1967', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13621216433', null, '北京市宣武区半步桥44号', null, null, null, null, null, 5633353, '2', '-1', '18');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (21, 24, '5', '11', '民警', '陈志文', null, to_date('26-12-1958', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13699282961', null, '北京市宣武区半步桥44号', null, null, null, null, null, 9570718, '2', '-1', '13');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (22, 25, '2', '3', '处长', '赵芳', null, to_date('13-07-1962', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901372307', null, '北京市宣武区半步桥44号', null, null, null, null, null, 4752142, '1', '-1', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (23, 26, '5', '8', '探长', '王  飙', null, to_date('22-12-1982', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13381202135', null, '北京市宣武区半步桥44号', null, null, null, null, null, 1168272, '2', '10.8.58.194', '18');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (24, 27, '5', '3', '民警', '张  宪', null, to_date('13-07-1954', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13601319994', null, '北京市宣武区半步桥44号', null, null, null, null, null, 13784691, '2', '-1', '18');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (25, 28, '2', '9', '主任', '刘作军', null, to_date('14-10-1957', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83552026', '13901213512', null, '北京市西城区半步桥街44号', null, null, null, null, null, 6903781, '1', '-1', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (26, 29, '3', '9', '副大队长', '王琪', null, to_date('04-01-1977', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994955', '13910220617', null, '北京市宣武区半步桥44号', null, null, null, null, null, 6305439, '1', '10.8.58.118', '3');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (27, 30, '2', '11', '大队长', '蒋胜杰', null, to_date('19-09-1971', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901210153', null, '北京市宣武区半步桥44号', null, null, null, null, null, 6443, '1', '10.8.58.192', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (28, 31, '2', '4', '政委', '荆军', null, to_date('10-05-1968', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83552003', '13501234033', null, '北京市朝阳区豆各庄黄厂村', null, null, null, null, null, 22957463, '1', '-1', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (29, 32, '5', '9', '民警', '兰晋飞', null, to_date('01-04-1981', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911931957', null, '北京市宣武区半步桥44号', null, null, null, null, null, 674940, '1', '-1', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (30, 33, '5', '9', '民警', '李  汭', null, to_date('23-12-1980', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994933', '13801169862', null, '北京市宣武区半步桥44号', null, null, null, null, null, 14242185, '2', '10.8.58.201', '2');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (31, 34, '3', '9', '副主任', '严建', null, to_date('18-12-1979', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994951', '13910666539', null, '北京市宣武区半步桥44号', null, null, null, null, null, 7006059, '2', '-1', '1');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (32, 35, '3', '9', '办公室副主任', '宋威', null, to_date('20-07-1977', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994957', '13911090053', null, '北京市宣武区半步桥44号', null, null, null, null, null, 3817590, '1', '-1', '2');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (33, 36, '5', '9', '民警', '王文斌', null, to_date('08-10-1959', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901395253', null, '北京市宣武区半步桥44号', null, null, null, null, null, 2058073, '1', '-1', '2');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (34, 37, '3', '7', '民警', '王鹏', null, to_date('07-12-1980', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994965', '13911932634', null, '北京市宣武区半步桥44号', null, null, null, null, null, 402582, '1', '10.8.58.163', '11');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (35, 38, '5', '11', '民警', '陈  曲', null, to_date('28-03-1975', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13581908951', null, '北京市宣武区半步桥44号', null, null, null, null, null, 0, '1', null, '13');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (36, 39, '5', '9', '民警', '李晓露', null, to_date('18-10-1978', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13501106528', null, '北京市宣武区半步桥44号', null, null, null, null, null, 814983, '1', '10.8.58.163', '3');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (37, 40, '5', '3', '民警', '张鑫', null, to_date('04-03-1982', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994920', '13699228826', null, '北京市宣武区半步桥44号', null, null, null, null, null, 7133811, '2', '10.8.58.61', '16');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (38, 41, '2', '4', '处长', '钟  平', null, to_date('18-10-1961', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911931681', null, '北京市宣武区半步桥44号', null, null, null, null, null, 1649, '3', '10.9.54.5', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (39, 42, '3', '3', '副主任', '张世强', null, to_date('11-03-1970', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13701279817', null, '北京市宣武区半步桥44号', null, null, null, null, null, 2140690, '3', '-1', '18');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (40, 43, '5', '4', '民警', '张  健', null, to_date('28-12-1961', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13801151367', null, '北京市宣武区半步桥44号', null, null, null, null, null, 8327222, '3', '10.9.54.17', '21');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (41, 44, '5', '12', '民警', '肖燕威', null, to_date('03-12-1955', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83552017', '13910139552', null, '北京市宣武区半步桥44号', null, null, null, null, null, 6833990, '3', '-1', '15');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (42, 45, '5', '11', '民警', '张  芸', null, to_date('08-04-1971', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901295919', null, '北京市宣武区半步桥44号', null, null, null, null, null, 4074355, '3', '10.9.54.20', '13');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (43, 316, '5', '3', '民警', '杨砚', null, to_date('02-06-1979', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911285512', null, '半步桥44号', null, null, null, null, null, 0, '1', '-1', '20');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (44, 47, '5', '4', '民警', '陈  述', null, to_date('05-02-1964', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911931680', null, '北京市宣武区半步桥44号', null, null, null, null, null, 192097, '3', null, '21');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (45, 48, '3', '4', '民警', '宫保成', null, to_date('04-04-1957', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13910172155', null, '北京市宣武区半步桥44号', null, null, null, null, null, 2660488, '3', '10.9.54.18', '21');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (46, 315, '5', '9', '志愿者', '杨紫清', null, to_date('01-03-1997', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994963', '15911034081', null, 'A707', null, null, null, null, null, 3148, '1', '-1', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (47, 50, '5', '4', '民警', '刘英茹', null, to_date('13-03-1975', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13910336556', null, '北京市宣武区半步桥44号', null, null, null, null, null, 3616237, '3', '10.9.54.15', '19');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (48, 51, '3', '11', '民警', '滕海辉', null, to_date('17-05-1984', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13501132009', null, '北京市宣武区半步桥44号', null, null, null, null, null, 10063406, '1', '10.8.58.59', '6');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (49, 52, '5', '11', '民警', '宋丽君', null, to_date('29-06-1972', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911931963', null, '北京市宣武区半步桥44号', null, null, null, null, null, 5075, '1', '10.8.58.161', '13');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (50, 53, '3', '4', '副大队长', '李轶凡', null, to_date('11-03-1977', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83551103', '13801217066', null, '北京市宣武区半步桥44号，100054、北京邮政2341信箱，100121', null, null, null, null, null, 11476185, '3', '10.9.54.11', '20');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (51, 55, '2', '7', '政委', '姚庆生', null, to_date('01-10-1962', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901039329', null, '北京市宣武区半步桥44号', null, null, null, null, null, 3495679, '1', '10.8.58.113', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (52, 56, '3', '11', '副大队长', '杨国章', null, to_date('02-05-1959', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13801155932', null, '北京市宣武区半步桥44号', null, null, null, null, null, 1579749, '1', '10.8.58.180', '14');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (53, 57, '3', '7', '民警', '冀肖雷', null, to_date('28-09-1967', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901286762', null, '北京市宣武区半步桥44号', null, null, null, null, null, 745689, '1', '10.8.58.188', '12');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (54, 58, '5', '11', '助理调研员', '郭荫茂', null, to_date('22-01-1958', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994980', '18910088769', null, '北京市宣武区半步桥44号', null, null, null, null, null, 12396280, '2', '-1', '14');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (55, 59, '5', '7', '民警', '李  京', null, to_date('29-01-1962', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13701172462', null, '北京市宣武区半步桥44号', null, null, null, null, null, 835, '1', null, null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (56, 60, '2', '7', '大队长', '毕  波', null, to_date('02-01-1970', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13801073120', null, '北京市宣武区半步桥44号', null, null, null, null, null, 158331, '1', '-1', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (57, 61, '5', '7', '民警', '张秀琦', null, to_date('19-01-1970', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994950', '13911833009', null, '北京市宣武区半步桥44号', null, null, null, null, null, 13895937, '2', '10.8.58.186', '11');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (58, 62, '5', '7', '民警', '王素寅', null, to_date('20-07-1974', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994975', '13911931692', null, '北京市宣武区半步桥44号', null, null, null, null, null, 58981, '2', '10.8.58.189', '12');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (59, 63, '5', '7', '民警', '孙元元', null, to_date('01-02-1979', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994979', '13801191066', null, '北京市宣武区半步桥44号A0715', null, null, null, null, null, 91363, '2', '10.8.58.187', '10');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (60, 64, '3', '3', '副主任', '石  磊', null, to_date('29-10-1980', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13910101411', null, '北京市宣武区半步桥44号', null, null, null, null, null, 5706938, '2', '-1', '17');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (61, 65, '5', '7', '民警', '刘杰', null, to_date('13-03-1974', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994932', '13701025508', null, '北京市宣武区半步桥44号', null, null, null, null, null, 6318974, '1', '-1', '11');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (62, 67, '5', '7', '民警', '王晋佳', null, to_date('03-10-1981', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13910992759', null, '北京市宣武区半步桥44号', null, null, null, null, null, 53539, '1', '10.8.58.70', '11');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (63, 68, '5', '7', '民警', '赵跃春', null, to_date('22-01-1960', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994921', '13801264144', null, '北京市宣武区半步桥44号', null, null, null, null, null, 491416, '2', '-1', '18');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (64, 69, '3', '7', '民警', '徐燕渤', null, to_date('12-02-1973', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13601011175', null, '北京市宣武区半步桥44号', null, null, null, null, null, 465632, '1', '10.8.58.185', '10');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (65, 71, '1', '1', '副总队长', '张继宏', null, to_date('01-02-1968', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901361509', null, '北京市宣武区半步桥44号', null, null, null, null, null, 1877978, '1', '-1', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (66, 73, '2', '8', '大队长', '田永峰', null, to_date('23-01-1975', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911931687', null, '北京市宣武区半步桥44号', null, null, null, null, null, 143270, '1', '-1', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (68, 75, '5', '8', '民警', '殷富强', null, to_date('21-03-1962', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901154386', null, '北京市宣武区半步桥44号', null, null, null, null, null, 229827, '1', '10.8.58.190', '4');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (69, 76, '5', '8', '民警', '蒋海涛', null, to_date('07-02-1974', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911836916', null, '北京市宣武区半步桥44号', null, null, null, null, null, 6952, '1', '10.8.58.193', '6');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (70, 77, '5', '8', '民警', '郑斌', null, to_date('27-09-1963', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994989', '13901166209', null, '北京市宣武区半步桥44号', null, null, null, null, null, 57594213, '1', '10.8.58.121', '6');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (71, 78, '3', '8', '副大队长', '梁  冲', null, to_date('17-12-1978', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911605588', null, '北京市宣武区半步桥44号', null, null, null, null, null, 11464, '1', '10.8.58.190', '4');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (72, 79, '5', '8', '民警', '王向利', null, to_date('11-06-1963', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13810312157', null, '北京市宣武区半步桥44号', null, null, null, null, null, 337184, '2', '-1', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (73, 80, '5', '3', '文秘科科长', '刘印松', null, to_date('27-04-1981', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994947', '13911785033', null, '北京市宣武区半步桥44号', null, null, null, null, null, 2612777, '1', '-1', '16');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (74, 81, '5', '3', '民警', '石  伟', null, to_date('16-07-1977', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13910166936', null, '北京市宣武区半步桥44号', null, null, null, null, null, 4771220, '2', '10.8.58.84', '17');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (75, 82, '5', '9', '民警', '王阳', null, to_date('05-03-1976', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13020012223', null, '北京市宣武区半步桥44号', null, null, null, null, null, 203364, '1', '10.8.58.191', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (76, 84, '5', '8', '民警', '惠  敏', null, to_date('11-02-1960', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13651204284', null, '北京市宣武区半步桥44号', null, null, null, null, null, 0, '1', null, null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (77, 85, '5', '8', '民警', '张太林', null, to_date('03-04-1961', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911181166', null, '北京市宣武区半步桥44号', null, null, null, null, null, 116590, '2', '10.8.58.190', '5');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (78, 86, '3', '5', '副大队长', '李晓东', null, to_date('22-11-1971', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911831173', null, '北京市宣武区半步桥44号', null, null, null, null, null, 556066, '1', '10.8.58.63', '7');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (79, 88, '2', '5', '大队长', '高立国', null, to_date('24-04-1972', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83552011', '13911931688', null, '北京市宣武区半步桥44号A0304', null, null, null, null, null, 2422006, '1', '10.8.58.155', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (80, 89, '5', '11', '民警', '王官龙', null, to_date('07-09-1957', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901317330', null, '北京市宣武区半步桥44号', null, null, null, null, null, 2, '2', null, null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (81, 90, '5', '5', '民警', '刘骥', null, to_date('31-05-1981', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994946', '13911862665', null, '北京市宣武区半步桥44号', null, null, null, null, null, 2879374, '2', '10.8.58.160', '8');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (82, 91, '5', '5', '民警', '朴成国', null, to_date('24-09-1971', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901356617', null, '北京市宣武区半步桥44号', null, null, null, null, null, 22696535, '2', '-1', '5');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (83, 92, '3', '5', '副大队长', '田  亮', null, to_date('11-12-1973', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901365849', null, '北京市宣武区半步桥44号', null, null, null, null, null, 9734921, '2', '-1', '8');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (84, 93, '5', '3', '民警', '陆春华', null, to_date('27-01-1960', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994939', '13801254952', null, '北京市宣武区半步桥44号', null, null, null, null, null, 62286782, '2', '-1', '18');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (85, 94, '5', '5', '民警', '赵海峰', null, to_date('18-12-1977', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994930', '13601023869', null, '北京市宣武区半步桥44号', null, null, null, null, null, 3464323, '2', '10.8.58.160', '7');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (86, 95, '3', '8', '副大队长', '金鹏', null, to_date('24-01-1976', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994942', '13901358855', null, '北京市宣武区半步桥44号', null, null, null, null, null, 1465046, '1', '-1', '5');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (87, 96, '5', '5', '民警', '石丹丹', null, to_date('23-01-1982', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13439015358', null, '北京市宣武区半步桥44号', null, null, null, null, null, 3716379, '2', '-1', '9');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (88, 97, '5', '3', '民警', '崔  群', null, to_date('01-03-1972', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13801104233', null, '北京市宣武区半步桥44号', null, null, null, null, null, 1550995, '2', '-1', '17');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (89, 101, '5', '7', '民警', '张弢', null, to_date('02-09-1985', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13501355462', null, '北京市宣武区半步桥44号', null, null, null, null, null, 324796, '1', '10.8.58.186', '11');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (90, 102, '5', '8', '民警', '姜新春', null, to_date('19-03-1978', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '4900', '13146079768', null, '半步桥街44号', null, null, null, null, null, 391976, '2', '-1', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (91, 104, '5', '5', '民警', '车佳音', null, to_date('09-11-1983', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13810007763', null, '北京市宣武区半步桥44号', null, null, null, null, null, 0, '1', null, '8');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (92, 105, '5', '9', '民警', '刘璐娃', null, to_date('05-11-1978', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13701372826', null, '北京市宣武区半步桥44号', null, null, null, null, null, 8700236, '1', '-1', '3');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (93, 106, '5', '3', '民警', '薛壮', null, to_date('22-05-1974', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901296154', null, '宣武区半步桥44号', null, null, null, null, null, 1897211, '1', '10.8.58.68', '18');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (94, 107, '5', '3', '副科长', '蒋锐', null, to_date('13-02-1982', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911837374', null, '宣武区半步桥44号', null, null, null, null, null, 483431, '1', '-1', '16');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (95, 108, '5', '5', '民警', '曲中乐', null, to_date('09-09-1984', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911916097', null, '宣武区半步桥44号', null, null, null, null, null, 7422341, '1', '-1', '7');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (96, 109, '5', '7', '民警', '张静', null, to_date('11-08-1986', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '15101199781', null, '宣武区半步桥44号', null, null, null, null, null, 251, '1', '10.8.58.187', '10');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (97, 313, '5', '9', '民警', '郝轶斌', null, to_date('19-01-2012', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911915719', null, '半步桥44号', null, null, null, null, null, 0, '1', '-1', '2');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (98, 311, '5', '3', '民警', '崔欣', null, to_date('17-11-2011', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '1391000000', null, '半步桥44号', null, null, null, null, null, 173, '1', '-1', '16');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (99, 111, '5', '7', '民警', '王晓飞', null, to_date('25-10-1984', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13811009600', null, '宣武区半步桥44号', null, null, null, null, null, 756, '1', '-1', '12');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (100, 312, '5', '9', '民警', '马自苇', null, to_date('29-12-2011', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '1391000000', null, '半步桥44号', null, null, null, null, null, 14055, '1', '-1', '1');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (101, 119, '0', '1', '政委', '金志海', null, to_date('27-10-1956', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13801212625', null, '半步桥44号', null, null, null, null, null, 959, '1', '-1', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (102, 113, '5', '3', '民警', '值班室', null, to_date('01-02-2010', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13611255282', null, '半步桥44号', null, null, null, null, null, 1920, '1', '-1', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (103, 112, '3', '5', '民警', '熊良', null, to_date('15-11-1982', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994947', '13699201262', null, '宣武区半步桥44号', null, null, null, null, null, 639746, '1', '-1', '9');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (104, 114, '5', '8', '民警', '王飞', null, to_date('01-06-2010', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13810359888', null, '半步桥44号', null, null, null, null, null, 0, '1', '-1', '4');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (105, 115, '3', '12', '副科长', '董永蕙', null, to_date('28-06-2010', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13701264881', null, '半步桥44号', null, null, null, null, null, 3350, '1', '-1', '15');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (106, 314, '5', '9', '志愿者', '赵令文', null, to_date('08-07-1978', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994963', '13910423057', null, 'A707', null, null, null, null, null, 159150, '1', '-1', '3');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (107, 116, '5', '7', '民警', '李志新', null, to_date('30-08-2010', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '1391000000', null, '半步桥44号', null, null, null, null, null, 0, '1', '-1', '10');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (108, 310, '5', '3', '科长', '沈淑娟', null, to_date('06-07-2011', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13611184963', null, '半步桥44号', null, null, null, null, null, 52199, '1', '-1', '17');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (109, 117, '5', '7', '民警', '李志新', null, to_date('02-10-1970', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994978', '13801125334', null, '半步桥44号', null, null, null, null, null, 1221, '1', '-1', null);

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (110, 118, '5', '8', '民警', '任超', null, to_date('24-04-1981', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994990', '13911836842', null, '半步桥44号', null, null, null, null, null, 4734, '1', '-1', '6');

insert into B_YH (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP, C_KS)
values (111, 309, '1', '1', '办公室主任', '王燕鸣', null, to_date('01-06-2011', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901222470', null, '半步桥44号', null, null, null, null, null, 239351, '1', '-1', null);



insert into SYS_GROUP_ROLE (GROUP_ROLE_ID, GROUP_ID, ROLE_ID)
values (1, 1, 1);


insert into SYS_ROLE (ROLE_ID, ROLE_NAME, ROLE_DESCRIPTION)
values (1, '管理员', '最高权限');


insert into SYS_PERMISSION (PERMISSION_ID, ROLE_ID, AUTHORITY_ID)
SELECT SEQ_SYS_PERMISSION_ID.NEXTVAL, 1, BTN_ID FROM SYS_BUTTON;





--桌面菜单



--insert into B_ZMCD (N_XH, C_MC, C_LJ, C_TB, N_XSXH, C_YXX)
--values (SEQ_ZMCD.Nextval, '公告通知', 'temp/notice.jsp?allow=true', 'images/3DSMAX.png', null, null);

--insert into B_ZMCD (N_XH, C_MC, C_LJ, C_TB, N_XSXH, C_YXX)
--values (SEQ_ZMCD.Nextval, '值班表', 'admin/app/duty/kqzb.jsp?allow=true', 'images/3DSMAX.png', null, null);

insert into B_ZMCD (N_XH, C_MC, C_LJ, C_TB, N_XSXH, C_YXX)
values (SEQ_ZMCD.Nextval, '警务管理', 'temp/duty.jsp?allow=true', 'images/3DSMAX.png', null, null);

insert into B_ZMCD (N_XH, C_MC, C_LJ, C_TB, N_XSXH, C_YXX)
values (SEQ_ZMCD.Nextval, '警务保障', 'temp/jwbz.jsp?allow=true', 'images/Program Files Folder.png', null, null);

insert into B_ZMCD (N_XH, C_MC, C_LJ, C_TB, N_XSXH, C_YXX)
values (SEQ_ZMCD.Nextval, '日志列表', 'temp/rzlb.jsp?allow=true', 'images/Program Files Folder.png', null, null);

--insert into B_ZMCD (N_XH, C_MC, C_LJ, C_TB, N_XSXH, C_YXX)
--values (SEQ_ZMCD.Nextval, '我的资料', 'admin/app/userinfo/userinfoDetail.jsp?allow=true', 'images/Program Files Folder.png', null, null);

--insert into B_ZMCD (N_XH, C_MC, C_LJ, C_TB, N_XSXH, C_YXX)
--values (SEQ_ZMCD.Nextval, '常用网址', 'temp/website.jsp?allow=true', '	 images/Program Files Folder.png', null, null);

--insert into B_ZMCD (N_XH, C_MC, C_LJ, C_TB, N_XSXH, C_YXX)
--values (SEQ_ZMCD.Nextval, '上班打卡', 'temp/sxbdk.jsp?id=1', 'images/Alien Folder.png', null, null);

--insert into B_ZMCD (N_XH, C_MC, C_LJ, C_TB, N_XSXH, C_YXX)
--values (SEQ_ZMCD.Nextval, '下班打卡', 'temp/sxbdk.jsp?id=0', 'images/Alien Folder.png', null, null);

--我的桌面初始化
insert into B_WDZM(N_XH,C_ZDYMC,N_CDXH,USER_ID,N_XSXH,C_YXX)
select SEQ_WDZM.Nextval,C_MC,n_xh, user_id,0,'1' from sys_user,b_zmcd;


commit;
