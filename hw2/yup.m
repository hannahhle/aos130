clear
load AOS130Assignment2\SMBO_named.mat

% makeTSplot(salinity,temperature, depth, 10)
% title('temperature - salinity diagram')
% xlabel('salinity (g/kg)')
% ylabel('temperature (C)')
% 
% figure(1)
% subplot(1,2,1)
% scatter(temperature, DIC, 6, depth)
% a = colorbar;
% ylabel(a, 'depth (m)', 'Rotation', 270, FontSize=11)
% title('DIC vs temperature (colored by depth)')
% xlabel('temperature (C)')
% ylabel('DIC (μmol/kg)')
% 
% subplot(1,2,2)
% scatter(depth, DIC, 6, temperature)
% colorbar
% b = colorbar;
% ylabel(b, 'temperature (C)', 'Rotation', 270, FontSize=11)
% title('DIC vs depth (colored by temperature)')
% xlabel('depth (m)')
% ylabel('DIC (μmol/kg)')

% figure(1)
% subplot(1,2,1)
% scatter(temperature, NO3, 6, depth)
% a = colorbar;
% ylabel(a, 'depth (m)', 'Rotation', 270, FontSize=11)
% title('NO3 vs temperature (colored by depth)')
% xlabel('temperature (C)')
% ylabel('NO3 (μmol/kg)')
% 
% subplot(1,2,2)
% scatter(depth, NO3, 6, temperature)
% colorbar
% b = colorbar;
% ylabel(b, 'temperature (C)', 'Rotation', 270, FontSize=11)
% title('NO3 vs depth (colored by temperature)')
% xlabel('depth (m)')
% ylabel('NO3 (μmol/kg)')

% figure(1)
% subplot(1,2,1)
% scatter(temperature, PO4, 6, depth)
% a = colorbar;
% ylabel(a, 'depth (m)', 'Rotation', 270, FontSize=11)
% title('PO4 vs temperature (colored by depth)')
% xlabel('temperature (C)')
% ylabel('PO4 (μmol/kg)')
% 
% subplot(1,2,2)
% scatter(depth, PO4, 6, temperature)
% colorbar
% b = colorbar;
% ylabel(b, 'temperature (C)', 'Rotation', 270, FontSize=11)
% title('PO4 vs depth (colored by temperature)')
% xlabel('depth (m)')
% ylabel('PO4 (μmol/kg)')
% 
% figure(1)
% subplot(1,2,1)
% scatter(NO3, depth, 6)
% set(gca,'ydir','reverse')
% ylim([0 150])
% title('NO3 concentration (surface)', FontSize=18)
% ylabel('depth (m)')
% xlabel('NO3 (μmol/kg)')
% 
% subplot(1,2,2)
% scatter(PO4, depth, 6)
% set(gca,'ydir','reverse')
% ylim([0 150])
% title('PO4 concentration (surface)', FontSize=18)
% ylabel('depth (m)')
% xlabel('PO4 (μmol/kg)')


CtoP = DIC ./ PO4;     % Should be around 106
NtoP = NO3 ./ PO4;     % Should be around 16
CtoN = DIC ./ NO3;     % Should be around 6.625


figure(1)
subplot(1,3,1)
scatter(CtoN, depth, 6, 'filled')
xline(6.625, '--r', 'expected redfield')
xlabel('C:N'); ylabel('depth (m)')
set(gca, 'YDir', 'reverse')
xlim([0 200])
title('C:N', FontWeight='bold')

subplot(1,3,2)
scatter(NtoP, depth, 6, 'filled')
xline(16, '--r', 'expected redfield')
xlabel('N:P'); ylabel('depth (m)')
set(gca, 'YDir', 'reverse')
title('N:P', FontWeight='bold')

subplot(1,3,3)
scatter(CtoP, depth, 6, 'filled')
xline(106, '--r', 'expected redfield')
xlabel('C:P'); ylabel('depth (m)')
set(gca, 'YDir', 'reverse')
xlim([0 2000])
title('C:P', FontWeight='bold')

