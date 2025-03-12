use multitablequeries;

/*
===============================================
        TABLO OLUSTURMA (CRUD - Create)
===============================================
*/


/*
"CREATE TABLE" bir veritabanında yeni bir tablo oluşturmak için kullanılan 
bir SQL (Structured Query Language) ifadesidir. 

Bu komut, tablonun yapısını tanımlar.
yani tabloda bulunacak sütunların isimlerini, veri tiplerini ve diğer özelliklerini (örneğin, Primary Key, Unique, Not Null  vb.) belirtir. 

"CREATE TABLE" komutunu kullanırken, her bir sütun için uygun veri tipini ve 
boyutunu belirlemek ve gerektiğinde sütunlara kısıtlamalar eklemek önemlidir. 

Bu işlem, veri bütünlüğünü korumak ve veritabanı işlemlerinin doğru şekilde 
çalışmasını sağlamak için kritik öneme sahiptir.
*/


/*
*************** SYNTAX ***************
CREATE TABLE tablo_adi 
(
    sütun1_Adi veri_tipi1 ,
    sütun2_Adi veri_tipi2 ,
    ...
    sütunN_Adi veri_tipiN ,
);
*/



/*  
   ========================  SORU  ========================
   Icerisinde kitap id, kitap adi, yayin yili ve kategori columnlari
   olan bir kitaplar tablosu create ediniz. 
   =========================================================
 */

CREATE TABLE kitaplar (
kitap_id int,
kitap_adi varchar(50),
yayin_yili int,
kategori varchar(30)
);

/*
Select bir tablodan data cagirmak icin kullanilir 
bizim de en cok kullanacagimiz komuttur

* her sey anlamina gelir 
asagidaki komut su anlama gelir
multitablequeries.kitaplar'dan her seyi getir

SQL syntax yapisi gundelik konusma diline yaklastirilmaya calisiliyor (INGILIZCE)
Syntax yapisini tersten okudugunuzda mantikli bir cumle ile karsilasirsiniz.
*/

SELECT * FROM multitablequeries.kitaplar;

/*
    SQL komutlari ortak kabul olarak buyuk harf ile yazilir.
    SQL ifadeleri yine ortak kabul olarak alt alta yazilir. 
    SQL icerisinde snake_case yazimi uygulanir. 
 */
 
 /*  
    ========================  SORU  ========================
    Icerisinde personel id, adi, soyadi, dogum tarihi, pozisyon ve maas columnlari
    olan bir personel tablosu create ediniz. 
    =========================================================
 */
 
 CREATE TABLE personel (
 personel_id int,
 adi varchar(40),
 soyadi varchar(40),
 dogum_tarihi date,
 pozisyon varchar(40),
 maas int
 );
 
 SELECT * FROM personel;
 
 -- Tablo uzerindeki colunm isimlerini filtleyerek de SELECT sorugusu ile calistirabilirim
 
 SELECT personel_id,soyadi FROM personel; 
 
 


















