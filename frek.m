function [F]=frek(n,o)%frekans döndürmektedir.
nota={'do','c#','re','eb','mi','fa','f#','sol','g#','la','bb','si'}; %notolardan oluþan bir dizi yazdýk.
n=strcmp(nota,n); %Dizenin içine aktarý,indekside 1 artýrýr.
m=find(n,1);%n dizisinde 1 deðerinin indeksini döndürür.
F=16.35*(2^o)*(2^((m-1)/12));%frekans fonksiyonu oluþturuldu.
