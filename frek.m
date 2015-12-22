function [frekans]=tp(nota,oktav)%frekans döndürmektedir.
notalar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','Sus'}; %notolardan oluþan bir dizi yazdýk.
n=strcmp(notalar,nota); %Dizenin içine aktarý,indekside 1 artýrýr.
m=find(n,1);%n dizisinde 1 deðerinin indeksini döndürür.
    if (nargin==0)
disp ('veri giriþi yapýnýz');
        elseif (nargin==1)
 
            if (m==13)
               frekans=0;
            else
        frekans=16.35*(2^4)*(2^((m-1)/12));%frekans fonksiyonu oluþturuldu.
       end

    else
  
        if (m==13)
               frekans=0;
        else
        frekans=16.35*(2^oktav)*(2^((m-1)/12));%frekans fonksiyonu oluþturuldu.
    end


    end

end 
   


