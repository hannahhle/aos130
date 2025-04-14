clear
load AOS130Assignment2/SMBO_gridded.mat

% 
% griddedContourPlot(datetime_grid,depth_grid, temperature_gridded,30)
% a = colorbar;
% ylabel(a, 'temperature (C)', Rotation=270)
% xlabel('time')
% ylabel('depth (m)')
% title('temperature vs. time')
% ylim([0 300])
% 
% griddedContourPlot(datetime_grid, depth_grid, salinity_gridded, 30)
% b = colorbar;
% ylabel(b, 'salinity (g/kg)', Rotation=270)
% xlabel('time')
% ylabel('depth (m)')
% title('salinity vs. time')
% ylim([0 300])
% 
% griddedContourPlot(datetime_grid, depth_grid, DIC_gridded, 30)
% c = colorbar;
% ylabel(c, 'DIC (μmol/kg))', Rotation=270)
% xlabel('time')
% ylabel('depth (m)')
% title('DIC vs. time')
% ylim([0 300])
% 
figure(1)
plot(datetime_grid, pCO2_gridded)
datetick('x', 'mmm yyyy', 'keeplimits')
xlabel('time')
ylabel('surface pCO2 (μatm)')
title('surface pCO2 vs time')
grid on

pCO2_gridded(pCO2_gridded < 0 | pCO2_gridded > 2000) = NaN;
avg_pCO2 = mean(pCO2_gridded, 2, 'omitnan');
figure(2);
plot(datetime_grid, avg_pCO2, 'b', 'LineWidth', 1.5);
datetick('x', 'mmm yyyy');
xlabel('time');
ylabel('average surface pCO2 (μatm)');
title('average surface pCO2 vs time');
grid on;
yline(380, '--r', 'atmospheric pCO2')