close all;

plot (Distance, Voltage, '-o')
xlim([0, 4]);
title('GP2Y0A41SK0F Voltage to Distance Conversion');
xlabel('Distance to Relative Object (cm)');
ylabel('Analog Voltage Output (V)');

%Fit a polynomial on the given training data
p = polyfit(Voltage, Distance, 3);


allVoltages = 0:0.001:4.096;
pp = polyval(p, allVoltages);

hold on;
plot(pp, allVoltages)


pp = pp';