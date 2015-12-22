BiLGE YILMAZ
030115236
SiNYAL iSLEME
Proje : MATLAB ile sentezleme
Frek.m dosyasý notanýn frekansýný hesaplayan fonksiyonu icermektedir.
Notalar.png dosyasý sinyalleri olusturulacak notalarý göstermektedir.
Notalar.txt dosyasý her ölçünün notalarýný ve vurus deðerlerini oluþturmaktadýr.
note.m dosyasý her notanýn sinüs sinyalini olusturacak fonksiyonu icermektedir.
	Notalarýn frekanslarý arasýnda ki baðlantý ise her oktav derecesi arttýkça frekans deðeri 2 katýna çýkmatadýr.
notalar saða doðru ilerledikçe 2'1/12 lik bir deðiþkenlik göstermektedir. Bu durumda 0. oktavýn 'do deðerini sabit olarak alýrsak 
frekans.hesabýný= 16.35*(2^oktav)*2^(nota.indexsi/12) ile yapabiliriz.

Notalar.txt dosyasý güncellendi ve notalara oktav deðerleri de eklendi. frek fonksiyonu güncellendi ve deðer gönderilmediði taktirde oktavý 4 almasý saðlandý
ayný zamanda sus notasý eklendi ve nota deðeri sus geldiði durumlarda frekans üretilmemesi saðlandý.
nota.m dosyasý da üretilen sinüs sinyalini zarflamak üzere güncellenmek istendi ama baþarýlamadý. 