# BookMarket
基于JavaEE的智能旧书交易平台设计与实现

## 开发工具
- IntelliJ IDEA 2019.3.3 (Ultimate Edition)
- Visual Studio Code v1.44.0

## 运行环境
- mysql  Ver 15.1 Distrib 10.1.37-MariaDB, for Win32 (AMD64)
- openjdk 10.0.2 2018-07-17
- node v13.5.0

## 主要使用框架组件
- Spring
- Hibernate
- Express
- BootStrap
- Vue
- Axios

## 项目部署

### bookMarket-java
bookMarket-java是系统的java后台API
1. 使用*docs/sql/*下sql备份创建数据库。  
或根据*bookMarket-java/src/main/resources/config/hibernate.properties*配置信息创建数据库
1. 在*bookMarket-java/src/main/resources/config/hibernate.properties*中更新数据库配置
1. 使用maven命令重新打包*bookMarket-java.war*，放于tomcat目录下，启动tomcat,tomcat自动解压war

### bookMarket-node
bookMarket-node是书城用户主系统
1. 进入*bookMarket-node*目录下，`npm install`
1. 更换额外第三方服务配置。*config.js*中更改**极速API**和**阿里OSS对象存储**配置
1. 更换额外第三方服务配置。*util.js*中更改支付宝支付SDK配置
1. 修改*public/js/config.js*中的axiosBaseURL的值，修改为服务器地址
1. 启动项目`node ./app.js`

### bookMarket-node-admin
bookMarket-node-admin是书城管理系统
1. 进入*bookMarket-node*目录下，`npm install`
1. 修改*public/js/config.js*中的axiosBaseURL的值，修改为服务器地址
1. 启动项目`node ./app.js`

## bug to fix
1. bookMarket-node/router/book.js 书籍上架 图片缓存后应删除
2. more

## 最后
毕设系统，水平不高，缺陷不少。  
*docs*下有系统设计图、运行截图。
