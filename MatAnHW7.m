%%  Задача 1
f = @(x) sin(x) - (x.^3) .* cos(x);
disp(integral(f, -4, 0, 'AbsTol', 1.0e-05));

%% Задача 2

f = @(x) x.^3 + 1;
disp(integral(f, 2, 5));

%% Задача 3

f = @(x, y) exp(-x) .* sin(y);
disp(integral2(f, -pi, pi, 0, 1))
disp(dblquad(f, -pi, pi, 0, 1))

%% Задача 4

z = @(x, y) sin(x) .* sin(y) .* (1 - x.^2) .* x .* (1 - y);
disp(integral2(z, -2, 2, -2, 2));
[x, y] = meshgrid(-2:0.1:2);
z = sin(x) .* sin(y) .* (1 - x.^2) .* x .* (1 - y);
figure; grid on; hold on;
surfl(x, y, z);
view(0, 2)

%% Задача 5

f = @(x, y, z) exp(-x) .* sin(y) .* cos(z);
disp(integral3(f, -pi, pi, -2 * pi, pi, 0, 2));
disp(triplequad('exp(-x) .* sin(y) .* cos(z)', -pi, pi, -2 * pi, pi, 0, 2));

%% Задача 6

f = @(x, y, z) exp(x).*(sin(y).^2)+exp(-x).*(cos(y).^2)+sin(y).*cos(x).*z;
disp(integral3(f, -2 * pi, 2 * pi, -2 * pi, 2 * pi, -1, 1));
disp(triplequad('exp(x).*(sin(y).^2)+exp(-x).*(cos(y).^2)+sin(y).*cos(x).*z', ...
    -2 * pi, 2 * pi, -2 * pi, 2 * pi, -1, 1));

%% Задача 7

f = @(x) 1./ x;
disp(quad(f, 0, 1));
disp(quadl(f, 0, 1));
disp(quadgk(f, 0, 1));

%% Задача 8

f = @(x, y, a, b) a * cos(x) .* (x.^2) + b .* sin(y) .* (y.^2);
disp(integral2(@(x, y) f(x, y, 20, 7), -2, 2, -2, 2));

%% Задача 9

f = inline('a * (x.^2) + x + 1');
disp(quad(@(x) f(x, 3), 0, 10));

%% Задача 10

f = @(x) exp(x) .* (sin(x) - cos(x));
g = @(y) quadl(f, 0, y);
figure; grid on; hold on;
fplot(g, [0, pi]);
hold off;

%% Задача 11

f = @(x) cos(x - sqrt(2)).*exp(2 * sin(x)) - 1;
x1 = fzero(f, [0, 2]);
x2 = fzero(f, [2, 4]);
disp(x1)
disp(x2)
disp(integral(f, x1, x2));

%% Задача 12

f = @(x) sin(x) - (x.^2) .* cos(x);
syms x;
dif = matlabFunction(diff(sin(x) - (x.^2) .* cos(x)));
locextr1 = fzero(dif, [-5 -2.5]);
locextr2 = fzero(dif, [-2.5, 0]);
disp(integral(f, locextr1, locextr2));
figure; grid on; hold on;
fplot(f, [-5 0]);
hold off;