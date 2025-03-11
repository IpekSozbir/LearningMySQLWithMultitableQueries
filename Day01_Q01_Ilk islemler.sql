
-- bu bir yorum satiridir

/*
Eger birden fazla satiri 
yorum satiri yapmak istersek
*/

/*
Database'de islem yapmak,
Java ile islem yapmaktan farklidir
Java RunTime program oldugundan calisma bittiginde her sey sifirlanir ve en bastaki duruma doner
Ancak database'de yapilan her islem kalici olacaktir

Kismen geriye almak mumkun olsa da 
her islemi geriye almak mumkun degildir

Bu sebeple database ile yapacagimiz islemleri 2 kere dusunmeliyiz
*/

-- yeni bir schema olusturmak icin
CREATE SCHEMA multitablequeries;

/*
Database ve Query sayfasi farkli seyler
Database'i Local olarak olusturduk
Ancak ister Local isterse uzak database olsun, database'de islemler KALICIDIR

Database'de islem yapabilmek icin olusturdugumuz Query dosyalari ise 
bizim not aldigimiz sayfalar gibidir 
biz kaydetmedikce kalici olarak KAYDEDILMEZ
*/

/*
SQL ile sorgu yapmak da Java kodlarini calistirmaktan farklidir
Java'da bir class veya method calistirildiginda 
o class veya method'daki tum kodlar calisir

Ancak database sorgularini calistirmak icin 2 alternatif vardir
1- Query sayfasindaki belirli satir/satirlari calistirmak icin
o satiri/satirlari secip yukaridaki Execute (simsek) butonuna basilir

Not:eger secim olmazsa tum sayfa calistirilir 
	bunu kesinlikle tavsiye etmiyoruz
    Cunku ayni kayitlari tekrar tekrar database'e kaydedebilir
    
2- Uzerinde I olan Execute (simsek) tusuna basarsaniz
en yukaridan cursor(|)'un bulundugu satira kadar tum sorgulari calistirir
*/

-- Bir Query sayfasinin hangi schema ile calisacagini belirlemek icin use komutu kullanilir
-- Query sayfasi her acildiginda bu kodun bir kere calistirilmasi lazim
use multitablequeries;




