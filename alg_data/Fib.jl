#Fibonacci Number
function makeFibonacci(n) #dp
    F=fill(-1,n)
    F[1]=1
    F[2]=1
    for i=3:n
        F[i]=F[i-1]+F[i-2]
    end
    return F
end
function fib(n,F) #メモ化
    if n == 1 || n== 2
        return F[n]=1
    end
    if F[n] != -1
        return F[n]
    end
    return F[n]=fib(n-2,F)+fib(n-1,F)
end
function main()
    #dp
    n=parse(Int,readline())
    F=makeFibonacci(n)
    println(F[n])
    #メモ化
    F=fill(-1,n)
    F
    println(fib(n,F))
end
main()