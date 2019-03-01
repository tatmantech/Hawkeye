### 2018-10-12 v3.0.0 incompatibility update
- Search mode is switched to API, support for adding multiple GitHub users, API quota visualization
- Configure visualization to remove configuration files
- Crontab switches to a lightweight task queue Huey, the task cycle can be customized
- Support for Docker deployment
- Support batch ignore
- Reptile task status, result record display
- Optimize the analysis of affected assets
- Refactor email alerts, add spike alerts
### 2018-04-19 v2.0.0
- Add Basic authentication, you must re-configure according to the new config.ini.example
- User experience optimization, support for multiple filtering methods
- Reptile task status, result record display
- Parsing affected assets
- Add a switch to control whether to grab
- Email alert aggregation
### 2018.03.14

- Due to a regular match in spider.py, the login failed recently. Please pull the new code.


## 更新记录
- 2018-10-12 v3.0.0 非兼容性更新
    - 搜索方式切换成API，支持添加多GitHub用户，API配额可视化
    - 配置可视化，去除配置文件
    - crontab 切换成轻量级的任务队列 Huey ,任务周期可自定义
    - 支持 Docker 部署
    - 支持批量忽略
    - 爬虫任务状态、结果记录展示
    - 优化解析受影响资产
    - 重构邮件 告警，添加钉钉告警

- 2018-04-19 v2.0.0
    - 添加Basic 认证, 必须按照新的 `config.ini.example` 重新进行相关配置 
    - 用户体验优化,支持多种过滤方式
    - 爬虫任务状态、结果记录展示
    - 解析受影响资产
    - 添加开关，控制是否抓取
    - 邮件 告警聚合
- 2018.03.14 
    - 由于 spider.py 中一处正则匹配问题，导致近日开始登录失败，请大家 pull 下新代码
