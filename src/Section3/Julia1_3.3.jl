# julia1_3.2.jl Functions and Math Library
#
# A function is a block of code callable with
#    zero or more params that will return a result
# if the function's ops and functions are polymorphic then
#   the function can be also.
# two ways to define a functions (already defined)
function mul_add(x,y,z)
    return x*y+z   # no return necessary but recommended
end  # value of final expression returned if no return
# or as a one liner:
mul_add(x,y,z)=x*y+z
# if x,y and z matrices then uses
#  regular dot product row by column matrix mult followed by matrix add.
println(mul_add(10.0,22.22,7.8))

# Hadamard - element by corresponding element matrix
#   product below
muladde(x,y,z)=x.*y.+z # .* -> Xij*Yij ∀ i,j
x=[1 2; 3 4]
y=[1 2; 3 4]
z=100
mul_add(x,y,z)
muladde(x,y,z)
z=[10 20; 30 40]
mul_add(x,y,z)
muladde(x,y,z)
#
# returning multiple results as n-tuple
m3(a,b,c,m)=(a*m,b*m,c*m)
a=4.2
b=[1 2; 3 4]
c=13.1+2im
m=3
(x,y,z)=m3(a,b,c,m)
println("x=$x\n y=$y\n z=$z")
# Repeat with:
m=3//2
m=π*1im
m=[1 2; 3 4]

# functions narrow parameter types
function ∑(x) # yes, function names can use UTF-8 chars
    s=0
    for i=1:length(x)
        s+=x[i]
    end
    return s
end
x=1:100
println(∑(x))
x=[1.0 2; 3 4]
println(∑(x))
# the base function sum() does nearly the same thing so
# could have written ∑()=sum()

###


function formletter(name,letter)
    "Dear $name\n \n"*letter*
    "\nYour friendly local utility."
end
letter1="    We wish to inform you that a meteor
shower is due Tuesday at 8:00 PM so please
look for cover.\n"

print(formletter("Mr. Patel",letter1))

# Operators are functions
println(+(1,2,3,π)) #
⊻(true,true) # xor(true,true) ⊻ =Char(0x22bb)
(1>2) ⊻ (1<2)
true ⊻ false
true ⊻ true
false ⊻ false

false || false

ga = x -> Float64(x)*Float64(x)
gb(x) = Float64(x)^2
# map maps a function to each element of an array
v0 = map(ga, [1,2,3])
v=map(round,[1.5,3.3,2.7])
v=round.([1.5,3.3,2.7])
# MATH LIBRARY
# (these can take vectors and matrices if dot (.) appended
#   and operations are elementwise)
# abs abs2 angle cbrt
# airy airyai airyaiprime airybi airybiprime airyprime
# acos acosh asin asinh atan atan2 atanh
# acsc acsch asec asech acot acoth
# cos  cospi cosh  sin  sinpi sinh  tan  tanh  sinc  cosc
# csc  csch  sec  sech  cot  coth
# acosd asind atand asecd acscd acotd
# cosd  sind  tand  secd  cscd  cotd
# besselh besseli besselj besselj0 besselj1 besselk bessely bessely0 bessely1
# exp  erf  erfc  erfinv erfcinv exp2  expm1
# beta dawson digamma erfcx erfi
# exponent eta zeta gamma
# hankelh1 hankelh2
# ceil  floor  round  trunc
# isfinite isinf isnan
# lbeta lfact lgamma
# log log10 log1p log2
# sqrt hypot

# string library
# parse(Type,s,base=10) # interprets string as numbers
# base defaults to 10 if not specified
parse(Int,"21",base=5)
parse(Int,"1001101101101",base=2)
parse(Int,"FF",base=16)
# T is specified type
# s is string to be be parsed
# This is the basic string->number conversion routine.
st="12.34"
x=(parse(Float64,st))




# Plotting: both Gadfly and DataFrames comes
#  with the JuliaPro package
using Gadfly   # plotter frontend
using DataFrames
df=DataFrame(primes=[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71],
 febn=[1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765])
plot(df, x=:primes, y=:febn, Geom.point, Geom.line)

A = Matrix(df)
plot(A,x=Col.value(1),y=Col.value(2),Geom.point, Geom.line)

prim

# System Library
println(Sys.CPU_THREADS)
println(Sys.WORD_SIZE)
println(Sys.MACHINE)
# and many others

# Base math library
#base(base,n,pad) # convert an integer n to string
#    length pad, in base, leading zeros
println(base(5,16,4)) # base 5, int 16, pad to 4 digits
println(bits(255))    # converts to a binary string
#
