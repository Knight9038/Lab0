;@.str 是一个包含格式字符串 "%d\00" 的常量，用于 scanf 输入整数。
;@.str.1 也是常量，格式为 "%s\0A\00"，用于格式化输出字符串。
;@.str.2 是字符串常量，UTF-8 编码，内容是“这是一个偶数”。
;@.str.3 也是字符串常量，UTF-8 编码，内容是“这是一个奇数”。
;@.str.4 也是常量，格式为 "%d\n\00"，用于 printf 打印整数并换行。
@.str = constant [3 x i8] c"%d\00", align 1
@.str.1 = constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = constant [19 x i8] c"\E8\BF\99\E6\98\AF\E4\B8\80\E4\B8\AA\E5\81\B6\E6\95\B0\00", align 1
@.str.3 = constant [19 x i8] c"\E8\BF\99\E6\98\AF\E4\B8\80\E4\B8\AA\E5\A5\87\E6\95\B0\00", align 1
@.str.4 =  constant [4 x i8] c"%d\0A\00", align 1

define i32 @main() {
0: 
  ;入口块分配局部变量内存
  ;%1我接下来存的是2的次方的结果的地址
  ;%2我存的是用户的输入的地址
  ;%3我存的是循控制变量的地址
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  br label %4

4:
  ;%1内容赋值为1,%3内容赋值为0
  store i32 1, ptr %1, align 4
  store i32 0, ptr %3, align 4
  ;调用scanf，读取用户输入存入%2的地址中
  %5 = call i32 (ptr, ...) @__isoc99_scanf(ptr @.str, ptr %2)
  ;取出%2内输入值
  %6 = load i32, ptr %2, align 4
  ;对用户输入数取模
  %7 = srem i32 %6, 2
  ;%8为布尔值，判断%7是否为0，即用户输入数模2结果是否为0,
  ;若为%70，%8为1，否则%8为0
  %8 = icmp eq i32 %7, 0
  ;%8为真（即%8为1）跳到%9，否则跳到%11
  br i1 %8, label %9, label %11

9: ;输出str.2，即“这是一个偶数”                                               
  %10 = call i32 (ptr, ...) @printf(ptr @.str.1, ptr @.str.2)
  br label %13

11: ;输出str.3，即“这是一个奇数”                                              
  %12 = call i32 (ptr, ...) @printf(ptr @.str.1, ptr @.str.3)
  br label %13

13: ;跳转块，if两个分支都会跳转到这，然后继续跳转到下一部分                                              
  br label %14

14: ;循环条件判断块                                              
  ;取出%2（存储用户输入）,%3（存储循环变量）里面的值，分别放在%15，%16                                             
  %15 = load i32, ptr %3, align 4
  %16 = load i32, ptr %2, align 4
  ;比较%15是否小于%16，存储比较的结果存在%17中 ，结果为 i1 类型（布尔值）。
  ;如果 %15 小于 %16，则 %17 的值为 true（1）；否则为 false（0）。
  %17 = icmp slt i32 %15, %16
  ;i1 %17 是条件（布尔值），决定跳转的路径。
  ;如果 %17 为 true（即 %15 小于 %16），则跳转到标签 %18。
  ;如果 %17 为 false（即 %15 不小于 %16），则跳转到标签 %23。
  br i1 %17, label %18, label %23

18:  ;循环体块                                             
  ;%1(2的次方)值取出
  %19 = load i32, ptr %1, align 4
  ;与2相乘
  %20 = mul nsw i32 2, %19
  ;存回%1中
  store i32 %20, ptr %1, align 4
  ;%3（循环变量）值取出
  %21 = load i32, ptr %3, align 4
  ;给%3加1
  %22 = add nsw i32 %21, 1
  ;存回%3中
  store i32 %22, ptr %3, align 4
  ;跳回循环判断
  br label %14

23:  ;循环结束块  
  ;%1(2的次方)值取出，并输出                                           
  %24 = load i32, ptr %1, align 4
  %25 = call i32 (ptr, ...) @printf(ptr  @.str.4, i32  %24)
  ret i32 0
}

;声明 scanf 和 printf 函数，它们使用可变参数，并将在外部链接。
declare i32 @__isoc99_scanf(ptr  , ...) 
declare i32 @printf(ptr  , ...) 

