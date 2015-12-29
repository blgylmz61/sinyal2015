function[x,t]=note(frekans,vurus)% genliði frekansý ve vuruþ deðeri verilen notanýn sinüs sinyalini çizdiren fonksiyon
    fs=8192;%örnekleme sayýsý deðiþkene tanýmlandý
    t=0:1/fs:vurus-(1/fs); %sinyalin periyodu tanýmlandý
       a=length(t);%periyod boyutu a deðiþkenine atandý
    hk=[1 0.8 0.4 0.1]; %harmonik katsayýlaru diziye atandý
        b=length(hk); %hk dizisinin boyutu b deðiþkenine atandý
        x=zeros(1,a); %periyot deðerinin boyutu kadar sýfýr deðerinden oluþan bir x matrisý tanýmlandý
        for i=1:b %1 den hk dizisi boyutuna kadar bir döngü oluþturuldu
            x=x+(hk(i)*sin(2*pi*(i*frekans)*t)); %dýþarýdan alýnan deðerlere göre oluþturulan sinus sinyalinin harmoniði oluþturuldu
        end
A=linspace(0,1.5,a/4);%genliði 1,5'a kadar çýkan ve periyodun 1/4'u kadar aralýkta vektör oluþturur
B=linspace(1.5,1,a/8);%genliði 1,5 dan 1'e kadar inen ve periyodun 1/8'i kadar aralýkta vektör oluþturur
C=linspace(1,1,a/2);%genliði sabitolan ve periyodun 1/2'si kadar aralýkta vektör oluþturur
D=linspace(1,0,a/8);%genliði 1 den 0'e kadar inen ve periyodun 1/8'i kadar aralýkta vektör oluþturur
 zarf=[A B C D];%oluþturulan tüm vektörler bir dizide peþpeþe sýralanýr
 x=x.*zarf;%x dizisinin her elemani zarf dizisinin her elemani tek tek çarpýlara tekrar x dizisine atanýr yani x sinyali zarflanýr.
 