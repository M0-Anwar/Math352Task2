function [ result ] = AdamsBashforth (f, t0, tf, y1, h)
  
  t = [t0 :h: tf]; % vector t to represent the values of the independent variable 

  y = zeros(1, length(t)); % vector y to hold the values of y resulted for the euler method 

  % from the initial condition given in the problem y( t = 0 ) = 1
  y(1) = y1; 
  y(2) = y(1) + h * feval(f, t(1), y(1));;

  % ! euler formula is 
  % ! y_i+1 = y + f(x_i, y_i) * h

  for i = 1:length(t) - 2
    y(i + 2) = y(i + 1) + (3/2) * h * feval(f, t(i+1), y(i+1)) ...
              - (1/2) * h * feval(f, t(i), y(i));
  endfor
  
  result = y;

endfunction  % end of the function  