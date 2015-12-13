function[x,t]=note(genlik,frekans,vurus) %genliði frekansý ve vuruþ deðeri verilen notanýn sinüs sinyalini çizdiren fonksiyon
t=0:0,00025:vurus 
x=genlik*sin(2*pi*frekans*t)
