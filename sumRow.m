function [sumrow] = sumRow(x, maxi)
    n = 1:maxi;
    f = subs(str2sym(x), 'n', n);
    [sumrow] = sum(f);
    figure; hold on; grid on;
    plot(n,f);
    hold off;
end
