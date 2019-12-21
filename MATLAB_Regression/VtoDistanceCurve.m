close all;

plot (Distance, Voltage, '-o')
xlim([3.3, 40]);
title('GP2Y0A41SK0F Voltage to Distance Conversion');
xlabel('Distance to Relative Object (cm)');
ylabel('Analog Voltage Output (V)');

%Fit a polynomial on the given training data
p = polyfit(Voltage, Distance, 7);


allVoltages = 0:0.001:4.096;
pp = polyval(p, allVoltages);

hold on;
plot(pp, allVoltages)


pp = pp';