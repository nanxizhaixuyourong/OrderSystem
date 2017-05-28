var t;
t=outlookbar.addtitle('系统属性')
outlookbar.additem('系统属性',t,'/dingcan/admin/index/sysPro.jsp')


t=outlookbar.addtitle('基本操作')
outlookbar.additem('密码修改',t,'/dingcan/admin/userinfo/userPw.jsp')
outlookbar.additem('管理员维护',t,'/dingcan/adminManage.action')


t=outlookbar.addtitle('会员管理')
outlookbar.additem('会员管理',t,'/dingcan/userMana.action')

t=outlookbar.addtitle('菜品类别管理')
outlookbar.additem('类别管理',t,'/dingcan/catelogMana.action')
outlookbar.additem('类别添加',t,'/dingcan/admin/catelog/catelogAdd.jsp')


t=outlookbar.addtitle('菜品管理')
outlookbar.additem('菜品管理',t,'/dingcan/goodsManaNoTejia.action')
outlookbar.additem('特价区',t,'/dingcan/goodsManaYesTejia.action')


t=outlookbar.addtitle('订单管理')
outlookbar.additem('订单管理',t,'/dingcan/orderMana.action')

t=outlookbar.addtitle('留言管理')
outlookbar.additem('留言管理',t,'/dingcan/liuyanMana.action')


t=outlookbar.addtitle('公告管理')
outlookbar.additem('公告管理',t,'/dingcan/gonggaoMana.action')


t=outlookbar.addtitle('安全退出系统') 
outlookbar.additem('安全退出',t,'/dingcan/login.jsp')