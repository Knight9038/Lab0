#include <iostream>  // 预处理指令，包含标准输入输出库
using namespace std; //使用命名空间

#define MAX_FIB 100  // 宏定义,Fibonacci数列的最大长度。
const double PI = 3.14159; // 定义常量,表示圆周率。

int global_counter = 0; // 全局变量,记录Fibonacci数列的生成次数。

// 函数声明
void printFibonacci(int n);
template <typename T> T add(T a, T b);

// 正常定义的函数
int multiply(int x, int y) {
    return x * y;  // 返回x和y的乘积
}

// 类模板
template <typename T>
class Fibonacci {
public:
    T a, b;
    Fibonacci(T x, T y) : a(x), b(y) {}

    T next() {
        T temp = a;
        a = b;
        b = temp + b;
        return b;
    }

    // 运算符重载，用于输出对象的状态
    friend ostream& operator<<(ostream& os, const Fibonacci<T>& fib) {
        os << "Fibonacci数列: " << endl << fib.a << endl << fib.b ;
        return os;
    }
};

// 主函数
int main()
{
    int n;

    cout << "请输入fibonacci数列的长度: ";
    cin >> n;

    if (n > MAX_FIB) {
        cout << "输入长度超过了最大限度 (" << MAX_FIB << ")!" << endl;
        return 1;
    }

    printFibonacci(n); // 调用函数打印Fibonacci数列

    // 类模板对象
    Fibonacci<int> fib(0, 1);
    cout << fib << endl << endl;

    // 运算符重载输出
    cout << "使用重载运算符<< : " << fib << endl;

    // 输出下一个数列
    for (int i = 0; i < n - 2; ++i) {
        cout << fib.next() << endl;
    }

    // 使用multiply函数
    int result = multiply(5, 3); // 调用multiply函数
    cout << "5 乘以 3 的结果是: " << result << endl;

    // 使用常量PI
    cout << "圆周率PI的值是: " << PI << endl;

    return 0;
}

// 函数模板
template <typename T>
T add(T a, T b) {
    return a + b;
}

// 函数定义
void printFibonacci(int n) {
    int a = 0, b = 1, t;
    cout << "Fibonacci数列:" << endl;
    cout << a << endl;
    cout << b << endl;

    for (int i = 1; i < n - 1; ++i) {
        t = b;
        b = add(a, b);
        cout << b << endl;
        a = t;
        global_counter++;  // 使用全局变量
    }

    cout << "Fibonacci生成计数: " << global_counter << endl;
}