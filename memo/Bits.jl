function checkbit(bit,i)#bit:チェックする値,i:i番目
    if bit & (1<<i) == (1<<i)
        return true
    else
        return false
    end
end
#=
julia> function checkbit(bit,i)#bit:チェックする値,i:i番目
           if bit & (1<<i) == (1<<i)
               return true
           else
               return false
           end
       end
checkbit (generic function with 1 method)

julia> if checkbit(90,0)
       println("true")
       else
       println("false")
       end
false
=#
function cntbits(bit,num)#num=1:フラグが幾つ立っているか,=0立ってないか 
    checker=string(bit,base=2)
    num=string(num)
    c=split(checker,"")
    count=0
    for i=1:length(c)
        if c[i]==num
            count += 1
        end
    end
    return count
end
#=
julia> string(90,base=2)
"1011010"

julia> cntbits(90,1)
4

julia> cntbits(90,0)
3
=#
