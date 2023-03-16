function imagen_suavizada = suavizado_ponderada (imagen, k)
unos = ones(2*k+1);
unos(k+1,k+1)=0;
for i=1:size(imagen,1)
    for j=1:size(imagen,2)
        M = zeros(size(imagen));
        M(i,j) = 1; % location
        vecinos = imagen(convn(M,unos,'same')>0);
        ponderado = ones(k*imagen(i,j)-1,1,'uint8')*imagen(i,j);
        imagen_suavizada(i,j) = uint8(mean([vecinos; ponderado]));
        end
    end
end