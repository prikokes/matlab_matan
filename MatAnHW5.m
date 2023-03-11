%%  Задача 1

figure; grid on;
x = 0:0.05:5;
y = myfun1(x);
plot(x, y);

%% Задача 2 

figure; grid on; hold on;
x = 0:0.05:5;
y = myfun1(x);
fplot(@myfun1, [0 5], '*');
plot(x, y);
hold off;
help myfun1
lookfor myfun1

%% Задача 3

arr = input('Enter array: ');
disp(sumEvenIndex(arr));

%% Задача 4

figure; grid on; hold on;
fplot(@myfun2, [-5 5]);
x1 = fzero(@myfun2, [-5 -3]);
x2 = fzero(@myfun2, [-3 0]);
x3 = fzero(@myfun2, [0 3]);
x4 = fzero(@myfun2, [3 5]);
disp(x1);
disp(x2);
disp(x3);
disp(x4);

%% Задача 5

p = [1 3 1 -10 1024];
disp(roots(p));

%% Задача 6

y = inline('exp(x.^2)+sin(3 * pi * x)');
syms x;
figure; grid on; hold on;
fplot(y(x), [0 5]);
hold off;
disp('cringe')
[x1, y1] = fminbnd(y, 0, 1);
disp(x1)
disp(y1)
[x2, y2] = fminbnd(y, 1, 2);
disp(x2)
disp(y2)
[x3, y3] = fminbnd(y, 2, 3);
disp(x3)
disp(y3)
[x4, y4] = fminbnd(y, 3, 4);
disp(x4)
disp(y4)
[x5, y5] = fminbnd(y, 4, 5);
disp(x5)
disp(y5)

%% Задача 7

y = @(x) x.^2 + 1;
syms x;
figure; grid on; hold on;
fplot(y(x), [-10 10]);
hold off;
[x1, y1] = fminbnd(y, -10, 10);
disp(x1)
disp(y1)

%% Задача 8

[x, y] = meshgrid(0:0.01:2);
f = sin(pi * x) .* sin(pi * y);
[a, b] = contour(x, y, f, [-0.96, -0.9, -0.8, -0.5, -0.1, ...
    0.1, 0.5, 0.8, 0.9, 0.96]);
clabel(a, b);
locmin1 = fminsearch(@sem_5_problem_8, [0, 1]);
disp(locmin1)
locmin2 = fminsearch(@sem_5_problem_8, [1, 2]);
disp(locmin2)
locmin3 = fminsearch(@sem_5_problem_8, [2, 1]);
disp(locmin3)
locmin4 = fminsearch(@sem_5_problem_8, [1, 0]);
disp(locmin4)
figure; grid on; hold on;
surf(x, y, f);
view(30, 60);
