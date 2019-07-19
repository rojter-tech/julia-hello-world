#Diffrent types in Julia
a = 3
println("a is ", typeof(a))
b = [1 2; 3 4]
println("b is ", typeof(b))
c = "pea"
println("c is ", typeof(c))
println("Before: $a, $b, $c")


# Shuffling
a,b,c = b,c,a
a,b,c = b,a,c
println("After: $a, $b, $c")
