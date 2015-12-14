function frekans = frek(nota,oktav)  % oktavý verilen notanýn frekansýný döndüren fonksiyon
notalar=['do','d1','re','mb','mi','fa','f1','sol','s1','la','lb' ,'si']; %notalar bir diziye atandý.
n=findstr(notalar,nota); % fonksiyona gönderilen nota dizi içerisinde aratýldý ve indeksi döndürüldü.
frekans=16.35*(2^oktav)*(2^n/12); % notanýn frekansý matematiksel olarak hesaplandý
