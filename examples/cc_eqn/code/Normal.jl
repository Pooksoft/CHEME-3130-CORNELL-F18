function solve_normal_equations(data_array)

    # what is the size of the data array?
    (number_of_rows,number_of_cols) = size(data_array)

    # initalize -
    X = zeros(number_of_rows,2)
    bV = zeros(number_of_rows,1)

    # fill X -
    for row_index = 1:number_of_rows

        # convert T -
        TK = data_array[row_index,1]+273.15

        # fill in X and bV -
        X[row_index,1] = 1/TK
        X[row_index,2] = 1
        bV[row_index,1] = log(data_array[row_index,2])
    end

    # Solve -
    XT = transpose(X)
    theta_vector = inv(XT*X)*XT*bV

    # return -
    return theta_vector
end

function compute_model(theta_vector,data_array)

    # what is the size of the data array?
    (number_of_rows,number_of_cols) = size(data_array)

    # initialize -
    y_model = Float64[]
    T_model = Float64[]

    # compute the y_model -
    for row_index = 1:number_of_rows

        # convert T -
        TK = data_array[row_index,1]+273.15

        # compute the y -
        tmp_value = theta_vector[1]*(1/TK) + theta_vector[2]

        # cache -
        push!(y_model,tmp_value)
        push!(T_model,1/TK)
    end

    # return -
    return (T_model,y_model)
end
