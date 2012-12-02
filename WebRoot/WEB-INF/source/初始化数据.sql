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

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (406, '406', '4', '值班组管理', 'admin/app/duty/kqzbz.jsp', 'liger/lib/icons/32X32/sitemap.gif', '1' );

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


--用户


insert into SYS_GROUP_ROLE (GROUP_ROLE_ID, GROUP_ID, ROLE_ID)
values (1, 1, 1);


insert into SYS_ROLE (ROLE_ID, ROLE_NAME, ROLE_DESCRIPTION)
values (1, '管理员', '最高权限');


insert into SYS_PERMISSION (PERMISSION_ID, ROLE_ID, AUTHORITY_ID)
SELECT SEQ_SYS_PERMISSION_ID.NEXTVAL, 1, BTN_ID FROM SYS_BUTTON;



--部门

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'DEP', '1', '总队领导', 1, null, null, sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'DEP', '3', '办公室', 8, null, null, sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'DEP', '4', '协调指导处', 9, null, null, sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'DEP', '5', '缉控大队', 4, null, null, sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'DEP', '7', '侦查大队', 5, null, null, sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'DEP', '8', '查禁大队', 3, null, null, sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'DEP', '9', '情报中心', 2,null, null, sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'DEP', '10', '两品办', 10, null, null, sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'DEP', '11', '易管大队', 6, null, null, sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'DEP', '12', '法制处', 7, null, null, sysdate);

--科室

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'OFF', '1', '情报一队', 1, null, '9', sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'OFF', '2', '情报二队', 2, null, '9', sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'OFF', '3', '情报三队', 3, null, '9', sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'OFF', '4', '查禁一队', 4, null, '8', sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'OFF', '5', '查禁二队', 5, null, '8', sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'OFF', '6', '内勤探组', 6, null, '8', sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'OFF', '7', '缉控一队', 7, null, '5', sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'OFF', '8', '缉控二队', 8, null, '5', sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'OFF', '9', '内勤探组', 9, null, '5', sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'OFF', '10', '侦察一队', 10, null, '7', sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'OFF', '11', '侦察二队', 11, null, '7', sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'OFF', '12', '内勤探组', 12, null, '7', sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'OFF', '13', '易管队', 13, null, '11', sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'OFF', '14', '内勤探组', 14, null, '11', sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'OFF', '15', '法制', 15, null, '12', sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'OFF', '16', '秘书科', 16, null, '3', sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'OFF', '17', '政工科', 17, null, '3', sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'OFF', '18', '警务保障及警务指导', 18, null, '3', sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'OFF', '19', '吸毒人员动态管控组', 19, null, '4', sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'OFF', '20', '预防宣传教育', 20, null, '4', sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'OFF', '21', '内勤组', 21, null, '4', sysdate);

									

--账户


insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (112, 'xiongliang', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (1, 'admin', 'kakalove83994951', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (3, 'zhaowenzhong', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (4, 'liuyi', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (5, 'yiyang', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (7, 'tangli', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (8, 'chekejian', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (9, 'luoxiaoyu', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (10, 'dongsong', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (11, 'zhangwenpeng', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (12, 'yanglin', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (13, 'zhangjianqun', '009726', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (16, 'gumeng', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (17, 'xizhiyong', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (18, 'baoliguo', '009726', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (19, 'lizheng', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (20, 'doushaolin', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (21, 'wangyufu', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (22, 'renlijuan', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (23, 'yangjun', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (24, 'chenzhiwen', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (25, 'zhaofang', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (26, 'wangbiao', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (27, 'zhangxian', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (28, 'liuzuojun', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (29, 'wangqi', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (30, 'jiangshengjie', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (31, 'jingjun', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (32, 'lanjinfei', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (33, 'lirui', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (34, 'yanjian', 'kakalove79101218', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (35, 'songwei', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (36, 'wangwenbin', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (37, 'wangpeng', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (38, 'chenqu', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (39, 'lixiaolu', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (40, 'zhangxin', '820304', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (41, 'zhongping', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (42, 'zhangshiqiang', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (43, 'zhangjian', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (44, 'xiaoyanwei', '551203', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (45, 'zhangyun', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (316, 'yangyan', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (47, 'chenshu', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (48, 'gongbaocheng', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (315, 'yangziqing', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (50, 'liuyingru', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (51, 'tenghaihui', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (52, 'songlijun', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (53, 'liyifan', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (55, 'yaoqingsheng', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (56, 'yangguozhang', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (57, 'jixiaolei', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (58, 'guoyinmao', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (59, 'lijing', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (60, 'bibo', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (61, 'zhangxiuqi', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (62, 'wangsuyin', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (63, 'sunyuanyuan', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (64, 'shilei', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (65, 'liujie', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (67, 'wangjinjia', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (68, 'zhaoyuechun', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (69, 'xuyanbo', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (71, 'zhangjihong', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (73, 'tianyongfeng', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (74, 'zhenghong', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (75, 'yinfuqiang', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (76, 'jianghaitao', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (77, 'zhengbin', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (78, 'liangchong', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (79, 'wangxiangli', '293385', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (80, 'liuyinsong', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (81, 'shiwei', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (82, 'wangyang', '123456', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (84, 'huimin', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (85, 'zhangtailin', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (86, 'lixiaodong', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (88, 'gaoliguo', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (89, 'wangguanlong', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (90, 'liuji', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (91, 'piaochengguo', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (92, 'tianliang', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (93, 'luchunhua', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (94, 'zhaohaifeng', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (95, 'jinpeng', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (96, 'shidandan', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (97, 'cuiqun', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (101, 'zhangtao', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (102, 'jiangxinchun', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (104, 'chejiayin', '000000', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (105, 'liuluwa', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (106, 'xuezhuang', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (107, 'jiangrui', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (108, 'quzhongle', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (109, 'zhangjing', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (313, 'haoyibin', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (311, 'cuixin', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (111, 'wangxiaofei', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (312, 'maziwei', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (119, 'jinzhihai', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (113, 'zhibanshi', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (114, 'wangfei', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (115, 'dongyonghui', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (314, 'zhaolingwen', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (116, 'lizhixin', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (310, 'shenshujuan', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (117, 'lizhixin', '111111', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (118, 'renchao', '002912', null);

insert into sys_user (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (309, 'wangyanming', '111111', null);


--桌面菜单



insert into B_ZMCD (N_XH, C_MC, C_LJ, C_TB, N_XSXH, C_YXX)
values (SEQ_ZMCD.Nextval, '公告通知', 'temp/notice.jsp?allow=true', 'images/3DSMAX.png', null, null);

insert into B_ZMCD (N_XH, C_MC, C_LJ, C_TB, N_XSXH, C_YXX)
values (SEQ_ZMCD.Nextval, '值班表', 'admin/app/duty/kqzb.jsp?allow=true', 'images/3DSMAX.png', null, null);

insert into B_ZMCD (N_XH, C_MC, C_LJ, C_TB, N_XSXH, C_YXX)
values (SEQ_ZMCD.Nextval, '警务管理', 'temp/duty.jsp?allow=true', 'images/3DSMAX.png', null, null);

insert into B_ZMCD (N_XH, C_MC, C_LJ, C_TB, N_XSXH, C_YXX)
values (SEQ_ZMCD.Nextval, '我的资料', 'admin/app/userinfo/userinfoDetail.jsp?allow=true', 'images/Program Files Folder.png', null, null);

insert into B_ZMCD (N_XH, C_MC, C_LJ, C_TB, N_XSXH, C_YXX)
values (SEQ_ZMCD.Nextval, '常用网址', 'temp/website.jsp?allow=true', '	 images/Program Files Folder.png', null, null);

--insert into B_ZMCD (N_XH, C_MC, C_LJ, C_TB, N_XSXH, C_YXX)
--values (SEQ_ZMCD.Nextval, '上班打卡', 'temp/sxbdk.jsp?id=1', 'images/Alien Folder.png', null, null);

--insert into B_ZMCD (N_XH, C_MC, C_LJ, C_TB, N_XSXH, C_YXX)
--values (SEQ_ZMCD.Nextval, '下班打卡', 'temp/sxbdk.jsp?id=0', 'images/Alien Folder.png', null, null);

--我的桌面初始化
insert into B_WDZM(N_XH,C_ZDYMC,N_CDXH,USER_ID,N_XSXH,C_YXX)
select SEQ_WDZM.Nextval,C_MC,n_xh, user_id,0,'1' from sys_user,b_zmcd;


commit;
