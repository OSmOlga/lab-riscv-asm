#include <stdio.h>  

#define N 4
#define M 2

int process(int n, int m, int matrix[M][N])
{
    int sum = 0;
    for (int i = 0; i < m; i++)
    {
        for (int j = 0; j < n; j++)
        {
            if (matrix[i][j] > 0)
                sum = sum + matrix[i][j];
        }
    }
    return sum;
}

int main()
{        
    int res = 0;
    int arr[M][N] = { { 1, -1, 2, -2 }, { 3, -3, 4, -4 } };

    res = process (N, M, arr);

    printf(" % d", res);

    return 0;
}                                   