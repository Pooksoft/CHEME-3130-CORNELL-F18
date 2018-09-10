# declare some global constants -
const R = 8.314e-3 # L MPa mol^{-1} K^{-1}
const eps = 0.02

function solve_vdw_newtons_method(T,Tcr,Pcr,v_ig,P_ig)
    
    # calculate the vdW parameters (using the critical data) -
    a = (27/64)*((R^2)*Tcr^2)/(Pcr)
    b = (1/8)*(R*Tcr)/(Pcr) - eps # JV hack ...

    # setup -
    v_best = v_ig
    P = P_ig
    
    # how many iterations?
    number_of_iterations = 100
    for iteration_index = 1:number_of_iterations
        
           
        # evaluate the function at this guess -
        F = evaluate_vdw(a,b,T,P,v_best)
        Fprime = estimate_derivative(a,b,T,P,v_best)
        
        # calculate next guess -
        v_best = v_best - (F)/(Fprime)
    end
    
    return v_best
end

function estimate_derivative(a,b,T,P,v)
    
    v_plus = v*1.01
    F_plus = evaluate_vdw(a,b,T,P,v_plus)
    F = evaluate_vdw(a,b,T,P,v)

    # forward difference approximation -
    F_derivative = (F_plus - F)/(v_plus - v)
    
    # return -
    return F_derivative
end

function evaluate_vdw(a,b,T,P,v_value)
    
    # calculate the terms -
    repulsion_term = (R*T)/((v_value) - b)
    attraction_term = a/((v_value + eps))^2 # JV hack ...
    
    # P estimate -
    F = P - (repulsion_term - attraction_term)
    
    return F
end

