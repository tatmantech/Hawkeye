# Hawkeye

#### Original Attributions

[![GitHub issues](https://img.shields.io/github/issues/0xbug/Hawkeye.svg)](https://github.com/0xbug/Hawkeye/issues)
[![GitHub forks](https://img.shields.io/github/forks/0xbug/Hawkeye.svg)](https://github.com/0xbug/Hawkeye/network)
[![GitHub stars](https://img.shields.io/github/stars/0xbug/Hawkeye.svg)](https://github.com/0xbug/Hawkeye/stargazers)
[![Python 3.x](https://img.shields.io/badge/python-3.x-yellow.svg)](https://www.python.org/) 
[![GitHub license](https://img.shields.io/badge/license-GPLv3-blue.svg)](https://raw.githubusercontent.com/0xbug/Hawkeye/master/LICENSE)

## Introduction - 简介

> Monitor the github code base, find out the employee hosting company code, and alert in time to reduce the risk of code leakage.

## Screenshot - 截图

![Hawkeye](https://user-images.githubusercontent.com/12611275/46849889-0d2d0980-ce24-11e8-832e-35f6f935bf3b.png)
## **Recently Updated - 最近更新**
- 2018-10-12 v3.0.0 Recently updated non-compliance updates, need to configure a new database - 非兼容性更新,需配置新数据库
    - Search mode is switched to API, support for adding multiple GitHub users, API quota visualization - 搜索方式切换成API，支持添加多GitHub用户，API配额可视化
    - Configure visualization to remove configuration files - 配置可视化，去除配置文件
    - Crontab switches to a lightweight task queue Huey, the task cycle can be customized - crontab 切换成轻量级的任务队列 Huey ,任务周期可自定义
    - Support for Docker deployment - 支持 Docker 部署
    - Support batch ignore - 支持批量忽略
    - Reptile task status, result record display - 爬虫任务状态、结果记录展示
    - Optimize the analysis of affected assets - 优化解析受影响资产
    - Refactor email alerts, add spike alerts - 重构邮件 告警，添加钉钉告警


## Characteristics - 特性

- Cycle Monitoring - 周期监测
- Web Based Management - web管理
- Email Alerts - 邮箱告警通知
- Blacklist added - 黑名单添加
- Reptile task settings - 爬虫任务设置

## Requirements - 依赖

*   Python 3.x - handled in docker file
*   Flask - in requirements.txt
*   MongoDB >= 3.x - need server - refactored in docker-compose addition

## Operating System Support - 支持平台

*   Linux, macOS


## Docker Instuctions: - 安装(Docker 部署)
```
docker pull daocloud.io/0xbug/hawkeye
```
Or Manually Build - 或者手动 build

By Cloning project to local - 克隆项目到本地

```bash
git clone https://github.com/0xbug/Hawkeye.git --depth 1
cd Hawkeye
docker build -t hawkeye .
docker run -ti -p 80:80 -e MONGODB_URI=mongodb://username:password@ip:27017/hawkeye -e MONGODB_USER= -e MONGODB_PASSWORD= -d hawkeye ## mongodb 需认证 - correct info needed
docker run -ti -p 80:80 -e MONGODB_URI=mongodb://ip:27017 -d hawkeye ## mongodb 无认证 - correct info needed

```

Hawkeye supports Python *3.x* on Linux and macOS. (Python 2.x, you're on your own)
Hawkeye 支持 Python *3.x* on Linux and macOS。(2.x兼容性 需自行修改测试)



## Donate - 捐赠

> If this project is useful to you, you can donate - 如果该项目对您有帮助，您可以捐赠支持一下 谢谢！

![](https://user-images.githubusercontent.com/12611275/48882508-a9035980-ee55-11e8-9b2f-59346504e196.png)
