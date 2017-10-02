a <- c(1,2,3,4,5,6,7,8,9,10)
a
a[2]
a[c(1,2,3)]
a[1:3]   #注意提取时的符号
#矩阵
mymatrix <- matrix(vector,nrow=number_of_rouws,ncol=number_of_columns,byrow=logical_value,
                   dimnames=list(char_vector_rownames,char_vector_colnames))
#vector包含了矩阵中的元素，nrow和nocl用以指定行列的维数，dimnames包含了可选的、以字符型向量表示的行名和列名。
#选项byrow表明矩阵应该按行填充（byrow=TRUE）还是按列填充（byrow=FALSE），默认情况下按列填充。
mymatrix <- matrix(1:20,nrow=5,ncol=4)
mymatrix
cells <- c(1,26,32,68)
rnames <- c("R1","R2")
cnames <- c("C1","C2")
mymatrix <- matrix(cells,nrow=2,ncol=2,byrow=TRUE,dimnames=list(rnames,cnames))
mymatrix
#数组
myyarray <- array(vector,dimensions,dimnanes)
#vector包含数组中的数据，dimensions是一个数值型向量，给出了各个维度下标的最大值，dimnames是可选的、各维度名称标签的列表
dim1 <- c("A1","A2")
dim2 <- c("B1","B2","B3")
dim3 <- c("C1","C2","C3","C4")
z <- array(1:24,c(2,3,4),dimnames=list(dim1,dim2,dim3))
z
#数据框
patientID <- c(1,2,3,4)
age <- c(25,34,28,52)
diabates <- c("Type1","Type2","Type1","Type1")
status <- c("Poor","Improved","Excellent","Poor")
patientdata <- data.frame(patientID,age,diabates,status)
patientdata
#数据框中每一列数据的类型必须唯一

#选取数据框中的元素
patientdata[1:2]
patientdata[1:2]
patientdata[c("diabates","status")]
patientdata$age

#生成关于糖尿病类型diabates和病情status的列联表
table(patientdata$diabates,patientdata$status)

#更简易的获取数据的方法，以mtcars数据框为例
#获取每加仑行驶英里数（mpg）变量的描述性统计量，并分别绘制此变量与发动机排量（disp）和车身重量（wt）的散点图

summary(mtcars$mpg)  #获取某变量的描述性统计量
plot(mtcars$mpg,mtcars$disp)#绘制某变量的散点图
plot(mtcars$mpg,mtcars$wt)

attach(mtcars)
summary(mpg)
plot(mpg,disp)
plot(mpg,wt)
detach(mtcars) #将数据框从搜索路径中移除，不会对数据框做任何处理
#attach-detach函数的局限性在于最好是分析一个数据框，并且不太可能有多个同名对象时使用，否则先出现的数据将取得优先权

with(mtcars,{            #如果只有summary一个函数，可以省略{}
  summary(mpg,disp,wt) 
  plot(mpg,disp)
  plot(mpg,wt)
  })
#with语句的局限性在于，赋值仅在此函数括号内生效

#factor的使用方法
status <- c("Poor","Improved","Excellent","Poor")
status <- factor(status,ordered=TRUE) #默认是按照字母顺序排序
status
#局限在于当我们希望顺序为 Poor Improved Excellent , 但输出的顺序却会变为 Excellent Improved Poor

status <- factor(status,ordered=TRUE,
                 levels=c("Poor","Improved","Excellent"))

status

patientID <- c(1,2,3,4)
age <- c(25,34,28,52)
diabates <- c("Type1","Type2","Type1","Type1")
status <- c("Poor","Improved","Excellent","Poor")
diabates <- factor(diabates)  #以一个整数向量的形式存储类别值，同时一个由字符串组成的内部向量将映射到这些整数上
status <- factor(status,ordered=TRUE) #按照首字母正序排列,即将diabates和status指定给有序型因子
patientdata <- data.frame(patientID,age,diabates,status)
str(patientdata)
summary(patientdata)

#列表
g <- "my first list"
h <- c(25,26,18,39)
j <- matrix(1:10,nrow=5)
k <- c("one","two","three")
mylist <- list(title=g,ages=h,j,k)#列表有四个成分：字符串、数值型向量、矩阵、字符型向量
mylist
mylist[[2]] #提取第二个成分
mylist[["ages"]]
