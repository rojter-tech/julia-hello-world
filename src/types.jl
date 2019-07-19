# Primitive, Abstract and Composit Types

# Integers

println(Int8(127))
println(UInt8(255))
println(Int16(32767))
println(UInt16(65535))
println(Int32(2147483647))
println(UInt32(4294067295))
println(Int64(9223372036854775807))
println(UInt64(18446744073709551615))

println(Int128(2)^127-1)
println(UInt128(2)^128-1)
println(BigInt(2)^2046-1)

# Floats

println(Float16(π))
println(Float32(π))
println(Float64(π))
println(BigFloat(π))

precision(BigFloat)
println(π)
BigFloat(π)
BigFloat(π,500)


# Complex numbers

println(Complex{Float16}(π + 2π*im))
println(Complex{Float32}(π + 2π*im))
println(Complex{Float64}(π + 2π*im))

println(ComplexF16(3.1 + 3.2im))
println(ComplexF32(3.1 + 3.2im))
println(ComplexF64(3.1 + 3.2im))
println(Complex(3.1 + 3.2im))


# Rational numbers

a = 1//3 + 2//5 - 3//7
b = (22//7)*(5//13)
c = ((22//7)/2)^2

print("a=$a, b=$b, c=$c")

println(Rational(3.875))
println(Rational(3.825))
println(BigFloat(3.825))
println(BigFloat(3825/1000))
