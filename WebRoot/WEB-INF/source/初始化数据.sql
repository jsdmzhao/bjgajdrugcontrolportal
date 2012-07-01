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
MENU_ICON, ISVISIBLE)values (4, '4', '0', '考勤管理', '', '', '1' );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (401, '401', '4', '上下班', 'admin/app/duty/kqsxb.jsp', 'liger/lib/icons/32X32/sitemap.gif', '1' );
insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (402, '402', '4', '外出记录', 'admin/app/duty/kqybjl.jsp?lx=WC', 'liger/lib/icons/32X32/sitemap.gif', '1' );
insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (403, '403', '4', '请假记录', 'admin/app/duty/kqybjl.jsp?lx=QJ', 'liger/lib/icons/32X32/sitemap.gif', '1' );
insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (404, '404', '4', '出差记录', 'admin/app/duty/kqccjl.jsp', 'liger/lib/icons/32X32/sitemap.gif', '1' );
insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (405, '405', '4', '补休记录', 'admin/app/duty/kqybjl.jsp?lx=BX', 'liger/lib/icons/32X32/sitemap.gif', '1' );
insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (406, '406', '4', '缺勤申辩', 'admin/app/duty/kqqqsb.jsp', 'liger/lib/icons/32X32/sitemap.gif', '1' );
insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (407, '407', '4', '值班', 'admin/app/duty/kqzb.jsp', 'liger/lib/icons/32X32/sitemap.gif', '1' );



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


--按钮

insert into SYS_BUTTON (BTN_ID, BTN_NAME, BTN_NO, BTN_CLASS, BTN_ICON, BTN_SCRIPT, MENU_ID, INITSTATUS)
SELECT SEQ_SYS_BTN_ID.NEXTVAL, '增加', 'add', null, 'liger/lib/icons/silkicons/add.png', null, MENU_ID, null FROM SYS_MENU WHERE MENU_PARENT_NO<>'0';

insert into SYS_BUTTON (BTN_ID, BTN_NAME, BTN_NO, BTN_CLASS, BTN_ICON, BTN_SCRIPT, MENU_ID, INITSTATUS)
SELECT SEQ_SYS_BTN_ID.NEXTVAL, '修改', 'modify', null, 'liger/lib/icons/silkicons/application_edit.png', null, MENU_ID, null FROM SYS_MENU WHERE MENU_PARENT_NO<>'0';

insert into SYS_BUTTON (BTN_ID, BTN_NAME, BTN_NO, BTN_CLASS, BTN_ICON, BTN_SCRIPT, MENU_ID, INITSTATUS)
SELECT SEQ_SYS_BTN_ID.NEXTVAL, '删除', 'delete', null, 'liger/lib/icons/silkicons/delete.png', null, MENU_ID, null FROM SYS_MENU WHERE MENU_PARENT_NO<>'0';


--用户

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (10000, 'zl', '1', '0');


insert into SYS_GROUP_ROLE (GROUP_ROLE_ID, GROUP_ID, ROLE_ID)
values (10000, 10000, 10000);


insert into SYS_ROLE (ROLE_ID, ROLE_NAME, ROLE_DESCRIPTION)
values (10000, '管理员', '最高权限');


insert into SYS_PERMISSION (PERMISSION_ID, ROLE_ID, AUTHORITY_ID)
SELECT SEQ_SYS_PERMISSION_ID.NEXTVAL, 10000, BTN_ID FROM SYS_BUTTON;



--部门

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'DEP', '1', '总队领导', 1, null, null, sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'DEP', '3', '办公室', 3, null, null, sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'DEP', '4', '协调指导大队', 4, null, null, sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'DEP', '5', '缉控大队', 10, null, null, sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'DEP', '7', '侦查大队', 8, null, null, sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'DEP', '8', '查禁大队', 9, null, null, sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'DEP', '9', '情报中心', 7,null, null, sysdate);

insert into D_DM (N_XH, C_BXH, C_DM, C_MC, N_XSXH, C_TJ, C_SJDM, D_DJ)
values (seq_dm.nextval, 'DEP', '10', '两品办', 11, null, null, sysdate);

									
--用户
insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (2, 1, '-1', '0', '管理员', '管理员', null, to_date('10-02-2009', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994968', '13910666539', null, '半步桥街44号', null, null, null, null, null, 2482341, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (3, 3, '1', '1', '总队长', '赵文忠', null, to_date('06-02-1961', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994901', '13911682585', null, '北京市宣武区半步桥44号4层', null, null, null, null, null, 48412, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (4, 4, '1', '1', '副总队长', '柳毅', null, to_date('23-01-1961', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13701095101', null, '北京市宣武区半步桥44号', null, null, null, null, null, 16796622, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (5, 5, '1', '1', '副总队长', '易  阳', null, to_date('03-11-1966', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13801316889', null, '北京市宣武区半步桥44号', null, null, null, null, null, 38876, '1', '10.8.58.53');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (6, 7, '1', '1', '书记', '唐  屴', null, to_date('06-08-1956', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901204283', null, '北京市宣武区半步桥44号', null, null, null, null, null, 1571187, '1', '10.8.58.51');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (7, 8, '3', '10', '调研员', '车克俭', null, to_date('24-06-1961', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13701217110', null, '北京市宣武区半步桥44号', null, null, null, null, null, 2656, '1', null);

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (8, 9, '3', '9', '政委', '罗晓宇', null, to_date('18-05-1967', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994913', '13801381840', null, '北京市宣武区半步桥44号', null, null, null, null, null, 24264290, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (9, 10, '3', '4', '副大队长', '董松', null, to_date('03-12-1962', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994922', '13911931677', null, '北京市宣武区半步桥44号', null, null, null, null, null, 213630, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (10, 11, '3', '3', '副主任', '张文鹏', null, to_date('12-11-1977', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994938', '13701354870', null, '北京市宣武区半步桥44号', null, null, null, null, null, 7815263, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (11, 12, '3', '3', '民警', '杨琳', null, to_date('26-03-1957', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994928', '13901115169', null, '北京市宣武区半步桥44号', null, null, null, null, null, 2016225, '2', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (12, 13, '3', '3', '民警', '张建群', null, to_date('12-08-1962', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13611255282', null, '北京市宣武区半步桥44号', null, null, null, null, null, 58721229, '1', '10.8.58.99');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (13, 16, '3', '8', '探长', '顾猛', null, to_date('29-09-1983', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911171665', null, '北京市宣武区半步桥44号', null, null, null, null, null, 1032361, '2', '10.8.58.62');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (14, 17, '3', '5', '民警', '席志勇', null, to_date('06-08-1955', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994926', '15811036116', null, '北京市宣武区半步桥44号', null, null, null, null, null, 6002912, '2', '10.8.58.69');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (15, 18, '3', '3', '警务保障科科长', '暴立国', null, to_date('04-03-1964', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83996637', '13901247323', null, '北京市宣武区半步桥44号', null, null, null, null, null, 26336052, '1', '10.8.45.169');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (16, 19, '3', '7', '民警', '李争', null, to_date('21-11-1974', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994961', '13911818505', null, '北京市宣武区半步桥44号', null, null, null, null, null, 267484, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (17, 20, '3', '3', '民警', '窦绍林', null, to_date('30-11-1960', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13501007453', null, '北京市宣武区半步桥44号', null, null, null, null, null, 2147286, '2', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (18, 21, '3', '3', '工会副主席', '王愚福', null, to_date('23-09-1972', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994917', '13910109032', null, '北京市宣武区半步桥44号', null, null, null, null, null, 1610708, '2', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (19, 22, '3', '3', '民警', '任立娟', null, to_date('13-04-1970', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994918', '13901254895', null, '北京市宣武区半步桥44号', null, null, null, null, null, 22628126, '2', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (20, 23, '3', '3', '民警', '杨  军', null, to_date('11-09-1967', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13621216433', null, '北京市宣武区半步桥44号', null, null, null, null, null, 5633353, '2', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (21, 24, '3', '10', '民警', '陈志文', null, to_date('26-12-1958', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13699282961', null, '北京市宣武区半步桥44号', null, null, null, null, null, 9570718, '2', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (22, 25, '3', '3', '法制处处长', '赵芳', null, to_date('13-07-1962', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901372307', null, '北京市宣武区半步桥44号', null, null, null, null, null, 4752142, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (23, 26, '3', '8', '探长', '王  飙', null, to_date('22-12-1982', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13381202135', null, '北京市宣武区半步桥44号', null, null, null, null, null, 1168272, '2', '10.8.58.194');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (24, 27, '3', '3', '民警', '张  宪', null, to_date('13-07-1954', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13601319994', null, '北京市宣武区半步桥44号', null, null, null, null, null, 13784691, '2', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (25, 28, '2', '9', '大队长', '刘作军', null, to_date('14-10-1957', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83552026', '13901213512', null, '北京市西城区半步桥街44号', null, null, null, null, null, 6903781, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (26, 29, '3', '9', '副大队长', '王琪', null, to_date('04-01-1977', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994955', '13910220617', null, '北京市宣武区半步桥44号', null, null, null, null, null, 6305439, '1', '10.8.58.118');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (27, 30, '2', '10', '主任', '蒋胜杰', null, to_date('19-09-1971', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901210153', null, '北京市宣武区半步桥44号', null, null, null, null, null, 6443, '1', '10.8.58.192');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (28, 31, '2', '4', '政委', '荆军', null, to_date('10-05-1968', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83552003', '13501234033', null, '北京市朝阳区豆各庄黄厂村', null, null, null, null, null, 22957463, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (29, 32, '3', '9', '民警', '兰晋飞', null, to_date('01-04-1981', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911931957', null, '北京市宣武区半步桥44号', null, null, null, null, null, 674940, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (30, 33, '3', '9', '民警', '李  汭', null, to_date('23-12-1980', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994933', '13801169862', null, '北京市宣武区半步桥44号', null, null, null, null, null, 14242185, '2', '10.8.58.201');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (31, 34, '3', '9', '副主任', '严建', null, to_date('18-12-1979', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994951', '13910666539', null, '北京市宣武区半步桥44号', null, null, null, null, null, 7006059, '2', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (32, 35, '3', '9', '办公室副主任', '宋威', null, to_date('20-07-1977', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994957', '13911090053', null, '北京市宣武区半步桥44号', null, null, null, null, null, 3817590, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (33, 36, '3', '9', '民警', '王文斌', null, to_date('08-10-1959', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901395253', null, '北京市宣武区半步桥44号', null, null, null, null, null, 2058073, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (34, 37, '3', '7', '民警', '王鹏', null, to_date('07-12-1980', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994965', '13911932634', null, '北京市宣武区半步桥44号', null, null, null, null, null, 402582, '1', '10.8.58.163');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (35, 38, '3', '9', '民警', '陈  曲', null, to_date('28-03-1975', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13581908951', null, '北京市宣武区半步桥44号', null, null, null, null, null, 0, '1', null);

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (36, 39, '3', '9', '民警', '李晓露', null, to_date('18-10-1978', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13501106528', null, '北京市宣武区半步桥44号', null, null, null, null, null, 814983, '1', '10.8.58.163');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (37, 40, '3', '3', '民警', '张鑫', null, to_date('04-03-1982', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994920', '13699228826', null, '北京市宣武区半步桥44号', null, null, null, null, null, 7133811, '2', '10.8.58.61');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (38, 41, '2', '4', '大队长', '钟  平', null, to_date('18-10-1961', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911931681', null, '北京市宣武区半步桥44号', null, null, null, null, null, 1649, '3', '10.9.54.5');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (39, 42, '3', '3', '副主任', '张世强', null, to_date('11-03-1970', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13701279817', null, '北京市宣武区半步桥44号', null, null, null, null, null, 2140690, '3', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (40, 43, '3', '4', '民警', '张  健', null, to_date('28-12-1961', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13801151367', null, '北京市宣武区半步桥44号', null, null, null, null, null, 8327222, '3', '10.9.54.17');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (41, 44, '3', '3', '民警', '肖燕威', null, to_date('03-12-1955', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83552017', '13910139552', null, '北京市宣武区半步桥44号', null, null, null, null, null, 6833990, '3', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (42, 45, '3', '10', '民警', '张  芸', null, to_date('08-04-1971', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901295919', null, '北京市宣武区半步桥44号', null, null, null, null, null, 4074355, '3', '10.9.54.20');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (43, 316, '3', '3', '民警', '杨砚', null, to_date('02-06-1979', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911285512', null, '半步桥44号', null, null, null, null, null, 0, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (44, 47, '3', '4', '民警', '陈  述', null, to_date('05-02-1964', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911931680', null, '北京市宣武区半步桥44号', null, null, null, null, null, 192097, '3', null);

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (45, 48, '3', '4', '民警', '宫保成', null, to_date('04-04-1957', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13910172155', null, '北京市宣武区半步桥44号', null, null, null, null, null, 2660488, '3', '10.9.54.18');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (46, 315, '3', '9', '志愿者', '杨紫清', null, to_date('01-03-1997', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994963', '15911034081', null, 'A707', null, null, null, null, null, 3148, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (47, 50, '3', '4', '民警', '刘英茹', null, to_date('13-03-1975', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13910336556', null, '北京市宣武区半步桥44号', null, null, null, null, null, 3616237, '3', '10.9.54.15');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (48, 51, '3', '10', '民警', '滕海辉', null, to_date('17-05-1984', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13501132009', null, '北京市宣武区半步桥44号', null, null, null, null, null, 10063406, '1', '10.8.58.59');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (49, 52, '3', '10', '民警', '宋丽君', null, to_date('29-06-1972', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911931963', null, '北京市宣武区半步桥44号', null, null, null, null, null, 5075, '1', '10.8.58.161');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (50, 53, '3', '4', '副大队长', '李轶凡', null, to_date('11-03-1977', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83551103', '13801217066', null, '北京市宣武区半步桥44号，100054、北京邮政2341信箱，100121', null, null, null, null, null, 11476185, '3', '10.9.54.11');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (51, 55, '2', '7', '政委', '姚庆生', null, to_date('01-10-1962', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901039329', null, '北京市宣武区半步桥44号', null, null, null, null, null, 3495679, '1', '10.8.58.113');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (52, 56, '3', '10', '副大队长', '杨国章', null, to_date('02-05-1959', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13801155932', null, '北京市宣武区半步桥44号', null, null, null, null, null, 1579749, '1', '10.8.58.180');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (53, 57, '3', '7', '民警', '冀肖雷', null, to_date('28-09-1967', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901286762', null, '北京市宣武区半步桥44号', null, null, null, null, null, 745689, '1', '10.8.58.188');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (54, 58, '3', '10', '助理调研员', '郭荫茂', null, to_date('22-01-1958', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994980', '18910088769', null, '北京市宣武区半步桥44号', null, null, null, null, null, 12396280, '2', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (55, 59, '3', '7', '民警', '李  京', null, to_date('29-01-1962', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13701172462', null, '北京市宣武区半步桥44号', null, null, null, null, null, 835, '1', null);

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (56, 60, '3', '7', '大队长', '毕  波', null, to_date('02-01-1970', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13801073120', null, '北京市宣武区半步桥44号', null, null, null, null, null, 158331, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (57, 61, '3', '7', '民警', '张秀琦', null, to_date('19-01-1970', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994950', '13911833009', null, '北京市宣武区半步桥44号', null, null, null, null, null, 13895937, '2', '10.8.58.186');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (58, 62, '3', '7', '民警', '王素寅', null, to_date('20-07-1974', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994975', '13911931692', null, '北京市宣武区半步桥44号', null, null, null, null, null, 58981, '2', '10.8.58.189');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (59, 63, '3', '7', '民警', '孙元元', null, to_date('01-02-1979', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994979', '13801191066', null, '北京市宣武区半步桥44号A0715', null, null, null, null, null, 91363, '2', '10.8.58.187');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (60, 64, '3', '3', '副主任', '石  磊', null, to_date('29-10-1980', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13910101411', null, '北京市宣武区半步桥44号', null, null, null, null, null, 5706938, '2', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (61, 65, '3', '7', '民警', '刘杰', null, to_date('13-03-1974', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994932', '13701025508', null, '北京市宣武区半步桥44号', null, null, null, null, null, 6318974, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (62, 67, '3', '7', '民警', '王晋佳', null, to_date('03-10-1981', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13910992759', null, '北京市宣武区半步桥44号', null, null, null, null, null, 53539, '1', '10.8.58.70');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (63, 68, '3', '7', '民警', '赵跃春', null, to_date('22-01-1960', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994921', '13801264144', null, '北京市宣武区半步桥44号', null, null, null, null, null, 491416, '2', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (64, 69, '3', '7', '民警', '徐燕渤', null, to_date('12-02-1973', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13601011175', null, '北京市宣武区半步桥44号', null, null, null, null, null, 465632, '1', '10.8.58.185');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (65, 71, '1', '1', '副总队长', '张继宏', null, to_date('01-02-1968', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901361509', null, '北京市宣武区半步桥44号', null, null, null, null, null, 1877978, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (66, 73, '2', '8', '大队长', '田永峰', null, to_date('23-01-1975', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911931687', null, '北京市宣武区半步桥44号', null, null, null, null, null, 143270, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (67, 74, '3', '5', '民警', '郑红', null, to_date('08-08-1962', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13801002020', null, '北京市宣武区半步桥44号', null, null, null, null, null, 2815208, '1', '10.8.58.190');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (68, 75, '3', '8', '民警', '殷富强', null, to_date('21-03-1962', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901154386', null, '北京市宣武区半步桥44号', null, null, null, null, null, 229827, '1', '10.8.58.190');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (69, 76, '3', '8', '民警', '蒋海涛', null, to_date('07-02-1974', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911836916', null, '北京市宣武区半步桥44号', null, null, null, null, null, 6952, '1', '10.8.58.193');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (70, 77, '3', '8', '民警', '郑斌', null, to_date('27-09-1963', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994989', '13901166209', null, '北京市宣武区半步桥44号', null, null, null, null, null, 57594213, '1', '10.8.58.121');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (71, 78, '3', '8', '副大队长', '梁  冲', null, to_date('17-12-1978', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911605588', null, '北京市宣武区半步桥44号', null, null, null, null, null, 11464, '1', '10.8.58.190');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (72, 79, '3', '8', '民警', '王向利', null, to_date('11-06-1963', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13810312157', null, '北京市宣武区半步桥44号', null, null, null, null, null, 337184, '2', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (73, 80, '3', '3', '文秘科科长', '刘印松', null, to_date('27-04-1981', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994947', '13911785033', null, '北京市宣武区半步桥44号', null, null, null, null, null, 2612777, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (74, 81, '3', '3', '民警', '石  伟', null, to_date('16-07-1977', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13910166936', null, '北京市宣武区半步桥44号', null, null, null, null, null, 4771220, '2', '10.8.58.84');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (75, 82, '3', '9', '民警', '王阳', null, to_date('05-03-1976', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13020012223', null, '北京市宣武区半步桥44号', null, null, null, null, null, 203364, '1', '10.8.58.191');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (76, 84, '3', '8', '民警', '惠  敏', null, to_date('11-02-1960', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13651204284', null, '北京市宣武区半步桥44号', null, null, null, null, null, 0, '1', null);

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (77, 85, '3', '8', '民警', '张太林', null, to_date('03-04-1961', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911181166', null, '北京市宣武区半步桥44号', null, null, null, null, null, 116590, '2', '10.8.58.190');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (78, 86, '3', '5', '副大队长', '李晓东', null, to_date('22-11-1971', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911831173', null, '北京市宣武区半步桥44号', null, null, null, null, null, 556066, '1', '10.8.58.63');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (79, 88, '2', '5', '大队长', '高立国', null, to_date('24-04-1972', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83552011', '13911931688', null, '北京市宣武区半步桥44号A0304', null, null, null, null, null, 2422006, '1', '10.8.58.155');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (80, 89, '3', '10', '民警', '王官龙', null, to_date('07-09-1957', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901317330', null, '北京市宣武区半步桥44号', null, null, null, null, null, 2, '2', null);

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (81, 90, '3', '5', '民警', '刘骥', null, to_date('31-05-1981', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994946', '13911862665', null, '北京市宣武区半步桥44号', null, null, null, null, null, 2879374, '2', '10.8.58.160');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (82, 91, '3', '5', '民警', '朴成国', null, to_date('24-09-1971', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901356617', null, '北京市宣武区半步桥44号', null, null, null, null, null, 22696535, '2', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (83, 92, '3', '5', '副大队长', '田  亮', null, to_date('11-12-1973', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901365849', null, '北京市宣武区半步桥44号', null, null, null, null, null, 9734921, '2', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (84, 93, '3', '3', '民警', '陆春华', null, to_date('27-01-1960', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994939', '13801254952', null, '北京市宣武区半步桥44号', null, null, null, null, null, 62286782, '2', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (85, 94, '3', '5', '民警', '赵海峰', null, to_date('18-12-1977', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994930', '13601023869', null, '北京市宣武区半步桥44号', null, null, null, null, null, 3464323, '2', '10.8.58.160');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (86, 95, '3', '8', '副大队长', '金鹏', null, to_date('24-01-1976', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994942', '13901358855', null, '北京市宣武区半步桥44号', null, null, null, null, null, 1465046, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (87, 96, '3', '5', '民警', '石丹丹', null, to_date('23-01-1982', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13439015358', null, '北京市宣武区半步桥44号', null, null, null, null, null, 3716379, '2', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (88, 97, '3', '3', '民警', '崔  群', null, to_date('01-03-1972', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13801104233', null, '北京市宣武区半步桥44号', null, null, null, null, null, 1550995, '2', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (89, 101, '3', '7', '民警', '张弢', null, to_date('02-09-1985', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13501355462', null, '北京市宣武区半步桥44号', null, null, null, null, null, 324796, '1', '10.8.58.186');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (90, 102, '3', '8', '民警', '姜新春', null, to_date('19-03-1978', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '4900', '13146079768', null, '半步桥街44号', null, null, null, null, null, 391976, '2', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (91, 104, '3', '5', '民警', '车佳音', null, to_date('09-11-1983', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13810007763', null, '北京市宣武区半步桥44号', null, null, null, null, null, 0, '1', null);

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (92, 105, '3', '9', '民警', '刘璐娃', null, to_date('05-11-1978', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13701372826', null, '北京市宣武区半步桥44号', null, null, null, null, null, 8700236, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (93, 106, '3', '3', '民警', '薛壮', null, to_date('22-05-1974', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901296154', null, '宣武区半步桥44号', null, null, null, null, null, 1897211, '1', '10.8.58.68');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (94, 107, '3', '3', '副科长', '蒋锐', null, to_date('13-02-1982', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911837374', null, '宣武区半步桥44号', null, null, null, null, null, 483431, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (95, 108, '3', '5', '民警', '曲中乐', null, to_date('09-09-1984', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911916097', null, '宣武区半步桥44号', null, null, null, null, null, 7422341, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (96, 109, '3', '7', '民警', '张静', null, to_date('11-08-1986', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '15101199781', null, '宣武区半步桥44号', null, null, null, null, null, 251, '1', '10.8.58.187');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (97, 313, '3', '9', '民警', '郝轶彬', null, to_date('19-01-2012', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13911915719', null, '半步桥44号', null, null, null, null, null, 0, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (98, 311, '3', '4', '民警', '崔馨', null, to_date('17-11-2011', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '1391000000', null, '半步桥44号', null, null, null, null, null, 173, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (99, 111, '3', '7', '民警', '王晓飞', null, to_date('25-10-1984', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13811009600', null, '宣武区半步桥44号', null, null, null, null, null, 756, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (100, 312, '3', '9', '民警', '马自苇', null, to_date('29-12-2011', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '1391000000', null, '半步桥44号', null, null, null, null, null, 14055, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (101, 119, '1', '1', '政委', '金志海', null, to_date('27-10-1956', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13801212625', null, '半步桥44号', null, null, null, null, null, 959, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (102, 113, '3', '3', '民警', '值班室', null, to_date('01-02-2010', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13611255282', null, '半步桥44号', null, null, null, null, null, 1920, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (103, 112, '3', '5', '民警', '熊良', null, to_date('15-11-1982', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994947', '13699201262', null, '宣武区半步桥44号', null, null, null, null, null, 639746, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (104, 114, '3', '8', '民警', '王飞', null, to_date('01-06-2010', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13810359888', null, '半步桥44号', null, null, null, null, null, 0, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (105, 115, '3', '3', '副科长', '董永蕙', null, to_date('28-06-2010', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13701264881', null, '半步桥44号', null, null, null, null, null, 3350, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (106, 314, '3', '9', '志愿者', '赵令文', null, to_date('08-07-1978', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994963', '13910423057', null, 'A707', null, null, null, null, null, 159150, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (107, 116, '3', '7', '民警', '李志新', null, to_date('30-08-2010', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '1391000000', null, '半步桥44号', null, null, null, null, null, 0, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (108, 310, '3', '3', '科长', '沈淑娟', null, to_date('06-07-2011', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13611184963', null, '半步桥44号', null, null, null, null, null, 52199, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (109, 117, '3', '7', '民警', '李志新', null, to_date('02-10-1970', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994978', '13801125334', null, '半步桥44号', null, null, null, null, null, 1221, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (110, 118, '3', '8', '民警', '任超', null, to_date('24-04-1981', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994990', '13911836842', null, '半步桥44号', null, null, null, null, null, 4734, '1', '-1');

insert into b_yh (N_XH, USER_ID, C_JB, C_YHZ, C_ZC, C_XM, N_XB, D_SR, C_GJ, C_CSD, C_HYZK, C_XL, C_BYYX, C_ZY, C_KH, C_HKSZD, C_DHHM, C_SJHM, C_YX, C_DZ, D_GZSJ, D_RZSJ, C_JCJL, C_BZ, N_DLCS, N_ZXSC, C_LX, C_YXIP)
values (111, 309, '1', '1', '办公室主任', '王燕鸣', null, to_date('01-06-2011', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, '83994900', '13901222470', null, '半步桥44号', null, null, null, null, null, 239351, '1', '-1');


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

