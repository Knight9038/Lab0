;@.str 是一个包含格式字符串 "%s\0A\00" 的常量，用于格式化输出字符串
;@.str.1 是字符串常量，UTF-8 编码，内容是“请输入整型数组长度（设置了最长为20）”。
;@.str.2 是一个包含格式字符串 "%d\00" 的常量，用于 scanf 输入整数
;@.str.3 是一个包含格式字符串 "%d \00" 的常量，用于 scanf 输入整数,并在每个输出的整数后面输出一个空格
;@.str.4 也是常量，格式为 "\0A\00"，输出一个换行符
@.str =  constant [4 x i8] c"%s\0A\00", align 1
@.str.1 =  constant [54 x i8] c"\E8\AF\B7\E8\BE\93\E5\85\A5\E6\95\B4\E5\9E\8B\E6\95\B0\E7\BB\84\E9\95\BF\E5\BA\A6\EF\BC\88\E8\AE\BE\E7\BD\AE\E4\BA\86\E6\9C\80\E9\95\BF\E4\B8\BA20\EF\BC\89\00", align 1
@.str.2 =  constant [3 x i8] c"%d\00", align 1
@.str.3 =  constant [4 x i8] c"%d \00", align 1
@.str.4 =  constant [2 x i8] c"\0A\00", align 1

define i32 @main(){
0: ;入口块分配局部变量内存,并进行一些初始化赋值
  ;%2地址中是用户输入的要排序的数字的个数
  ;%3地址中存的是循环控制单元，用于控制循环输入排序数组中的数的
  ;%4地址是数组起始地址，该数组就是用于排序的数组，最多存20个整数
  ;%5地址中存的冒泡排序的双重循环的第一层的循环控制变量
  ;%6地址中存的冒泡排序的双重循环的第二层的循环控制变量
  ;%7地址中存的是冒泡排序中的中间交换时暂存的数据
  ;%8地址中存的是输出排序后数组的循环控制变量
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [20 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  ;将地址%3中的值赋初值为0
  store i32 0, ptr %3, align 4
  ;调用printf输出str.1，提示用户输入要排序的整型数组长度
  %9 = call i32 (ptr, ...) @printf(ptr  @.str, ptr  @.str.1)
  ;调用scanf函数，读取用户输入的要排序的整型数组的长度，并存在%2中
  %10 = call i32 (ptr, ...) @__isoc99_scanf(ptr  @.str.2, ptr  %2)
  br label %11

11: ;是用户输入数组的while循环条件判断块
  ;%12和%13分别取出%3（循环控制变量）和%2（用户输入的数组的长度）中的值                                              
  %12 = load i32, ptr %3, align 4
  %13 = load i32, ptr %2, align 4
  ;%14是布尔值，存储%12和%13的比较结果，若%12小于%13时，%14为真（即1），否则为假（即0）
  %14 = icmp slt i32 %12, %13
  ;%14为真跳到%15，否则跳转到%22
  br i1 %14, label %15, label %22

15: ;用户输入数组的while循环的循环体块
  ;将%3（循环控制变量）地址中的值取出
  %16 = load i32, ptr %3, align 4
  ;sext符号拓展，满足符号一致性，因为getelementptr中的索引操作需要64位整数
  %17 = sext i32 %16 to i64
  ;getelementptr：根据类型和偏移量计算数组或结构体中的某个元素的地址。
  ;inbounds关键词用于内存安全性检查，表示当进行指针计算时，结果指针必须在合法的内存范围内,即inbounds确保不会越界访问内存,越界会导致程序崩溃。
  ;%4是数组的起始地址，%17是偏移地址（循环控制变量），i64 0：表示在数组的第0层（即数组本身，而不是更深的嵌套结构）。
  ;得到的%18即为计算偏移量后的数组地址
  %18 = getelementptr inbounds [20 x i32], ptr %4, i64 0, i64 %17
  ;调用scanf函数对计算后的%18地址中写入用户输入的值
  %19 = call i32 (ptr, ...) @__isoc99_scanf(ptr  @.str.2, ptr  %18)
  ;将%3（循环控制变量）地址中的值取出,加1，再放回
  %20 = load i32, ptr %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %3, align 4
  ;跳转回%11，重新进行循环条件判断
  br label %11

22: ;跳转块，跳出循环，立马进入下一个循环
  ;为接下来的冒泡排序的双重循环初始化循环控制变量
  ;%5为第一层循环的循环控制变量，初始化为0
  store i32 0, ptr %5, align 4                                              
  br label %23

23: ;冒泡排序第一层循环控制条件
  ;取出%5（冒泡排序第一层循环控制变量）                                              
  %24 = load i32, ptr %5, align 4
  ;取出%3(用户输入的数组长度)，然后减1，存在%26中，作为总次数的限制
  %25 = load i32, ptr %3, align 4
  %26 = sub nsw i32 %25, 1
  ;将%24与%26比较，若%24中值小于%26，将%27赋值为1，否则为0
  %27 = icmp slt i32 %24, %26
  ;若%27为1跳转到%28，否则跳到%71
  br i1 %27, label %28, label %71

28: ;跳转块，继续跳入下一层循环
  ;%6为第二层循环的循环控制变量，初始化为0                                               
  store i32 0, ptr %6, align 4
  br label %29

29: ;冒泡排序第二层循环控制条件条件                                              
  ;取出%6（冒泡排序第二层循环控制变量）
  %30 = load i32, ptr %6, align 4
  ;取出%3(用户输入的数组长度)，然后减1减第一层的循环控制变量的值（%5），存在%32中，作为总次数的限制
  %31 = load i32, ptr %3, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load i32, ptr %5, align 4
  %34 = sub nsw i32 %32, %33
  ;%32和%34小于置位，结果存到%35
  %35 = icmp slt i32 %30, %34
  ;若%35为1跳转到%36，否则跳到%68
  br i1 %35, label %36, label %68

36: ;if判断 
  ;取出冒泡排序第二层循环控制变量（%6）,存在%37                                            
  %37 = load i32, ptr %6, align 4
  ;以冒泡排序第二层循环控制变量计算偏移地址，存在%39
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [20 x i32], ptr %4, i64 0, i64 %38
  ;将第一次计算出地址中的值放在%40中
  %40 = load i32, ptr %39, align 4
  ;与上面类似，只不过放在%45中的值是上面计算出的下一位
  %41 = load i32, ptr %6, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [20 x i32], ptr %4, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4
  ;将%40与%45对比，小于置位结果存在%46，即比较数组和他下一位的大小
  %46 = icmp sgt i32 %40, %45
  ;若%46为1，跳到%7，否则跳到%65
  br i1 %46, label %47, label %65

47: ;if判断后的交换
  ;取出%6（冒泡排序第二层循环控制变量），存在%46                                              
  %48 = load i32, ptr %6, align 4
  ;以冒泡排序第二层循环控制变量计算偏移地址，存在%50
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [20 x i32], ptr %4, i64 0, i64 %49
  ;将计算出的地址的值取出放在%51
  %51 = load i32, ptr %50, align 4
  ;将取出的值放在%7中，%7用于暂存要交换的数组中的其中一个数
  store i32 %51, ptr %7, align 4
  ;与上类似，计算下一个数组元素的位置，存在%55中
  %52 = load i32, ptr %6, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [20 x i32], ptr %4, i64 0, i64 %54
  ;将%55中的值（即要交换的第二个数组元素）取出，放在%56中
  %56 = load i32, ptr %55, align 4
  ;与上类似，计算第一个数组元素（即暂存了的）的位置，存在%59中
  %57 = load i32, ptr %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [20 x i32], ptr %4, i64 0, i64 %58
  ;将%56中的值（即要交换的第二个数组元素），放在%56（即要交换的第一个数组元素的地址）中
  store i32 %56, ptr %59, align 4
  ;取出%7（暂存的元素，也是要交换的第一个数组元素），存在%60
  %60 = load i32, ptr %7, align 4
  ;同样，计算本来第二个数组元素（即暂存了的）的位置，存在%63中
  %61 = load i32, ptr %6, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [20 x i32], ptr %4, i64 0, i64 %63
  ;取出%7（暂存的元素，也是要交换的第一个数组元素），存在%64中（即本来要交换的第二个数组元素的地址），至此完成了交换
  store i32 %60, ptr %64, align 4
  br label %65

65: ;第二层循环变量自增                                              
  ;取出%6（冒泡排序的双重循环的第二层的循环控制变量），然后加1放回,即循环变量自增
  %66 = load i32, ptr %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr %6, align 4
  br label %29

68:  ;第二层循环的结束，第一层循环变量自增 
  ;取出%5（冒泡排序的双重循环的第一层的循环控制变量），然后加1放回,即循环变量自增                                          
  %69 = load i32, ptr %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %5, align 4
  br label %23

71:  ;第一层循环的结束
  ;将输出排序后数组的循环控制变量（%8）赋值为0                                             
  store i32 0, ptr %8, align 4
  br label %72

72: ;输出数组的的循环控制条件判断
  ;取出%8（输出排序后数组的循环控制变量）                                              
  %73 = load i32, ptr %8, align 4
  ;取出%3(用户输入的数组长度)，存在%74中，作为总次数的限制
  %74 = load i32, ptr %3, align 4
  ;小于置位，结果存在%75中
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %84

76: ;输出数组的的循环体                                              
  ;取出%8（输出排序后数组的循环控制变量），用于计算偏移量，最终地址结果存在%79中
  %77 = load i32, ptr %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [20 x i32], ptr %4, i64 0, i64 %78
  ;将该地址对应的数组中的值取出，然后调用printf输出
  %80 = load i32, ptr %79, align 4
  %81 = call i32 (ptr, ...) @printf(ptr  @.str.3, i32  %80)
  ;取出%8（输出排序后数组的循环控制变量），然后加1放回,即循环变量自增
  %82 = load i32, ptr %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %8, align 4
  br label %72 

84:
  ;最后输出一个换行符                                               
  %85 = call i32 (ptr, ...) @printf(ptr  @.str.4)
  ret i32 0
}

;声明 scanf 和 printf 函数，它们使用可变参数，并将在外部链接。
declare i32 @printf(ptr , ...) 
declare i32 @__isoc99_scanf(ptr , ...) 


