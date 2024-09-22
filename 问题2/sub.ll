;@.str 是一个包含格式字符串 "%d\00" 的常量，用于 scanf 输入整数。
;@.str.1 也是常量，格式为 "%d\n\00"，用于 printf 打印整数并换行。
@.str =  constant [3 x i8] c"%d\00", align 1
@.str.1 =  constant [4 x i8] c"%d\0A\00", align 1
 
define i32 @sub(i32   %0, i32   %1) {
L0:  ;开始是函数入口块，进行局部变量分配和参数存储
  ;%2、%3 和 %4 是在栈上为存储的是局部变量开辟的地址
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  ;进行参数存储
  store i32 %0, ptr %2, align 4
  store i32 %1, ptr %3, align 4
  ;跳转
  br label %L1

L1:  ;这里是主要逻辑块
  ;取参数
  %5 = load i32, ptr %2, align 4
  %6 = load i32, ptr %3, align 4
  ;进行逻辑减法运算 
  ;nsw是一种约束，确保在有符号减法运算中不允许出现溢出，否则被视为是一种错误
  %7 = sub nsw i32 %5, %6
  ;存储运算结果
  store i32 %7, ptr %4, align 4
  ;取出结果并返回
  %8 = load i32, ptr %4, align 4
  ret i32 %8
}
define i32 @main() {
L0:  ;这也是函数入口块，进行局部变量地址分配
  %0 = alloca i32, align 4
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %L1

L1:  
  ;调用scanf 函数进行读取输入
  ;%3 和 %4 存储的是 scanf 函数的返回值。scanf 的返回值是读取并成功存储的输入项的数量，通常用于检查输入是否成功。
  ;如果 scanf 成功读取并存储了一个整数，%3 和 %4 应该等于 1（表示成功读取了1个输入项）。
  ;如果输入错误，则返回值可能是 0 或负数，表示读取失败。
  %3 = call i32 (ptr, ...) @__isoc99_scanf(ptr  @.str, ptr  %0)
  %4 = call i32 (ptr, ...) @__isoc99_scanf(ptr  @.str, ptr  %1)
  ;将输入结果取出
  %5 = load i32, ptr %0, align 4
  %6 = load i32, ptr %1, align 4
  ;调用上文实现的sub函数进行减法计算
  %7 = call i32 @sub(i32  %5, i32   %6)
  ;存储计算结果
  store i32 %7, ptr %2, align 4
  ;取出计算结果，并调用printf函数输出
  %8 = load i32, ptr %2, align 4
  %9 = call i32 (ptr, ...) @printf(ptr  @.str.1, i32  %8)
  ret i32 0
}

;声明 scanf 和 printf 函数，它们使用可变参数，并将在外部链接。
declare i32 @__isoc99_scanf(ptr , ...) 
declare i32 @printf(ptr , ...) 


