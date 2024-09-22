#include<stdio.h>
int main() {
    int l,n;
    int arr[20]; // 假设最多有 20 个元素
    // 输入数组长度
    printf("%s\n", "请输入整型数组长度（设置了最长为20）");
    scanf("%d", &l);
    n = 0;
    while (n<l) {
        scanf("%d", &arr[n]);
        n++;
    }
    // 冒泡排序
    int i = 0;
    while (i < n - 1) {
        int j = 0;
        while (j < n - 1 - i) {
            if (arr[j] > arr[j + 1]) {
                // 交换 arr[j] 和 arr[j + 1]
                int temp;
                temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
            j++;
        }
        i++;
    }
    // 输出排序后的数组
    int k = 0;
    while (k < n) {
        printf("%d ", arr[k]);
        k++;
    }
    printf("\n");
    return 0;
}