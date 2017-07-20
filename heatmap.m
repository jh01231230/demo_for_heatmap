% Load the file
img = imread('temperature.png');
heat_map = zeros(600,800);

% Assign values to the location on the map
heat_map(162, 172) = 86;
heat_map(122, 256) = 90;
heat_map(130, 300) = 90;
heat_map(206, 274) = 90;
heat_map(249, 225) = 88;
heat_map(322, 156) = 88;
heat_map(364, 201) = 88;
heat_map(374, 223) = 88;
heat_map(411, 200) = 84;
heat_map(420, 174) = 90;
heat_map(442, 160) = 84;
heat_map(432, 257) = 86;
heat_map(479, 173) = 86;
heat_map(157, 476) = 88;
heat_map(147, 519) = 90;
heat_map(134, 544) = 82;
heat_map(126, 573) = 88;
heat_map(98, 679) = 86;
heat_map(227, 516) = 86;
heat_map(202, 574) = 88;
heat_map(220, 579) = 88;
heat_map(176, 605) = 84;
heat_map(169, 682) = 82;
heat_map(284, 579) = 86;
heat_map(234, 430) = 86;
heat_map(263, 357) = 86;
heat_map(320, 317) = 88;
heat_map(312, 351) = 88;
heat_map(304, 432) = 88;
heat_map(340, 357) = 88;
heat_map(351, 382) = 88;
heat_map(348, 439) = 88;
heat_map(359, 514) = 86;
heat_map(366, 348) = 86;
heat_map(377, 374) = 90;
heat_map(387, 410) = 90;
heat_map(465, 471) = 86;

% Generate the density map
gaussian_kernel = fspecial('gaussian', [100 100], 20);
density = imfilter(heat_map, gaussian_kernel, 'replicate');

% Generate the heat map
omask = heatmap_overlay(img, density, 'jet');
set(figure(1), 'Position', [250 300 800 600]);
imshow(omask,[]);
colormap(jet);
colorbar;

