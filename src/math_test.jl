#using Pkg
#ENV["PYTHON"]="D:/Deps/Miniconda3/python.exe"
#Pkg.build("PyCall")
#Pkg.build("PyPlot")

#use_intellij_backend()

using PyCall

plt = pyimport("matplotlib.pyplot")
math = pyimport("math")
math.sin(math.pi / 4)

x = range(0,stop=2*pi,length=1000);
y = sin.(3*x + 4*cos.(2*x));
plt.plot(x,y);
plt.show();