plot(NEE200704(:,1),NEE200704(:,2));
hold on;
plot(NEE200705(:,1),NEE200705(:,2));
plot(NEE200706(:,1),NEE200706(:,2));
plot(NEE200707(:,1),NEE200707(:,2));
plot(NEE200708(:,1),NEE200708(:,2));
plot(NEE200709(:,1),NEE200709(:,2));
plot(NEE200710(:,1),NEE200710(:,2));
legend('Apr','May','Jun','Jul','Aug','Sept','Oct');
title('Diurnal variation of 30 minutes averaged NEE at forest site (2007)');
xlabel('Local time (hours)');
ylabel('NEE 2007 (umol m^-2 s^-1)');
legend('location','southwest');
axis([0 24 -10 5]);

plot(NEE200804(:,1),NEE200804(:,2));
hold on;
plot(NEE200805(:,1),NEE200805(:,2));
plot(NEE200806(:,1),NEE200806(:,2));
plot(NEE200807(:,1),NEE200807(:,2));
plot(NEE200808(:,1),NEE200808(:,2));
plot(NEE200809(:,1),NEE200809(:,2));
plot(NEE200810(:,1),NEE200810(:,2));
legend('Apr','May','Jun','Jul','Aug','Sept','Oct');
title('Diurnal variation of 30 minutes averaged NEE at forest site (2008)');
xlabel('Local time (hours)');
ylabel('NEE 2008 (umol m^-2 s^-1)');
legend('location','southwest');
axis([0 24 -10 5]);

plot(NEE200904(:,1),NEE200904(:,2));
hold on;
plot(NEE200905(:,1),NEE200905(:,2));
plot(NEE200906(:,1),NEE200906(:,2));
plot(NEE200907(:,1),NEE200907(:,2));
plot(NEE200908(:,1),NEE200908(:,2));
plot(NEE200909(:,1),NEE200909(:,2));
plot(NEE200910(:,1),NEE200910(:,2));
legend('Apr','May','Jun','Jul','Aug','Sept','Oct');
title('Diurnal variation of 30 minutes averaged NEE at forest site (2009)');
xlabel('Local time (hours)');
ylabel('NEE 2009 (umol m^-2 s^-1)');
legend('location','southwest');
axis([0 24 -10 5]);

plot(NEE201004(:,1),NEE201004(:,2));
hold on;
plot(NEE201005(:,1),NEE201005(:,2));
plot(NEE201006(:,1),NEE201006(:,2));
plot(NEE201007(:,1),NEE201007(:,2));
plot(NEE201008(:,1),NEE201008(:,2));
plot(NEE201009(:,1),NEE201009(:,2));
plot(NEE201010(:,1),NEE201010(:,2));
legend('Apr','May','Jun','Jul','Aug','Sept','Oct');
title('Diurnal variation of 30 minutes averaged NEE at forest site (2010)');
xlabel('Local time (hours)');
ylabel('NEE 2010 (umol m^-2 s^-1)');
legend('location','southwest');
axis([0 24 -10 5]);

plot(NEE201104(:,1),NEE201104(:,2));
hold on;
plot(NEE201105(:,1),NEE201105(:,2));
plot(NEE201106(:,1),NEE201106(:,2));
plot(NEE201107(:,1),NEE201107(:,2));
plot(NEE201108(:,1),NEE201108(:,2));
plot(NEE201109(:,1),NEE201109(:,2));
plot(NEE201110(:,1),NEE201110(:,2));
legend('Apr','May','Jun','Jul','Aug','Sept','Oct');
title('Diurnal variation of 30 minutes averaged NEE at forest site (2011)');
xlabel('Local time (hours)');
ylabel('NEE 2011 (umol m^-2 s^-1)');
legend('location','southwest');
axis([0 24 -10 5]);

plot(NEE201204(:,1),NEE201204(:,2));
hold on;
plot(NEE201205(:,1),NEE201205(:,2));
plot(NEE201206(:,1),NEE201206(:,2));
plot(NEE201207(:,1),NEE201207(:,2));
plot(NEE201208(:,1),NEE201208(:,2));
plot(NEE201209(:,1),NEE201209(:,2));
legend('Apr','May','Jun','Jul','Aug','Sept');
title('Diurnal variation of 30 minutes averaged NEE at forest site (2012)');
xlabel('Local time (hours)');
ylabel('NEE 2012 (umol m^-2 s^-1)');
legend('location','southwest');
axis([0 24 -10 5]);

anT2007 = anT(F2007);
anT2008 = anT(F2008);
anT2009 = anT(F2009);
anT2010 = anT(F2010);
anT2011 = anT(F2011);
anT2012 = anT(F2012);
anTtotal = [anT2007;anT2008;anT2009;anT2010;anT2011;anT2012];
anTtotal_std = anTtotal(87:2093,:);
plot(anTtotal_std);
title('Daily averaged temperature of air and ground at forest site');
ylabel('Daily averaged T (C)');
xlabel('Day count since March 28, 2007; ends on Sept. 23, 2012 (DC = 2007)');
axis([0 2007]);
legend('Ta','Ts');
legend('location','southeast');

%daily PPFD annually
anPPFD2007 = anPPFD(F2007);
anPPFD2008 = anPPFD(F2008);
anPPFD2009 = anPPFD(F2009);
anPPFD2010 = anPPFD(F2010);
anPPFD2011 = anPPFD(F2011);
anPPFD2012 = anPPFD(F2012);
anPPFDtotal = [anPPFD2007;anPPFD2008;anPPFD2009;anPPFD2010;anPPFD2011;anPPFD2012];
anPPFDtotal_std = anPPFDtotal(87:2093,:);
plot(anPPFDtotal_std);
title('Daily 30-min-averaged photosynthetic photon flux density');
ylabel('Daily averaged PPFD (umol m-2 d-1)');
xlabel('Day count since March 28, 2007; ends on Sept. 23, 2012 (DC = 2007)');
axis([0 2007]);

%plot anTand NEE together
anNEEd2007 = anNEE(F2007);
anNEEd2008 = anNEE(F2008);
anNEEd2009 = anNEE(F2009);
anNEEd2010 = anNEE(F2010);
anNEEd2011 = anNEE(F2011);
anNEEd2012 = anNEE(F2012);
anNEEdtotal = [anNEEd2007;anNEEd2008;anNEEd2009;anNEEd2010;anNEEd2011;anNEEd2012];
anNEEdtotal_std = anNEEdtotal(87:2093,:);
bar(anNEEdtotal_std);
hold on;
plot (anTtotal_std);
axis([0 2007 -40 30]);
legend('NEE','Ta','Ts');
legend('location','southeast');
xlabel('Day count since March 28, 2007; ends on Sept. 23, 2012 (DC = 2007)');
ylabel('Daily averaged T (C) and NEE g C m-2 d-1');

%NEE of forest plot


plot(cu2008_gC(:,1),cu2008_gC(:,3),'linestyle','-','color','k');
hold on;
plot(cu2009_gC(:,1),cu2009_gC(:,3),'linestyle','-','color','green');
plot(cu2010_gC(:,1),cu2010_gC(:,3),'linestyle','-','color','b');
plot(cu2011_gC(:,1),cu2011_gC(:,3),'linestyle','-','color','red');
plot(cu2012_gC(:,1),cu2012_gC(:,3),'linestyle','-','color','Magenta');

plot(cu2008_gC(:,1),cu2008_gC(:,4),'linestyle','--','color','k');
plot(cu2009_gC(:,1),cu2009_gC(:,4),'linestyle','--','color','green');
plot(cu2010_gC(:,1),cu2010_gC(:,4),'linestyle','--','color','b');
plot(cu2011_gC(:,1),cu2011_gC(:,4),'linestyle','--','color','red');
plot(cu2012_gC(:,1),cu2012_gC(:,4),'linestyle','--','color','Magenta');

plot(cu2008_gC(:,1),cu2008_gC(:,2),'linestyle','-.','color','k');
hold on;
plot(cu2009_gC(:,1),cu2009_gC(:,2),'linestyle','-.','color','green');
plot(cu2010_gC(:,1),cu2010_gC(:,2),'linestyle','-.','color','b');
plot(cu2011_gC(:,1),cu2011_gC(:,2),'linestyle','-.','color','red');
plot(cu2012_gC(:,1),cu2012_gC(:,2),'linestyle','-.','color','Magenta');

legend('ER08','ER09','ER10','ER11','ER12','GEP08','GEP09','GEP10','GEP11','GEP12','NEE08','NEE09','NEE10','NEE11','NEE12');
title('Plot of annual cumulative ER and GEP of forest site (2008 ~ 2012)');
axis([0 366 -200 700]);
xlabel('Day of year');
ylabel('Cumulative ER GEP NEE g C m-2 d-1');
legend('location','northwestoutside');


plot(cu2008_gC(:,1),cu2008_gC(:,2),'linestyle','-.','color','k');
hold on;
plot(cu2009_gC(:,1),cu2009_gC(:,2),'linestyle','-.','color','green');
plot(cu2010_gC(:,1),cu2010_gC(:,2),'linestyle','-.','color','b');
plot(cu2011_gC(:,1),cu2011_gC(:,2),'linestyle','-.','color','red');
plot(cu2012_gC(:,1),cu2012_gC(:,2),'linestyle','-.','color','Magenta');

legend('NEE08','NEE09','NEE10','NEE11','NEE12');
title('Plot of annual cumulative NEE of forest site (2008 ~ 2012)');
axis([0 366 -200 700]);
xlabel('Day of year');
ylabel('Cumulative NEE g C m-2 d-1')
legend('location','southwest');


