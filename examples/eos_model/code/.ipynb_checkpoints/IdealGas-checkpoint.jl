# includes -
using PyPlot

# Specify a range of T
T = range(173.15,stop = 373.15, length = 3) |> collect

# Simple plot of ideal gas behavior -
v = range(0.1, stop = 1.0, length = 10) |> collect
