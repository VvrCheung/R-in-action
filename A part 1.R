x <- rnorm(5) #创建了一个名为x的向量，它包含5个来自正态分布的随机偏差
x
#R允许使用=，但这可能会出现偏差
#x >- rnorm(5) 与上式等价
demo(graphics)
demo(Hershey)
help.start()  #打开帮助文档首页
help("lm")   #查看lm函数的相关信息
help.search("lm")  #以lm为关键词搜索本地帮助文档
example("lm")   #函数lm的示例
apropos("lm",mode="function") #列出名称中含有lm所有可用函数
data()  #列出当前以加载包中所含的所有可用示例数据集
vignette()  #列出当前已安装包中所有可用的vignette文档
vignette("lm") #为主题foo显示指定的vignette文档
getwd()   #获取当前工作目录
setwd("/Users/macbook") #改变当前工作目录
ls() #列出当前工作空间中的对象
source("filename") #执行某个脚本
sink("filename") #

help.start()
install.packages("vcd")
hlp(package="vcd")
library(vcd)
help(Arthritis)
Arthritis
example(Arthritis)





