#using Pkg
#ENV["PYTHON"]="D:/Deps/Miniconda3/python.exe"
#Pkg.build("PyCall")
#Pkg.build("PyPlot")
#use_intellij_backend()

#using PyCall
#using Plots, PyCall, PyPlot, Seaborn, PyCall
#using Seaborn
#sns = pyimport("seaborn")
using PyCall, PyPlot, Seaborn, Pkg
Pkg.add("Conda")
using Conda
pyimport("matplotlib")
pyimport("seaborn")
heatmap(rand(30,40))

#plt = pyimport("matplotlib.pyplot")
#theplot = plt.plot(x,y);
#theplot = plot(x,y);
#display(theplot)
#gui()
#plt.show()
