%2

clear
load CA_topog.mat

%a 
ca_max = max(elev, [], 'all');
ca_min = min(elev, [], 'all');

%b
% label shelf and slope

seafloor_sub = elev(:,900);
figure(4)
plot(lons, seafloor_sub)
xlabel ('longitude')
ylabel ('elevation')
title ('seafloor elevation')
% gtext('Continental Shelf', 'FontWeight', 'bold', 'HorizontalAlignment', 'center')
% gtext('Continental Slope', 'FontWeight', 'bold', 'HorizontalAlignment', 'center')

%c

figure(5)
[lats_mesh, lons_mesh] = meshgrid(lats, lons);
surf(lats_mesh, lons_mesh, elev)
shading interp
ylabel ('longitude')
xlabel ('latitude')
zlabel ('elevation')


