function [frekans]=frek(nota,oktav,oktavdegeri)%frekans d?nd?rmektedir.

notalar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','Sus'}; %notolardan olu?an bir dizi yazd?k.
n=strcmp(notalar,nota); %Dizenin i?ine aktar?,indekside 1 art?r?r.
m=find(n,1);%n dizisinde 1 de?erinin indeksini d?nd?r?r.
        if (nargin==0) %fonsiyona hi? de?er g?nderilmemi? ise
                 disp ('veri giri?i yap?n?z');%de?er girilmesini talep eder
        elseif (nargin==1)%tek de?er g?nderilmi? ise
                 if (m==13)%de?erin Sus notas? olup olmad???n? konrol eder
                    frekans=0;%sus de?eri ise frekans? 0 d?nd?r?r
                else %de?ilse
                    frekans=16.35*(2^(4))*(2^((m-1)/12));%fonksiyona g?nderilen tek de?eri nota kabul eder ve oktav? 4 oktavde?erini 0 kabul ederek frekans hesaplar
                end%sus notas? kontrol i?lemini bitirir
        elseif (nargin==2) %e?er iki de?er g?nderilmi? ise
                 if (m==13)%ve nota de?eri Sus ise
                    frekans=0;%frekans? 0 d?nd?r?r
                 else%de?il ise
                    frekans=16.35*(2^(oktav))*(2^((m-1)/12)); %oktav fonksiyonuna g?re frekans ?retir
                 end
        else %e?er 2 den fazla de?er g?nderilmi? ise
                 if (m==13)%ve nota de?eri Sus ise
                     frekans=0;%frekans? 0 d?nd?r?r
                 else%de?il ise
                     frekans=16.35*(2^(oktav+oktavdegeri))*(2^((m-1)/12)); %g?nderilen nota oktav ve oktav de?erine g?re frekans hesaplamas? yapar
                 end


    end

end 