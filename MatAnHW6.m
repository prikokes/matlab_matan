%% Задача 1

p1 = [1 1 0 0 1 3];
p2 = [1 2 1 -10];
disp(poly2sym(conv(p1, p2)))

%% Задача 2

p1 = [1 0 0 1 0 0 1 0 -1];
p2 = [1 0 2 -1];
[d, r] = deconv(p1, p2);
disp(poly2sym(d))

%% Задача 3

p1 = [1 0 1 1 -3 -2 -16 -1];
p2 = [1 0 -116 1];
[d, r] = deconv(p1, p2);
disp(poly2sym(r))

%% Задача 4

p1 = [1 0 0 1 4 2 3 0 1 3];
p2 = [0 0 0 0 3 0 0 2 -3 -9];
disp(poly2sym(p1 + p2));

%% Задача 5

p1 = [0 1 2 0 0 4 2 0 3 3];
p2 = [1 0 0 0 0 0 0 0 2 0];
disp(poly2sym(p1 - p2))

%% Задача 6

p1 = [2 3 0 1 -10 -1 1024];
disp(poly2sym(polyder(p1)));

%% Задача 7

x = [0.1 0.3 0.4 0.6 0.7 0.9 1.0 1.3 1.6 2.0];
y = [-3 -5 -2 -1 0 1 3.5 6 2.5 8];
p3 = polyfit(x, y, 3);
p4 = polyfit(x, y, 4);
p5 = polyfit(x, y, 5);
p6 = polyfit(x, y, 6);
p7 = polyfit(x, y, 7);

xi = x(1):0.02:x(end);

y3 = polyval(p3, xi);
y4 = polyval(p4, xi);
y5 = polyval(p5, xi);
y6 = polyval(p6, xi);
y7 = polyval(p7, xi);
figure; hold on; grid on;
plot(x, y);
plot(xi, y3);
plot(xi, y4);
plot(xi, y5);
plot(xi, y6);
plot(xi, y7);
legend('default function', 'deg p = 3', 'deg p = 4', 'deg p = 5', 'deg p = 6', 'deg p = 7');

hold off;

%% Задача 8

x = [0.1 0.3 0.4 0.6 0.7 0.9 1.0 1.3 1.6 2.0];
y = [-3 -5 -2 -1 0 1 3.5 6 2.5 8];
xi = x(1):0.01:x(10);

int1 = interp1(x, y, xi, "nearest");
int2 = interp1(x, y, xi, "linear");
int3 = interp1(x, y, xi, "spline");
int4 = interp1(x, y, xi, "pchip");

figure; grid on; hold on;
plot(x, y);
plot(xi, int1);
plot(xi, int2);
plot(xi, int3);
plot(xi, int4);
legend('default function', 'nearest', 'linear', 'spline', 'pchip');
hold off;

%% Задача 9

[x, y] = meshgrid(0:0.2:1);
z = sin(3 * pi * x).* sin(3 * pi * y) * exp(-x.^2 - y.^2);
[xi, yi] = meshgrid(0:0.02:1);
int1 = interp2(x, y, z, xi, yi, "nearest");
int2 = interp2(x, y, z, xi, yi, "linear");
int3 = interp2(x, y, z, xi, yi, "cubic");
int4 = interp2(x, y, z, xi, yi, "spline");

subplot(3, 2, 1);
title('default');
surfl(x, y, z);
view(30, 60);
subplot(3, 2, 2);
title('nearest');
surfl(xi, yi, int1);
view(30, 60);
subplot(3, 2, 3);
title('bilinear');
surfl(xi, yi, int2);
view(30, 60);
subplot(3, 2, 4);
title('bicubic');
surfl(xi, yi, int3);
view(30, 60);
subplot(3, 2, 5);
title('spline');
surfl(xi, yi, int4);
view(30, 60);