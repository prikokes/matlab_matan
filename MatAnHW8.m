%% Задача 1

f = str2sym('1/(1 + x)');
tf = taylor(f);
pretty(tf);

%% Задача 2

f = str2sym('1/(x + y)');
syms x y;
tf_x = taylor(f, x, 'Order', 7);
tf_y = taylor(f, y, 'Order', 7);
pretty(tf_x);
pretty(tf_y);

%% Задача 3

f = str2sym('x * sin(x)');
syms x;
tf_x = taylor(f, x, 2, 'Order', 10);
pretty(tf_x);

%% Задача 4

syms k x;
s1 = symsum(str2sym('(-1)^k/k^2'),k,1,Inf);
disp(s1);
s2 = symsum(str2sym('(-1)^k * x^(2*k+1)/ factorial(2*k+1)'), k, 0, Inf);
disp(s2);

%% Задача 5

syms n;
lim = limit((1/2) * (1-(1/3)^n), n, Inf);
if (lim ~= 0)
    disp('Расходится');
end

%% Задача 6

s1 = sumRow('(0.3)^n', 20);
s2 = sumRow('(1.5)^n', 5);
s3 = sumRow('1/n', 20);
s4 = sumRow('1/(n^(1/2))', 20);
s5 = sumRow('1/(n^2)', 20);
s6 = sumRow('1/(n^2+2*n)', 20);
disp(s1);
disp(s2);
disp(s3);
disp(s4);
disp(s5);
disp(s6);
