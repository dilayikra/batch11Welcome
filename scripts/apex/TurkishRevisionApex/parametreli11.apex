ParametreliMethodlar pm1= new ParametreliMethodlar();
string metin='Salesforce developer olma yolunda ilerliyorum';
integer uzunluk=pm1.uzunluk(metin);
system.debug(metin +' cumlesinin karakter sayisi='+uzunluk);