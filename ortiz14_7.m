%Tony Ortiz Rangel
%Rocket velocity using ode45
m = 1000;
c = 500;
fvals = [20000 40000 60000 80000];
tspan = [0 10];
v0 = 0;
figure
hold on
for k = 1:length(fvals)
    f = fvals(k);
    [t,v] = ode45(@(t,v) (f - c*v)/m,tspan,v0);
    plot(t,v,'LineWidth',2)
end
grid on
xlabel('Time (s)')
ylabel('Velocity (m/s)')
title('Rocket Velocity for Various Thrust Forces')
legend('f = 20000 N','f = 40000 N','f = 60000 N','f = 80000 N',location='southeast')