#using Pkg
#Pkg.add("RDatasets")
using RDatasets

RDatasets.datasets()
iris = dataset("datasets", "iris")
names(iris)
size(iris)
first(iris)
last(iris)
by(iris, :Species, nrow)
describe(iris)
describe(iris, stats=[:q25, :q75, :first, :last])
describe(iris, stats=:all)

using Statistics

mean(iris[:SepalLength])
typeof(iris)
median(iris[:SepalLength])
std(iris[:SepalLength])

for x in names(iris)[1:end-1]
	    for y in names(iris)[1:end-1]
	      println("$x \t $y \t $(cor(iris[x], iris[y]))")
	    end
	    println("-------------------------------------------")
	  end

for x in names(iris)[1:end-1]
         for y in names(iris)[1:end-1]
           println("$x \t $y \t $(cov(iris[x], iris[y]))")
         end
         println("--------------------------------------------")
       end

rand(iris[:SepalLength])
rand(iris[:SepalLength], 5)
sepallength = Array(iris[:SepalLength])
irisarr = convert(Array, iris[:,:])

#Pkg.add("Compose")
#Pkg.add("Gadfly")
#Pkg.add("Hexagons")
#Pkg.add("Gadfly")
using Gadfly

plot(iris, x=:SepalLength, y=:PetalLength, color=:Species)
plot(iris, x=:Species, y=:PetalLength, Geom.boxplot)
plot(iris, x=:PetalLength, color=:Species, Geom.histogram)
plot(iris, x=:PetalWidth, color=:Species, Geom.histogram)
plot(iris, x=:PetalWidth, y=:PetalLength, color=:Species)
iris[1:3, [:PetalLength, :PetalWidth]]
iris[trues(150), [:PetalLength, :PetalWidth]]
test_data = iris[rand(150) .<= 0.1, [:PetalLength, :PetalWidth, :Species]]

#Pkg.add("CSV")
using CSV

CSV.write("test_data.csv", test_data)
#Pkg.add("Feather")
using Feather

Feather.write("test_data.feather", test_data)
Feather.read("test_data.feather")
