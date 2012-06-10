--菜单

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (1, '1', '0', '新闻管理', '', '', '1', );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (2, '2', '0', '车辆管理', '', '', '1', );

insert into SYS_MENU (MENU_ID, MENU_NO, MENU_PARENT_NO, MENU_NAME, MENU_URL, 
MENU_ICON, ISVISIBLE)values (3, '3', '0', '系统管理', '', '', '1', );


--用户

insert into SYS_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_LOCK)
values (1, 'admin', 'admin', '1');

--手机归属地