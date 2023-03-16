retina = imread('retina.tif');
imtool(retina);
conRuido = imnoise(retina,'salt & pepper');
imtool(conRuido);

imagen_suavizada1 = suavizado_ponderada (retina, 5);
imagen_suavizada2 = suavizado_ponderada (retina, 13);
imagen_suavizada3 = suavizado_ponderada (retina, 21);

imagen_suavizada4 = suavizado_ponderada (conRuido, 5);
imagen_suavizada5 = suavizado_ponderada (conRuido, 13);
imagen_suavizada6 = suavizado_ponderada (conRuido, 21);

%imagen_suavizada2 = suavizado_ponderada (retina, 20);
%imagen_suavizada3 = suavizado_gaussiano (retina);
% imagen_suavizada4 = medfilt2(retina);
% imagen_suavizada5 = medfilt2(conRuido);
% imagen_suavizada1 = edge(retina,"Prewitt");%"Roberts" "Sobel"
% imagen_suavizada2 = edge(retina,"Roberts");%"Roberts" "Sobel"
% imagen_suavizada3 = edge(retina,"Sobel");%"Roberts" "Sobel"


%imagen_suavizada6 = imfilter(retina,fspecial('laplacian'));

imtool(imagen_suavizada1);
imtool(imagen_suavizada2);
imtool(imagen_suavizada3);
imtool(imagen_suavizada4);
imtool(imagen_suavizada5);
imtool(imagen_suavizada6);