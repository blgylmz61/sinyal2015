function[z,t]=note(frekans,vurus)% genli�i frekans� ve vuru� de�eri verilen notan�n sin�s sinyalini �izdiren fonksiyon
 fs=8192;
 t=0:1/fs:((vurus)-(1/fs)); 
 x=sin(2*pi*frekans*t); %verilen bilgiler do�rultusunde sinus sinyali olu�turur
 a=length(x);
A=linspace(0,(2*a)/8);
B=linspace((2*a)/8,(3*a)/8);
C=linspace((3*a)/8,(7*a)/8);
D=linspace((7*a)/8,a);
 zarf=[A B C D];
 z=zvect([x,zarf]);