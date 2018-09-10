# includes -
using PyPlot

# Setup some constants -
R = 8.314 # J/mol-K

# Specify a range of T
T = range(173.15,stop = 373.15, length = 2) |> collect

# Simple plot of ideal gas behavior -
v = range(0.1, stop = 1.0, length = 60) |> collect

# compute the pressure, and plot -
for temperature in T

    # initalize empty P array -
    P_array = Array{Float64,1}()

    for specific_volume in v

        # compute the pressure -
        pressure = (R*temperature)/(specific_volume)

        # capture -
        push!(P_array,pressure)
    end

    # plot -
    plot(v,(1/1000).*P_array)
end

# label -
xlabel(L"Specific volume (mol m$^{-3}$)",fontsize=14)
ylabel("Pressure (kPa)",fontsize=14)
