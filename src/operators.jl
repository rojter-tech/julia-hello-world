# Operators are determined by the context in which they are used (polymorphism)
#
# Elementary Math functions work for:
#
# Integers
# Floating Points
# Complex
# Rationals
A = [1 2 3; 4 5 6]
B = [3 7; 5 9; 8 2]

AB = A*B
BA = B*A

a = 2//3 + 3.4*π/ℯ
b = (3//4)^2 - 55\5
V = [1, 2, 3]
v = 3V

M = [1 2; 3 4]
Y = 3M

Z1 = M/3
Z2 = 3M
W1=(3+3im)\M
W2=(3+3im)W1

i = 0
i+=1
M*=2
M.-=1
M*=2.0

M.+=M

real(1+2im)
imag(1+2im)
conj(1+2im)

im1 = ℯ^(2π*im)
im2 = ℯ^(4π*im)

sqrt(Complex(-1))

println(ceil(4.3))
println(round(4.3))
println(floor(4.3))
println(hypot(4,3))
println(cbrt(27))
