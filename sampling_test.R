# uniform points from the boundary of a 3-dimensional random H-polytope
P = gen_rand_hpoly(3,17)
points = sample_points(P, random_walk = list("walk" = "BRDHR"), n = 10000)

# visualization
p.data <- data.frame(
  x = c(points[1,],points[1,]),
  y = c(points[2,],points[2,]),
  z = c(points[3,],points[3,])
)
plot_ly(p.data, x = ~x, y = ~y, z = ~z,marker=list(size=1),colors = c('#BF382A'))
