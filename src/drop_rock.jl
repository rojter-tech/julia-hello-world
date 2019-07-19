g = 9.8065
vs = 343.0
print("drop to Splash time: ")
st = readline();
t = parse(Float32,st)

td = (-vs + sqrt(vs^2 + 2.0*vs*t))/g
tu = t - td
depthu = vs*tu
println("depth $depthu meters\nsound time $tu seconds\n\n")

depthd = .5g*td^2
println("confirming depth $depthd meters\nfail time $td seconds")
