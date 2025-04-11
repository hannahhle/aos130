%1

clear
load ROMS_21-Mar-2022.mat

%a

figure(1)
[lats_mesh, lons_mesh] = meshgrid(lat, lon);
contourf(lons_mesh, lats_mesh, sea_surf_temp, 30)
a = colorbar;
ylabel(a,'temperature (c)','FontSize', 10,'Rotation',270);
xlabel ('longitude')
ylabel ('latitude')
title ('sea surface temperature 3/21/22')

% cold surface waters are found on california's coastline due to upwelling.
% this process brings cold, nutrient rich water from the deep ocean up to
% the surface at the coastline.

%b
%need to add labels still
figure(2)
contourf(lons_mesh,lats_mesh, sea_surf_salt)
b = colorbar;
ylabel(b,'salinity (psu)','FontSize', 10,'Rotation',270);
xlabel ('longitude')
ylabel ('latitude')
title ('sea surface salinity 3/21/22')
axis([-121 -117 33 35])
clim([32.8 33.6])
gtext('Los Angeles', 'FontWeight', 'bold', 'HorizontalAlignment', 'center')
gtext('Point Dume', 'FontWeight', 'bold', 'HorizontalAlignment', 'center')
gtext('Santa Monica Bay', 'FontWeight', 'bold', 'HorizontalAlignment', 'center')
gtext('Catalina Island', 'FontWeight', 'bold', 'HorizontalAlignment', 'center')

%c

speed = sqrt((sea_surf_v).^2 + (sea_surf_u).^2);

figure(3)
pcolor(lons_mesh, lats_mesh, speed)
shading interp
c = colorbar;
ylabel(c,'speed (km/day)','FontSize', 10, 'Rotation',270);
xlabel ('longitude')
ylabel ('latitude')
title ('surface flow speed')

%d
%try subsampling
figure(4)
quiver(lons_mesh, lats_mesh, sea_surf_u, sea_surf_v)
xlabel ('longitude')
ylabel ('latitude')
title ('surface flow direction')
