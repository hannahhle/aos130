clear
load AOS130Assignment2\SMBO_casts.mat
mycast = allcasts(58);

castDate = datestr(mycast.datetime, 'mm-dd-yyyy');

figure(1)
subplot(1,2,1)
plot(mycast.temperature, mycast.depth)
set(gca,'ydir','reverse')
title(['temperature vs depth on ', castDate])
yline(50, '--k', 'mixed layer depth');
gtext('thermocline', 'FontWeight', 'bold', 'HorizontalAlignment', 'center')
ylabel('depth (m)')
xlabel('temperature (C)')

subplot(1,2,2)
plot(mycast.salinity, mycast.depth)
set(gca,'ydir','reverse')
title(['salinity vs depth on ', castDate])
yline(50, '--k', 'mixed layer depth');
gtext('thermocline', 'FontWeight', 'bold', 'HorizontalAlignment', 'center')
ylabel('depth (m)')
xlabel('salinity (g/kg)')

figure(2)
plot(mycast.DIC, mycast.depth)
set(gca,'ydir','reverse')
title(['dissolved inorganic carbon vs depth on ', castDate])
yline(50, '--k', 'mixed layer depth');
gtext('thermocline', 'FontWeight', 'bold', 'HorizontalAlignment', 'center')
ylabel('depth (m)')
xlabel('dic (μmol/kg)')

figure(4)
plot(mycast.NO3, mycast.depth)
set(gca,'ydir','reverse')
title(['no3 vs depth on ', castDate])
yline(50, '--k', 'mixed layer depth');
gtext('thermocline', 'FontWeight', 'bold', 'HorizontalAlignment', 'center')
ylabel('depth (m)')
xlabel('no3 (μmol/kg)')

figure(5)
plot(mycast.PO4, mycast.depth)
set(gca,'ydir','reverse')
title(['po4 vs depth on ', castDate])
yline(50, '--k', 'mixed layer depth');
gtext('thermocline', 'FontWeight', 'bold', 'HorizontalAlignment', 'center')
ylabel('depth (m)')
xlabel('po4 (μmol/kg)')
