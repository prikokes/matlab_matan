%% Задание 1

figure;
grid on, hold on;
x = -2:0.01:2;
y = exp(-x) .* sin(10 * x);
plot(x, y, "Color", "red", "LineWidth", 4);
hold off;

%% Задание 2

figure;
grid on, hold on;
x = 0:0.001:5;
y = exp(-x) .* sin(10 * x);
area(x, y);
comet(x, y);
z = x;
comet3(x, y, z, 0.9);
view(-58, -53);
hold off;

%% Задание 3

figure;
grid on, axis on, hold on;
pie3([25, 10, 20, 35, 10], [0, 1, 0, 0, 1]);
view(58, 26);
hold off;

%% Задание 4

figure;
x = 0:0.01:1;
y = exp(-x) .* (sin(x) + 0.1 * sin(100 * pi * x));
hold on;
plot(x, y, "Color", "red");
x = 0:1/99:1;
y = exp(-x) .* (sin(x) + 0.1 * sin(100 * pi * x));
plot(x, y, "Color", "green");
hold off;

%% Задание 5

figure;
x = 0:0.01:10;
f = log(2 * x);
g = log(x) .* sin(2 * x);

subplot(1, 3, 1);
loglog(x, f, "Color", "red", "LineWidth", 4);
hold on; grid on;
loglog(x, g, "Color", "blue", "LineWidth", 4);
title("loglog");
xlabel("x");
ylabel("y");
legend("log(2 * x)", "log(x) .* sin(2 * x)", location="northwest");

subplot(1, 3, 2);
x = 0:0.01:10;
f = log(2 * x);
g = log(x) .* sin(2 * x);
semilogx(x, f, "Color", "red", "LineWidth", 4);
hold on; grid on;
semilogx(x, g, "Color", "blue", "LineWidth", 4);
title("semilogx");
xlabel("x");
ylabel("y");
legend("log(2 * x)", "log(x) * sin(2 * x)", location="northwest");

subplot(1, 3, 3);
x = 0:0.01:10;
f = log(2 * x);
g = log(x) .* sin(2 * x);
semilogy(x, f, "Color", "red", "LineWidth", 4);
hold on; grid on;
semilogy(x, g, "Color", "blue", "LineWidth", 4);
title("semilogy");
xlabel("x");
ylabel("y");
legend("log(2 * x)", "log(x) * sin(2 * x)", location="northwest");

%% Задание 6

figure;
t = -pi:0.01:pi;
x = 2 * sin(t);
y = 4 * cos(t);
plot(x, y, "Color", "red", "LineWidth", 4);
view(45, 45);

%% Задание 7

figure;
[x, y] = meshgrid(-3:0.05:3);
z = 4 * sin(2 * pi * x) .* cos(1.5 * pi * y) .* (1 - x.^2) .* y .* (1 - x);
surf(x, y, z);
view(45, 45);
hidden on;

%% Задание 8

figure;

contour3(x, y, z, -3:0.01:3);
axis([-3 3 -3 3 -3 3]);
colorbar();
view(45, 45);
hidden on;

%% Задание 9

figure;
surfl(x, y, z, [-60, 45]);
view(45, 45);

%% Задание 10

figure;

[x, y] = meshgrid(-1:0.01:1);
z = (sin(x).^2 + cos(y).^2).^(x .* y);

subplot(2, 2, 1);
mesh(x,y,z);
view(45, 45);

subplot(2, 2, 2);
surf(x,y,z);
view(30, 30);
shading interp;

subplot(2, 2, 3);
contour3(x, y, z, -1:0.01:2);
view(60, 60);

subplot(2, 2, 4);
surfl(x, y, z, [-60, 45]);
view(40, 40);