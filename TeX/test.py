a = ["n1", "n2", "n3"]
b = [1, 2, 3]
k = 0

## パターン1
for i in a:
    print(i, "=", str(b[k]))
    k += 1

## パターン2
for i in range(3):
    print(a[i],"=",str(b[i]))

## パターン3
for i,j in zip(a,b):
    print(i,"=",str(j))