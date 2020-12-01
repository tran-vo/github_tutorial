def perfectnum(n):
       sum1 = 0
       for i in range(1, n):
             if(n % i == 0):
                    sum1 = sum1 + i
       if (sum1 == n):
               print("True")
       else:
               print("False")
n = [int(x) for x in input(" Enter any numbers: ").split()]
for i in n:
      perfectnum(i)
