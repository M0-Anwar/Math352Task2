function [ result ] = RungeKutta2 (f, t0, tf, y1, h)
  
  t = [t0 :h: tf]; % vector t to represent the values of the independent variable 

  y = zeros(1, length(t)); % vector y to hold the values of y resulted for the euler method 

  % from the initial condition given in the problem y( t = 0 ) = 1
  y(1) = y1; 

  % K₁ = f(xᵢ, yᵢ)  
  % K₂ = f(xᵢ + h, yᵢ + K₁h)  
  % yᵢ₊₁ = yᵢ + (h/2) * (K₁ + K₂) 

  for i = 1:length(t) - 1
    K1 = feval(f, t(i), y(i));
    K2 = feval(f, t(i)+h, y(i)+(K1*h));
    y(i+1) = y(i) + (h/2) * (K1 + K2);
  endfor
  
  result = y;
  
endfunction  % end of the function  