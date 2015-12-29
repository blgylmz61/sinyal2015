[nota,b,c]=textread('Notalar.txt','%s %s %s'); %Notalar.txt dosyasi okunarak her sutun bir deðere atandi
oktavdegeri=1; %oktav degeri degistirilebilir
fs=11000;%örnekleme sayýsý deðiþkene atandý
ds=round(fs/100); %durma süresi hesaplandý
go=round(fs/10); %gecikme süresi hesaplandý
notalar=zeros(1,fs); %örnekleme süresi kadar sýfýrdan olusan bir dizi oluþturuldu
a=zeros(1,length(notalar)); %notalar matrisi boyutlarýnda sýfýrdan olusan bir dizi oluþturuldu
durak=zeros(1,ds); %durma süresi boyutunda sýfýrdan olusan bir dizi oluþturuldu
oktav=str2num(cell2mat(b)); %dosyadan cell olarak okunan deðiþkenler double deðere dönüþtürüldü.
   for i=1:(length(nota)) %nota dizisi boyu kadar döngü olþturuldu
       vurus((i),1)=str2num(cell2mat(c(i,1))); %dosyadan cell olarak okunan deðiþkenler double deðere dönüþtürüldü.
       frekans((i),1)=frek(nota((i),1),oktav((i),1),oktavdegeri); %daha önceden oluþturulmuþ frek fonsiyonu çaðýrýldý
       [x,t]=note(frekans((i),1),vurus((i),1)); %daha önceden olýþturulmuþ note fonksiyonu çaðýrýldý.
       notalar=[notalar durak x]; %note fonsiyonunun döndürdüðü sinyal deðeri aralarýna daha önce oluþturulmu durak dizisi de yerleþtirilerek birleþtirildi
   end %for döngüsü bitirildi
 notalarecho=zeros(1,(length(notalar))); %notalar matrisi boyutlarýnda sýfýrdan olusan bir dizi oluþturuldu
 for i=1:(length(notalar)) %notalar dizisi boyu kadar döngü olþturuldu
     f=(go+i); %echo oluþturmak için gerekli olan gecikme süresi döngüye sokuldu
     if f<(length(notalar)) %gecikme süresi notalar matrisinin boyutunu geçmesin diye þart saðlandý
     notalarecho(i)=notalar(i)*0.3+notalar(f); %notalar matrisinin herbir deðerinin %30'u alýnýp geçikme süresi kadar kaydýrýlmýþtýr
     else 
      notalarecho(i)=notalar(i)*0.3+0; 
     end
 end 
  normalizenotalarecho=zeros(1,(length(notalar)));%normalizasyon iþlemi yapýlabilmesi için deðiþken tanýmlanmýþtýr
  normalizenotalarecho=notalarecho/max(abs(notalarecho));%sinyalin tepe deðerleri 1'e normalize edilmiþtir.
sound(normalizenotalarecho) %sinyal çaldýrýlýyor.

    