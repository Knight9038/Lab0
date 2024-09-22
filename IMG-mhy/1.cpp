#include<iostream>
using namespace std;
int main()
{
    int res,n,cnt;
    cin>>n;
    res=1;
    cnt=2;
    while(cnt<=n)
    {
        res=res*cnt;
        cnt=cnt+1;
    }
    cout<<res<<endl;
    return 0;
}