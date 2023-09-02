% 693 PS1-1.1
x1 = 0:0.002:1;
f = x1 .^ 6 .* (1-x1) .^ 6;
trapz(x1,f);
density2 = x1 .^6 .* (1 - x1) .^6 ./trapz(x1,f);
figure;
plot(x1,density2);
hold on;

pd1 = makedist('Uniform');
density_uniform = pdf(pd1,x1);
plot(x1,density_uniform);
legend('Posterior','Prior');
ylabel('Density');
hold off;

% 693 PS1-1.2
x2 = 0:0.002:1;
density_beta = betapdf(x2,22,10);
figure;
plot(x2,density_beta);
hold on;

y2 = betapdf(x2,16,4);
plot(x2,y2);
legend('Posterior','Prior','Location','northwest');
ylabel('Density');
hold off; 

% 693 PS1-3.2
load systolic_reg.txt
BMI_DATA = [21.96712 34.92768 23.5078 28.71048 23.01118 29.38468 37.72972 29.98359 28.44095 25.28257 28.01022 20.04745 22.03857 31.24499 28.99789 37.8583 25.95156 20.83 28.67263 21.33821 31.23941 27.99302 36.05191 18.49113 23.52941]
BMI = sum(BMI_DATA,"all")

x3 = linspace(0.001,0.15,100);
beta = (30+BMI)
y3 = gampdf(x3,26,1/beta)
figure;
plot(x3,y3);
hold on;

pdf3 = exppdf(x3, 1/30);
plot(x3,pdf3);
legend('Posterior','Prior');
ylabel('Density');
hold off; 

% 693 PS1-3.3
x4 = linspace(0,50,500);
y4 = 26 .* (30 + BMI) ^ 26 ./ (x4 + 30 + BMI) .^ 27
plot(x4,y4);

hist(BMI_DATA)

