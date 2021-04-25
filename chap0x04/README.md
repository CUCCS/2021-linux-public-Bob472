# shell脚本编程

## 实验环境

- Ubuntu 20.04 LTS
- Visual Studio Code

## 实验内容
任务一：用bash编写一个图片批处理脚本，实现以下功能：

  - [x] 支持命令行参数方式使用不同功能
  - [x] 支持对指定目录下所有支持格式的图片文件进行批处理
  - [x] 支持以下常见图片批处理功能的单独使用或组合使用
  - [x] 支持对jpeg格式图片进行图片质量压缩
  - [x] 支持对jpeg/png/svg格式图片在保持原始宽高比的前提下压缩分辨率
  - [x] 支持对图片批量添加自定义文本水印
  - [x] 支持批量重命名（统一添加文件名前缀或后缀，不影响原始文件扩展名）
  - [x] 支持将png/svg图片统一转换为jpg格式图片

任务二：用bash编写一个文本批处理脚本，对*worldcupplayerinfo.tsv*进行批量处理完成相应的数据统计任务
  - [x] 统计不同年龄区间范围（20岁以下、[20-30]、30岁以上）的球员数量、百分比
  - [x] 统计不同场上位置的球员数量、百分比
  - [x] 名字最长的球员是谁？名字最短的球员是谁？
  - [x] 年龄最大的球员是谁？年龄最小的球员是谁？

任务三：用bash编写一个文本批处理脚本，对*web_log.tsv*进行批量处理完成相应的数据统计任务：
  - [x] 统计访问来源主机TOP 100和分别对应出现的总次数
  - [x] 统计访问来源主机TOP 100 IP和分别对应出现的总次数
  - [x] 统计最频繁被访问的URL TOP 100
  - [x] 统计不同响应状态码的出现次数和对应百分比
  - [x] 分别统计不同4XX状态码对应的TOP 10 URL和对应出现的总次数
  - [x] 给定URL输出TOP 100访问来源主机
## 实验步骤

### 实验一

- 安装imagemagick

  ```
  sudo apt-get update
  
  sudo apt-get install imagemagick
  ```



  ![](https://github.com/CUCCS/2021-linux-public-Bob472/blob/chap0x04/chap0x04/img/install%20imagemagick.png)


 运行已经编写好的脚本task1.sh
 
 

  ### 实验二

  

  

- wget "https://c4pr1c3.gitee.io/linuxsysadmin/exp/chap0x04/worldcupplayerinfo.tsv"

- 运行已经编写好的脚本task2.sh
运行截图
![](https://github.com/CUCCS/2021-linux-public-Bob472/blob/chap0x04/chap0x04/img/%E8%BF%90%E8%A1%8Ctask1.png)

  ### 实验三
提前安装 p7zip-full

```sudo apt-get install p7zip-full```

将所需文件下载到本地并解压

```wget "https://c4pr1c3.gitee.io/linuxsysadmin/exp/chap0x04/worldcupplayerinfo.tsv"

7z x web_log.tsv.7z```



运行task3.sh
运行截图
![](https://github.com/CUCCS/2021-linux-public-Bob472/blob/chap0x04/chap0x04/img/%E8%BF%90%E8%A1%8Ctask2.png)




- 实验一结果

  [实验一的结果](https://github.com/CUCCS/2021-linux-public-Bob472/blob/chap0x04/chap0x04/task1.md)

- 实验二数据

  [实验二的结果](https://github.com/CUCCS/2021-linux-public-Bob472/blob/chap0x04/chap0x04/task2%20result.md)

- 实验三数据

- [实验三的结果](https://github.com/CUCCS/2021-linux-public-Bob472/blob/chap0x04/chap0x04/task3%20result.md)
