%% Задание 1

x0 = [1 0];
options = optimset("Display", "iter");
[x1] = fsolve(@syst_1, x0, options);
disp(x1);
x0 = [0 0 0];
[x2] = fsolve(@syst_2, x0, options);
disp(x2);
%% Задание 2

syms x;
disp(limit((10 + x)^(1/x), x, 0, "right"));
disp(limit((10 + x)^(1/x), x, 0, "left"));

%% Задание 3

syms x;
disp("С помощью встроенной функции:")
disp(diff(atan(x), x, 1));
disp("По определению:")
syms dx;
disp(limit((atan(x + dx) - atan(x)) / dx, dx, 0))

%% Задание 4

syms x;
disp(limit((9 * x^2 - 1) / (x + 1 / 3), x, -1 / 3));

%% Задание 5

syms x;
disp(diff((3 * cos(5 * x^2)) ^ 3, x, 1));

%% Задание 6
syms x;
syms y;
syms z;
disp(diff(sin(x + 2 * y) + 2 * sqrt(x * y * z), x, 2));
disp(diff(log(3 - x^2) + x * y^2 * z, x, 2));
disp(diff(x^2 - atan(y + z^3), x, 2));
disp(diff(x^3 * y^2 * z + 3 * x - 5 * y + z + 2, x, 2));

%% Задание 7

syms x;
disp(limit(sin(x) / x, x, 0));
disp(limit((1 - exp(-x)) / x, x, Inf));
disp(limit((1 - x) / log(x), x, 1));

%% Задание 8

disp(diff((x^2) * cos(2 * x), x, 6));

%% Задание 9

disp(limit(1 - exp(-x) / x, x, Inf));

%% Задание 10

syms a;
syms n;
disp(diff(exp(-a * x^5) + log(a^n + x^a) - a * n / x^ 3, x, 2));

%% Функции для первой задачи

function F = syst_1(x)
    F(1) = x(1)^2 - 2 * x(2)^2 + 1;
    F(2) = -3 * x(1)^2 + x(2)^2 + 2;
    F(3) = x(1)^3 + x(2)^3 - 2;
end
function F = syst_2(x)
    F(1) = x(1)^2 - 2 * x(2)^2 + x(3) + 1;
    F(2) = -3 * x(1)^2 + x(2)^2 + x(3) + 2;
end