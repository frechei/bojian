某击剑俱乐部客户管理雏形： http://pacific-tor-41084.herokuapp.com/ 

技术：rails4.2 / bootstrap 

会员管理

 1. 对象属性
	会员可分成三大类：在籍会员、意向会员与流失会员，针对每名会员需要保存其基本信息与部分特殊信息。
基本属性：
	ID（数据库主键）
	姓名
	性别
	出生年月
	住址
	家长姓名
	联系电话
	开卡日期（年月日）
	开卡类别（年卡、半年卡、季卡、月卡、次卡、体验卡、无（意向、流失））
	（会籍到期时间）
	会员级别（已在籍的时间/月）-会费
	暂停状态（暂停起始时间）
	剑种（重剑、花键、还有一种忘了名字）
	国家级竞赛成绩记录
	省市级竞赛成绩记录
	俱乐部测试成绩记录（管用手、体重、身高等等）
	其他记录（如暂停状态-暂停事由）
特殊属性：
	（意向会员）（存储最近的n次）邀约时间、反馈状态、经手人
	（流失会员）流失时间（会籍到期时间），流失原因，回访时间、反馈信息、经手人

 2.  功能需求：
增/删/编辑会员记录
查询记录：
在籍会员/意向会员/流失会员-名单显示
显示所有：在籍会员按入会时间或会员到期时间排序；意向会员与流失会员按照最近一次回访时间排序
在籍会员的部分名单查询：过滤选项（剑种；开卡类型；会员级别；）（按剑种分类；按开卡类型分类；按会员级别分类；）
特定会员信息查询（根据会员ID或会员姓名搜索或从名单列表访问）