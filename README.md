12306ngweb
==========
第一时间面对客户的海量请求，我们将负责将这些请求合理的分配到前端服务器上，并要保证和后端系统的稳定通信。<br />
并没有复杂的算法，但他也不只是HTML+JS+CSS，它需要负载均衡、MVC、缓存、静态页生成、内容分发、服务器监控、日志分析等等。
12306ng-web-customer-transaction_客户交易处理
---------
负责处理客户交易请求，与服务网关进行交互获取资源。
12306ng-web-system_系统管理平台
---------
系统管理平台
集中管理前端资源，包括静态页面的生成，资源的分发，缓存的维护等工作。
###使用帮助
我们使用maven对项目依赖进行管理，所以你应该首先正确安装并配置好您的maven。<br />
下一步进入到你的项目目录下，对项目进行编译，maven会自动下载并配置好依赖包。<br />

    mvn compile
            
maven可以自动生成eclipse需要的配置信息，然后导入到你的eclipse中就可以了。<br />

    mvn eclipse
            
如果你的IDE未能找到M2_REPO你还需要做一些工作。<br />

    window >> preferences >> Java >> Build Path >> Classpath Variables
新建一个 M2_REPO 的变量，变量值指向你系统的Maven2的数据仓库位置<br />
或者直接安装eclipse的maven插件，然后设置你的M2_REPO。<br />
管理平台还需要一个简单的数据库支持，进入到12306ng-web-system项目目录下，初始化数据库。<br />

    cd 12306ng-web-system
    mvn antrun:run -Prefresh-db
一切都弄好以后你就可以启动项目来试试编码了！<br />
