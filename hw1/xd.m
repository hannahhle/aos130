
clear
load ROMS_21-Mar-2022.mat

[lats_mesh, lons_mesh] = meshgrid(lat, lon);

skip = 20;

lats_sub = lats_mesh(1:skip:end, 1:skip:end);
lons_sub = lons_mesh(1:skip:end, 1:skip:end);
u_sub = sea_surf_u(1:skip:end, 1:skip:end);
v_sub = sea_surf_v(1:skip:end, 1:skip:end);

figure(4)
quiver(lons_sub, lats_sub, u_sub, v_sub)
xlabel ('longitude')
ylabel ('latitude')
title ('surface flow direction (subsampled)')
