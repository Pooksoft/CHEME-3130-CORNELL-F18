# declare some global constants -
const R = 8.314e-2 # L bar mol^{-1} K^{-1}

# Julia code to solve the vdW and PR models for a working fluid
function calculate_vdW_isotherm(T,v,TCR,PCR,eps)    
    
    # from the critical values, calculate a and b -
    a = (27/64)*((R^2)*TCR^2)/(PCR)
    b = (1/8)*(R*TCR)/(PCR) - eps # JV hack ...
    
    # calculate the P -
    P_array = Float64[]
    for v_value in v
        
        # calculate the terms -
        repulsion_term = (R*T)/((v_value) - b)
        attraction_term = a/((v_value + eps))^2 # JV hack ...
    
        # P estimate -
        P = (repulsion_term - attraction_term)
        
        # cache -
        push!(P_array,P)
    end
    
    # return the pressure array -
    return P_array
end


function calculate_PR_isotherm(T,v,w,TCR,PCR)
end
