using Gadfly, RDatasets
set_default_plot_size(21cm, 16cm)

volcanodf = dataset("datasets", "volcano")

volcano = Matrix{Float64}(volcanodf)

p1 = plot(z=volcano, Geom.contour)
p2 = plot(z=volcano, Geom.contour(levels=[110.0, 150.0, 180.0, 190.0]))
p3 = plot(z=volcano, x=collect(0.0:10:860.0), y=collect(0.0:10:600.0),
          Geom.contour(levels=2))

Mv = volcano[1:4:end, 1:4:end]
Dv = vcat([DataFrame(x=[1:size(Mv,1);],
    y=j, z=Mv[:,j]) for j in 1:size(Mv,2)]...)
p4 = plot(Dv, x=:x, y=:y, z=:z, color=:z,
          Coord.cartesian(xmin=1, xmax=22, ymin=1, ymax=16),
          Geom.point, Geom.contour(levels=10),
          style(line_width=0.5mm, point_size=0.2mm) )

gridstack([p1 p2; p3 p4])
