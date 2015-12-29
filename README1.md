BiLGE YILMAZ 030115236 SiNYAL iSLEME Proje : MATLAB ile sentezleme

Frek.m dosyası notanın frekansını hesaplayan fonksiyonu icermektedir. Notalar.png dosyası sinyalleri olusturulacak notaları göstermektedir. Notalar.txt dosyası her ölçünün notalarını ve vurus değerlerini oluşturmaktadır. note.m dosyası her notanın sinüs sinyalini olusturacak fonksiyonu icermektedir. Notaların frekansları arasında ki bağlantı ise her oktav derecesi arttıkça frekans değeri 2 katına çıkmatadır. notalar sağa doğru ilerledikçe 2'1/12 lik bir değişkenlik göstermektedir. Bu durumda 0. oktavın 'do değerini sabit olarak alırsak frekans.hesabını= 16.35(2^oktav)2^(nota.indexsi/12) ile yapabiliriz.

Notalar.txt dosyası güncellendi ve notalara oktav değerleri de eklendi. frek fonksiyonu güncellendi ve değer gönderilmediği taktirde oktavı 4 alması sağlandı aynı zamanda sus notası eklendi ve nota değeri sus geldiği durumlarda frekans üretilmemesi sağlandı. nota.m dosyası da üretilen sinüs sinyalini zarflamak üzere güncellenmek istendi ama başarılamadı. 
note fonksiyonunda sinyal zarflama işlemi yapıldı.frek fonksiyonunda oktav değeri eklemes yapıldı. sentez.m dosyasında ise
Notalar .txt dosyasından okundu değişkenlere tanımlandı gerekli düzenlemeler yapıldıktan sonra döngüler oluşturularak
fonksiyonlar çağırıldı. Her notanın nota değeri ve oktavı frek fonksiyonna gönderilerek frekansı alındır ve alınan frekans 
vuruş değeri ile birlikte note sonksiyonuna gönderilerek notanın sinyali oluşturuldu ve harmoniği hesaplanarak zarflandı.
zarflı bir şekilde geri döndürülen sinyale sentez.m dosyası içerisinde echo eklendi ve aynı zamanda normalize edilerek çaldırıldı.
Gerçekten öğretici bir ödevdi TEŞEKKÜRLER HOCAM 