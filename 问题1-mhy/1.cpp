#include <iostream>
#include <cmath>
#include <string>
#include <vector>
// 定义宏
#define SQUARE(x) ((x) * (x))
#define MAX(a, b) ((a) > (b) ? (a) : (b))
// 定义常量
const double PI = 3.14159;
// 全局变量
int globalVar = 100;
// 枚举类型
enum Color {RED,BLUE};
// 命名空间
namespace MyNamespace {
    void printMessage() {
        std::cout << "Hello from MyNamespace!";
    }
}
// 类定义
class Circle {
public:
    Circle(double r) : radius(r) {}  // 构造函数
    double area() const {             // 成员函数
        return PI * SQUARE(radius);
    }
    // 运算符重载
    bool operator<(const Circle& other) const {
        return this->radius < other.radius;
    }
private:
    double radius; // 成员变量
};
// 模板函数
template <typename T>
T multiply(T a, T b) {
    return a * b;
}
// 简单的函数声明与定义
int add(int a, int b) {
    return a + b;
}
// 异常处理
void checkValue(int value) {
    if (value < 0) {
        throw std::invalid_argument("Value Error!");
    } else {
        std::cout << value;
    }
}
// 主函数
int main() {
    // 使用全局变量
    std::cout << globalVar;
    // 使用宏和常量
    std::cout << SQUARE(5);
    std::cout << MAX(3, 4) ;
    std::cout << PI;
    // 枚举类型
    Color myColor = RED;
    switch(myColor) {
        case RED:
            std::cout << "Color is Red";
            break;
        case BLUE:
            std::cout << "Color is Blue";
            break;
    }
    // 使用类
    Circle circle1(5.0);
    Circle circle2(3.0);
    std::cout << circle1.area();
    // 运算符重载的使用
    if (circle2 < circle1) {
        std::cout << "Circle2 is smaller than Circle1.";
    }
    // 调用命名空间中的函数
    MyNamespace::printMessage();
    // 调用模板函数
    std::cout << multiply(3, 4);
    std::cout << multiply(2.5, 3.1);
    // 异常处理
    try {
        checkValue(-1);  
    } catch (const std::invalid_argument& e) {
        std::cerr << e.what() << std::endl;
    }
    /*这是多行注释*/
    //这是单行注释！
    return 0;
}