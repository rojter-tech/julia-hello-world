# Run this cell in order to download all the package dependencies with the exact versions used in the book
# This is necessary if (some of) the packages have been updated and have introduced breaking changes
book = "Julia v1.0 By Example"
pi = 3.14
ANSWER = 42
my_first_name = "Adrian"
#answer
δ = 130
🚀 = "apollo 11"
#do = 3
#end = "Paris"

#MysteryVar
const firstmonth = "January"
const mealoption = "vegetarian"
mealoption = "vegan"
#mealoption = 2
const amount = 10.25
#amount = 10
amount = 10.00
#=
	Our company charges a fixed
	$10 fee per transaction.
=#
const flatfee = 10 # flat fee, per transaction
#"""
#Measuring programming progress by lines of code is like
#measuring air-craft building progress by weight.
#"""
string("Itsy", " ", "Bitsy", " ", "Spider")
username = "Adrian"
greeting = "Good morning"
greeting * ", " * username
username = 9543794
greeting = "Good morning"
greeting * ", " * "$username"
username = 9543794
greeting = "Good morning"
string(greeting, ", ", username)
username = "Adrian"
greeting = "Good morning"
"$greeting, $username"
#"$(uppercase(greeting)), $(reverse(username))"
"The sum of 1 and 2 is $(1 + 2)"
str = "Nice to see you"
str[1]
str[9:11]
str = "Søren Kierkegaard was a Danish Philosopher"
str[1]
str[2]
#str[3]
str[4]
nextind(str, 2)
for s in str
    println(s)
end
length(str)
str[42]
str[end]
str[end-10:end]
#str[end+1]
reg = r"[0-9]+"
match(reg, "It was 1970")
typeof(reg)
Regex("[0-9]+")
match(r"it was", "It was 1970") # case-sensitive no match
match(r"it was"i, "It was 1970") # case-insensitive match
if match(r"it was", "It was 1970") !== nothing
   println("it's a match")
else
   println("not a match")
end
occursin(r"19", "It was 1970")
alice_in_wonderland = "Why, sometimes I've believed as many as six impossible things before breakfast."
m = match(r"(\w+)+", alice_in_wonderland)
m = match(r"(\w+)+", alice_in_wonderland, 6)
m = match(r"((\w+)(\s+|\W+))", alice_in_wonderland)
m.match
m.captures
m.offset
m.offsets
for m in eachmatch(r"((\w+)(\s+|\W+))", alice_in_wonderland)
   println(m)
end
collect(eachmatch(r"((\w+)(\s+|\W+))", alice_in_wonderland))
#"This $will error out"
raw"This $will work"
typeof(42)
@show Int
typemin(Int), typemax(Int)
typemin(Int) - 1
(typemin(Int) - 1) == typemax(Int)
BigInt(typemax(Int)) + 1
typemax(Int) + 1
1//2 + 2//4
Int(1//1)
float(1//3)
#Int(1//3)
float(1//3) == 1/3
true
a = 2
a *= 3 # equivalent of a = a * 3
a ^= 2 # equivalent of a = a ^ 2
a += 4 # equivalent of a = a + 4
10 > 5 < 6 == 6 >= 3 != 2
first_five_fib = [1, 1, 2, 3, 5]
first_five_fib .^ 2
first_five_fib
first_five_fib .^= 2
first_five_fib
(1,2,3)
("a", 4, 12.5)
(1,)
'e', 2
#1,
lang = ("Julia", v"1.0")
lang[2]
(3,4) .+ (1,1)
skills = (language = "Julia", experience = "Beginner", version = v"1.0")
skills.language
r = 1:20
abc = 'a':'z'
abc[10]
abc[end]
typeof(abc)
(1:20...,)
[1:20...]
(0:5:20...,)
typeof([1:20...])
(20:-5:-20...,)
(0.5:10)
(0.5:10...,)
collect(0.5:0.5:10)
[1, 2, 3]
Float32[1, 2, 3, 4]
[1 2 3 4]
[1 2 3; 4 5 6; 7 8 9]
#Vector(5)
Vector{5}
Array{Int,5}
zeros(Int, 2)
zeros(Float64, 3)
ones(2)
ones(Int, 2)
trues(2)
rand(Int, 4, 2)
rand(Char, 3, 2)
fill(42, 2, 3)
42ones(Int,2,3)
arr1d = rand(5)
arr1d[5]
arr2d = rand(5,2)
arr2d[4, 1]
arr2d = rand(5,5)
arr2d[1:3, 3:5]
arr2d[:, 3:5]
arr2d[[true, false, true, true, false], 3:5]
arr2d[1, 1] = 0.0
arr2d
arr2d[[true, false, true, true, false], 3:5] = ones(3, 3)
arr2d
for person in ["Alison", "James", "Cohen"]
    println("Hello $person")
end
people = ["Alison", "James", "Cohen"]
for i in eachindex(people)
    println("$i. $(people[i])")
end
arr = [1, 2, 3]
push!(arr, 4)
push!(arr, 5, 6, 7)
pop!(arr)
deleteat!(arr, 3)
arr = [1,2,3]
arr2 = arr
pop!(arr2)
arr2
arr
arr2 = copy(arr)
pop!(arr2)
arr
arr2
[x += 1 for x = 1:5]
Float64[x+=1 for x = 1:5]
[x+=y for x = 1:5, y = 11:15]
[x += 1 for x = 1:10 if x/2 > 3]
(x+=1 for x = 1:10)
typeof((x+=1 for x = 1:10))
print((x+=1 for x = 1:10))
for i in [x^3 for x=1:1_000_000]
   i >= 1_000 && break
   println(i)
end
@time for i in [x^3 for x=1:1_000_000]
   i >= 1_000 && break
   println(i)
end
@time for i in (x^3 for x=1:1_000_000)
   i >= 1_000 && break
   println(i)
end
