#最長共通部分列
function lcs(x,y)
    m=length(x)
    n=length(y)
    c=zeros(Int,m,n)
    for i=1:m
        if i == 1
            for j=1:n
                if j == 1 # i=j=1
                    if x[i]==y[j]
                        c[i,j]=0+1
                    else
                        c[i,j]=0
                    end
                else #i=1 j!=1
                    if x[i]==y[j]
                        c[i,j]=0+1
                    elseif c[i,j-1] == 0
                        c[i,j]=0
                    else
                        c[i,j]=c[i,j-1]
                    end
                end
            end
        else
            for j=1:n
                if j == 1 #i!=1 j=1
                    if x[i]==y[j]
                        c[i,j]=0+1
                    else
                        c[i,j]=c[i-1,j]
                    end
                else # i!=1 j!=1
                    if x[i]==y[j]
                        c[i,j]=c[i-1,j-1]+1
                    elseif c[i-1,j] >= c[i,j-1]
                        c[i,j]=c[i-1,j]
                    else
                        c[i,j]=c[i,j-1]
                    end
                end
            end
        end
    end
    return c[m,n]
end
function main()
    x=split(readline(),"")
    y=split(readline(),"")
    println(lcs(x,y))
end
main()