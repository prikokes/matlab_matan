%% Задание 1

figure;
t = 0:0.01:100;
x = exp(-abs(t - 100)/100) .* sin(t);
y = exp(-abs(t - 100)/100) .* cos(t);
z = t .* ones(size(t));
plot3(x, y, z, "Color", "red", "LineWidth", 4);
view(45, 45)

%% Задание 2

figure;
[u, v] = meshgrid(-4 * pi:0.1 * pi: 4 * pi);
x = 0.5 * u .* cos(v);
y = 0.5 * u .* sin(v);
z = u .* ones(size(v));
mesh(x, y, z);
view(45, 45);

%% Задание 3

figure;
[u, v] = meshgrid(-2 * pi:0.1 * pi:2 * pi);
x = cos(u) .* cos(v);
y = 0.6 * cos(u) .* sin(v);
z = 0.8 * sin(u) .* ones(size(v));
mesh(x, y, z);
hidden off;

%% Задание 4

fign = figure;
fign2 = figure;
fign3 = figure;
figure(fign)
t = 0:0.2:2;
x = 0.5 * t;
y = 0.8 * t .* (1 - 0.5 * t);
ux(1:length(x)) = 0.5;
uy = 0.8 * (1 - t);
quiver(x, y, ux, uy, 0);
figure(fign2)
quiver(x, y, ux, uy, 1.5);
figure(fign3)
quiver(x, y, ux, uy, 0.3);

%% Задание 5

figure(fign)

%% Заданиие 6

figure;
compass(ux, uy);

%% Задание 7
figure;
feather(ux, uy);

%% Задание 8

figure;
[u, v] = meshgrid(-pi:pi / 15:pi);
x = 2 * sin(u) .* cos(v);
y = 2 * sin(u) .* sin(v);
z = 2 * cos(u) .* ones(size(v));
surf(x, y, z);
view(45, 45);
axis equal;
[u, v, w] = surfnorm(x, y, z);
hold on;
quiver3(x, y, z, u, v, w, 4, 'k');

%% Задание 9

figure;
[x, y] = meshgrid(-10:0.1:10);
a = 2;
b = 2;
z = (x.^2 / a^2 + y.^2 / b^2) / 2;
surf(x, y, z);
view(45, 45);
axis equal;

%% Задание 10

figure;
[x, y] = meshgrid(-10:0.1:10);
a = 1;
b = 1;
c = 1;
z = sqrt(c^2 * (x.^2 / a^2 + y.^2 / b^2 + 1));
surf(x, y, z);
view(45, 45);
axis equal;

%% Задание 11

figure;
[u, v] = meshgrid(0:0.1:3);
x = cos(u) .* cos(v);
y = sin(u) .* sin(v);
z = u .* v;
surf(x, y, z);

%% Задание 12

xL = 1; xR = 3;
yL = -1; yR = 1;
zL = 0; zR = 2;
[x, y, z] = meshgrid(xL:0.05:xR, yL:0.05:yR, zL:0.05:zR);
u = x./sqrt(x.^2 + y.^2 + z.^2);
v = y./sqrt(x.^2 + y.^2 + z.^2);
w = z./sqrt(x.^2 + y.^2 + z.^2);

[Cx, Cy, Cz] = meshgrid(xL:(xR - xL)/3:xR, yL:(yR - yL)/3:yR, zL:(zR - zL)/3:zR);
figure;
hC = coneplot(x, y, z, u, v, w, Cx, Cy, Cz, 4);
set(hC, "FaceColor", 'g', "EdgeColor", "none")
light;
axis tight;
xlabel("x");
ylabel("y");
zlabel("z");
view(31,28);