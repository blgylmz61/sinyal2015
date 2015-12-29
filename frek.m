function [frekans]=frek(nota,oktav,oktavdegeri)%frekans döndürmektedir.

notalar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','Sus'}; %notolardan oluþan bir dizi yazdýk.
n=strcmp(notalar,nota); %Dizenin içine aktarý,indekside 1 artýrýr.
m=find(n,1);%n dizisinde 1 deðerinin indeksini döndürür.
        if (nargin==0) %fonsiyona hiç deðer gönderilmemiþ ise
                 disp ('veri giriþi yapýnýz');%deðer girilmesini talep eder
        elseif (nargin==1)%tek deðer gönderilmiþ ise
                 if (m==13)%deðerin Sus notasý olup olmadýðýný konrol eder
                    frekans=0;%sus deðeri ise frekansý 0 döndürür
                else %deðilse
                    frekans=16.35*(2^(4))*(2^((m-1)/12));%fonksiyona gönderilen tek deðeri nota kabul eder ve oktavý 4 oktavdeðerini 0 kabul ederek frekans hesaplar
                end%sus notasý kontrol iþlemini bitirir
        elseif (nargin==2) %eðer iki deðer gönderilmiþ ise
                 if (m==13)%ve nota deðeri Sus ise
                    frekans=0;%frekansý 0 döndürür
                 else%deðil ise
                    frekans=16.35*(2^(oktav))*(2^((m-1)/12)); %oktav fonksiyonuna göre frekans üretir
                 end
        else %eðer 2 den fazla deðer gönderilmiþ ise
                 if (m==13)%ve nota deðeri Sus ise
                     frekans=0;%frekansý 0 döndürür
                 else%deðil ise
                     frekans=16.35*(2^(oktav+oktavdegeri))*(2^((m-1)/12)); %gönderilen nota oktav ve oktav deðerine göre frekans hesaplamasý yapar
                 end


    end

end 
   


