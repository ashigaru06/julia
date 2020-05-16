#Atcoder-ABC167-C
n,m,x=map(x->parse(Int,x),split(readline()))

function chgBinum(num) #numをString型の配列で返す
    num=string(num,base=2)
    ai=split(num,"")
    b=fill("0",n)
    for i=1:length(ai)
        b[i]=ai[length(ai)+1-i]
    end
    return b
end

function checknowA(nowA) #nowAのすべての要素がxを超えたか
    for i=1:m
        if nowA[i] < x
            return false
        end
    end
    return true
end

function main()
    c=Array{Int}(undef,n)
    a=Array{Int}(undef,n,m)
    #a[i,j]=理解度
    for i=1:n#cとaの受取
        data=map(x->parse(Int,x),split(readline()))
        for j=1:m+1
            if j==1
                c[i]=data[j]
            else
                a[i,j-1]=data[j]
            end
        end
    end
    ans= n*10^5+1
    for bit=1:(1<<length(c)-1) #bit全探索
        combination=chgBinum(bit)
        nowA=zeros(Int,m)
        nowPrice=0
        for i=1:n #組み合わせごとに条件を満たすか            
            if combination[i] == "1" #参考書iを買うか？
                for j=1:m #理解度の更新
                    nowA[j] += a[i,j] 
                end
                nowPrice += c[i]
            end
        end
        if checknowA(nowA) && nowPrice < ans
            ans=nowPrice
        end
    end
    if ans != n*10^5+1
        println(ans) #成功
    else
        println(-1) #失敗
    end
end 
main()