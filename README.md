# CampusAssistant

## 概念描述

一个针对东大学生的校园助手应用。

名字还没想好。

晚上上课的时候和孔伟杰想到了下面的这些功能。

做的时候不全部实现，优先做教务系统那部分（有现成的资源）。

## 功能

* 教务系统
	* 课程表
	* 培养计划
	* 学分
	* 成绩单
	* 空教室
	* 考试
* 图书馆
	* 找书
	* 预约
	* 借阅状态（个人信息）
* 饭卡
	* 余额
	* 交易记录
	* 挂失
* 社交
	* 学生会、社团联合会与一般社团等学生组织
	* 校园内广告、公告、宣传
	* 班级
* 校园服务
	* 快递
	* 国家级考试（如四六级）等成绩查询
	* 寻物
	* 水站
	* 校历
	* 校园地图
	
## 应用结构设计

主界面是分块的信息流，比如第一项是天气，第二项是课程/考试(就是教务)，以此类推。 *

像天气这样的分块就在信息流上显示天气，没有附加的交互。

课程这种的除了根据时间变化内容比如下一节课的信息，还有作为几个快捷入口的按钮比如看空教室、看考试信息、查学分。各个分块之间如果能实现的话可以调整先后位置。

然后除了信息流之外另外开一个tab是功能集合可以叫百宝箱之类的，里面有提供的功能的索引。我们把常用的都提取出来放在信息流(虽然这样也不能算一般意义上的信息流)里，不常用的让使用者自己去找。