USE multitablequeries;

-- kitaplar tablosundaki her seyi goruntuleyin
SELECT * FROM kitaplar;

-- kitaplar tablosundaki kategori sutununu goruntuleyin

SELECT kategori FROM kitaplar;

-- kitaplar tablosundaki kategorisi macera olan kitaplarin
-- isimlerini ve yazarlarini listeleyin

/*
===============================================
        TABLODAN SORGULAMA YAPMAK / SELECT
===============================================
*/
/*
Tüm Sütunları Seçme: Eğer tablodaki tüm sütunlardaki verilere ihtiyacınız varsa, 
yıldız işareti (*) kullanarak tüm sütunları seçebilirsiniz. Bu, tablodaki her bir
 sütundan veri getirir.
*/
/*
*************** SYNTAX ***************
SELECT * FROM table_name;
*/
/*
Belirli Sütunları Seçme: Eğer sadece tablonun belirli sütunlarındaki
 verilere ihtiyacınız varsa, bu sütunların adlarını SELECT komutundan
 sonra, FROM komutu ile belirtilen tablo adından önce sıralayabilirsiniz
*/
/*
*************** SYNTAX ***************
SELECT sütun1, sütun2 FROM tablo_adı;
*/


/*
 ===============================================
           WHERE ile Filtreleme
 ===============================================
 */
 
/*
 WHERE koşulu, SQL sorgularında belirli kriterlere göre verileri filtrelemek
 için kullanılır. WHERE ile birlikte karşılaştırma ve mantıksal operatörler,
 daha spesifik ve dinamik sorgular oluşturmak için kullanılabilir.
*/
/*
*************** SYNTAX ***************
SELECT * FROM tablo_adı WHERE sütun = “istenen değer”;
*/

SELECT kitap_adi FROM kitaplar 
WHERE kategori = 'Macera' ;

CREATE TABLE kisiler (
id INT,
isim VARCHAR(30),
soyisim VARCHAR(30),
yas INT,
sehir VARCHAR(20)
);

INSERT INTO kisiler (isim, soyisim, yas, sehir) VALUES ('Ahmet', 'Yılmaz', 30, 'Ankara');
INSERT INTO kisiler (isim, soyisim, yas, sehir) VALUES ('Mehmet', 'Kara', 25, 'İstanbul');
INSERT INTO kisiler (isim, soyisim, yas, sehir) VALUES ('Ayşe', 'Kaya', 22, 'İzmir');
INSERT INTO kisiler (isim, soyisim, yas, sehir) VALUES ('Fatma', 'Güneş', 28, 'Bursa');
INSERT INTO kisiler (isim, soyisim, yas, sehir) VALUES ('Ali', 'Çelik', 35, 'Antalya');
INSERT INTO kisiler (isim, soyisim, yas, sehir) VALUES ('Elif', 'Demir', 29, 'Ankara');
INSERT INTO kisiler (isim, soyisim, yas, sehir) VALUES ('Can', 'Özdemir', 33, 'İstanbul');
INSERT INTO kisiler (isim, soyisim, yas, sehir) VALUES ('Deniz', 'Arslan', 24, 'İzmir');
INSERT INTO kisiler (isim, soyisim, yas, sehir) VALUES ('Selin', 'Yıldız', 27, 'Bursa');
INSERT INTO kisiler (isim, soyisim, yas, sehir) VALUES ('Emre', 'Koç', 31, 'Antalya');
INSERT INTO kisiler (isim, soyisim, yas, sehir) VALUES ('Zeynep', 'Çınar', 26, 'Konya');
INSERT INTO kisiler (isim, soyisim, yas, sehir) VALUES ('Oğuz', 'Kaplan', 40, 'Samsun');
INSERT INTO kisiler (isim, soyisim, yas, sehir) VALUES ('Burcu', 'Ertuğrul', 22, 'Trabzon');
INSERT INTO kisiler (isim, soyisim, yas, sehir) VALUES ('Kaya', 'Durmaz', 35, 'Diyarbakır');
INSERT INTO kisiler (isim, soyisim, yas, sehir) VALUES ('Seda', 'Aydın', 28, 'Eskişehir');

SELECT * FROM kisiler;

CREATE TABLE people (
id INT,
isim VARCHAR(30),
soyisim VARCHAR(30),
yas INT,
sehir VARCHAR(20)
);

INSERT INTO people () VALUES (1,'Ahmet', 'Yılmaz', 30, 'Ankara');
INSERT INTO people () VALUES (2,'Mehmet', 'Kara', 25, 'İstanbul');
INSERT INTO people () VALUES (3,'Ayşe', 'Kaya', 22, 'İzmir');
INSERT INTO people () VALUES (4,'Fatma', 'Güneş', 28, 'Bursa');
INSERT INTO people () VALUES (5,'Ali', 'Çelik', 35, 'Antalya');
INSERT INTO people () VALUES (6,'Elif', 'Demir', 29, 'Ankara');
INSERT INTO people () VALUES (7,'Can', 'Özdemir', 33, 'İstanbul');
INSERT INTO people () VALUES (8,'Deniz', 'Arslan', 24, 'İzmir');
INSERT INTO people () VALUES (9,'Selin', 'Yıldız', 27, 'Bursa');
INSERT INTO people () VALUES (10,'Emre', 'Koç', 31, 'Antalya');
INSERT INTO people () VALUES (11,'Zeynep', 'Çınar', 26, 'Konya');
INSERT INTO people () VALUES (12,'Oğuz', 'Kaplan', 40, 'Samsun');
INSERT INTO people () VALUES (13,'Burcu', 'Ertuğrul', 22, 'Trabzon');
INSERT INTO people () VALUES (14,'Kaya', 'Durmaz', 35, 'Diyarbakır');
INSERT INTO people () VALUES (15,'Seda', 'Aydın', 28, 'Eskişehir');

SELECT * FROM people;

SELECT isim FROM people
WHERE yas = 28;

SELECT isim,soyisim FROM people
WHERE sehir = 'Ankara';

SELECT isim,soyisim,yas FROM people
WHERE sehir = 'Bursa' ;

ALTER TABLE people 
ADD cinsiyet varchar(10);

ALTER TABLE people
RENAME COLUMN cinsiyet TO gender;

ALTER TABLE people
DROP COLUMN cinsiyet ;

SELECT isim FROM people
WHERE id < 5;

SELECT soyisim FROM people
WHERE id BETWEEN 3 AND 7;

SELECT isim,yas FROM people
WHERE yas BETWEEN 20 AND 30;






































