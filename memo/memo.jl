### 標準入力
#数値
k = parse(Int,readline())
#文字列
k = readline()
#一列まとめて取る
k = map(x->parse(Int,x),split(readline()))
#julia> k = map(x->parse(Int,x),split(readline()))
#1 23 456
#3-element Array{Int64,1}:
#   1
#  23
# 456
k = split(readline())
#=
julia> k = split(readline())
str leg alp
3-element Array{SubString{String},1}:
 "str"
 "leg"
 "alp"

julia> k[1]
"str"
=#

#配列内の文字列を分割（二次元配列）
#=
julia> split.(k,"")
3-element Array{Array{SubString{String},1},1}:
 ["s", "t", "r"]
 ["l", "e", "g"]
 ["a", "l", "p"]

julia> k[3][3]
'p'
=#

#辞書 Dict()
d = Dict() #定義

#d内にreadline()と同一のkeyがあるか
haskey(d,readline())
d[s] = j #辞書に追加　s=key j=value
