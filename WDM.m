%Definicion de banda C
inicio=1530;
fin=1565;
filtro=ones(1,(fin-inicio));


%parametros CWDM
n_canales=98;
anc_can_nm=50;
separacion_nm=200;

subplot(1,2,1)
title('CWDM')
xlabel('lamda nm')
hold on

for i = 1:n_canales
   posicion_inicial = (separacion_nm*i)+(anc_can_nm*(i-1));
   valores=zeros(1,posicion_inicial);
   valores=[valores,ones(1,anc_can_nm),0];
   espectro=1:numel(valores);
   plot(espectro,valores)
end

%parametros DWDM
n_canales=98;
anc_can_nm=50;
separacion_nm=8;

hold off

subplot(1,2,2)
title('DWDM')
xlabel('lamda nm')
hold on

for i = 1:n_canales
   posicion_inicial = (separacion_nm*i)+(anc_can_nm*(i-1));
   valores=zeros(1,posicion_inicial);
   valores=[valores,ones(1,anc_can_nm),0];
   espectro=1:numel(valores);
   plot(espectro,valores)
end

hold off
