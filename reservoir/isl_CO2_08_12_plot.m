plot(CO2_08d,'color','k');
hold on;
plot(CO2_09d,'color','green');
plot(CO2_11d,'color','red');
plot(CO2_12d,'color','magenta');
xlabel('Day of year');
ylabel('Daily averaged CO2 flux g CO2 m-2 d-1');
title('Daily averaged CO2 flux at flooded site (2008, 2009, 2011, 2012)');
legend('F_C_O_208','F_C_O_209','F_C_O_211','F_C_O_212');
legend('location','northwest');
axis([0 366 -4 8]);


//separate anCO2d--------------------------------------------------------------
plot(CO2_08d,'color','k');
hold on;
xlabel('Day of year');
ylabel('Daily averaged CO2 flux g CO2 m-2 d-1');
title('Daily averaged CO2 flux at flooded site (2008)');
legend('F_C_O_208');
legend('location','northwest');
axis([0 366 -4 8]);

plot(CO2_09d,'color','green');
hold on;
xlabel('Day of year');
ylabel('Daily averaged CO2 flux g CO2 m-2 d-1');
title('Daily averaged CO2 flux at flooded site (2009)');
legend('F_C_O_209');
legend('location','northwest');
axis([0 366 -4 8]);

plot(CO2_11d,'color','red');
hold on;
xlabel('Day of year');
ylabel('Daily averaged CO2 flux g CO2 m-2 d-1');
title('Daily averaged CO2 flux at flooded site (2011)');
legend('F_C_O_211');
legend('location','northwest');
axis([0 366 -4 8]);

plot(CO2_12d,'color','magenta');
hold on;
xlabel('Day of year');
ylabel('Daily averaged CO2 flux g CO2 m-2 d-1');
title('Daily averaged CO2 flux at flooded site (2012)');
legend('F_C_O_212');
legend('location','northwest');
axis([0 366 -4 8]);
