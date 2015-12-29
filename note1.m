function[x,t]=note(frekans,vurus)% genli?i frekans? ve vuru? de?eri verilen notan?n sin?s sinyalini ?izdiren fonksiyon
    fs=8192;%?rnekleme say?s? de?i?kene tan?mland?
    t=0:1/fs:vurus-(1/fs); %sinyalin periyodu tan?mland?
       a=length(t);%periyod boyutu a de?i?kenine atand?
    hk=[1 0.8 0.4 0.1]; %harmonik katsay?laru diziye atand?
        b=length(hk); %hk dizisinin boyutu b de?i?kenine atand?
        x=zeros(1,a); %periyot de?erinin boyutu kadar s?f?r de?erinden olu?an bir x matris? tan?mland?
        for i=1:b %1 den hk dizisi boyutuna kadar bir d?ng? olu?turuldu
            x=x+(hk(i)*sin(2*pi*(i*frekans)*t)); %d??ar?dan al?nan de?erlere g?re olu?turulan sinus sinyalinin harmoni?i olu?turuldu
        end
A=linspace(0,1.5,a/4);%genli?i 1,5'a kadar ??kan ve periyodun 1/4'u kadar aral?kta vekt?r olu?turur
B=linspace(1.5,1,a/8);%genli?i 1,5 dan 1'e kadar inen ve periyodun 1/8'i kadar aral?kta vekt?r olu?turur
C=linspace(1,1,a/2);%genli?i sabitolan ve periyodun 1/2'si kadar aral?kta vekt?r olu?turur
D=linspace(1,0,a/8);%genli?i 1 den 0'e kadar inen ve periyodun 1/8'i kadar aral?kta vekt?r olu?turur
 zarf=[A B C D];%olu?turulan t?m vekt?rler bir dizide pe?pe?e s?ralan?r
 x=x.*zarf;%x dizisinin her elemani zarf dizisinin her elemani tek tek ?arp?lara tekrar x dizisine atan?r yani x sinyali zarflan?r.