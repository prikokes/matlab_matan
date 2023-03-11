function g = myfun1(x)
    % Calculates value of exp(-x)*sqrt((x^2+1)/(x^4+0.2)).
    g = exp(-x).*sqrt((x.^2+1)./(x.^4+0.2));
end