i=0
while i == 0
    global i
    x=π
    i+=1
    println(i)
    println(x)
end
println(i)
#println(x) # gives error because it was stated local inside the while block


let state=0
    global counter
    counter() = state += 1
end
println(counter())
println(counter())
