USE multitablequeries;

-- bir tablo olusturabiliyoruz
-- isim, soyisim, yas ve dogum_yeri sutunlarina sahip bir tablo olusturun

CREATE TABLE ogrenciler(
isim varchar(40),
soyisim varchar(40),
yas int,
dogum_yeri varchar(40)
); 

-- ogrenciler tablosunu goruntuleyin

SELECT * FROM ogrenciler;

-- ogrneciler tablsouna 'Ahmet', 'Yilmaz', 30, 'Ankara' kaydini ekleyin

INSERT INTO ogrenciler VALUES ('Ahmet', 'Yilmaz', 30, 'Ankara');

-- ogrneciler tbalosuna ismi Mehmet, yasi 25 olan bir ogrenci ekleyin

INSERT INTO ogrenciler(isim,yas) VALUES ('Mehmet', 25);

-- 5 kaydi toplu olarka girelim

INSERT INTO ogrenciler (isim, soyisim, yas, dogum_yeri) VALUES ('Mehmet', 'Kara', 25, 'İstanbul');
INSERT INTO ogrenciler (isim, soyisim, yas, dogum_yeri) VALUES ('Ayşe', 'Kaya', 22, 'İzmir');
INSERT INTO ogrenciler () VALUES ('Fatma', 'Gunes', 28, 'Bursa');
INSERT INTO ogrenciler () VALUES ('Ali', 'Celik', 35, 'Antalya');
INSERT INTO ogrenciler () VALUES ('Elif', 'Demir', 29, 'Ankara');

-- 5 kaydi toplu olarka girelim

INSERT INTO ogrenciler () VALUES ('Can', 'Özdemir', 33, 'İstanbul'),
									('Deniz', 'Arslan', 24, 'İzmir'),
									('Selin', 'Yıldız', 27, 'Bursa'),
									('Emre', 'Koç', 31, 'Antalya'),
									('Zeynep', 'Çınar', 26, 'Konya'),
									('Oğuz', 'Kaplan', 40, 'Samsun');


-- ogrenciler tablosundaki yas ve dogum_yeri sutununu goruntuleyin

SELECT yas,dogum_yeri FROM ogrenciler;

-- yas sutunun data turunu double yapin

ALTER TABLE ogrenciler
MODIFY COLUMN yas DOUBLE;

-- yas sutununun adini ogrenci_yasi ve data turunu int yapin

ALTER TABLE ogrenciler
CHANGE COLUMN yas ogrenci_yasi int;

-- ogrenci_yasi sutununu silin

ALTER TABLE ogrenciler
DROP COLUMN ogrenci_yasi;

-- ogenciler tablosunu silin

DROP TABLE ogrenciler;

-- NOT:
-- sondaki drop islemi haric tabloyu yeniden ayaga kaldirmak istersek bi oncesindeki adima kadar hepsini secip calistirmak gerekir
-- ya da herhangi bir adima geri donmek icin tabloyu silip sorgulari bastan o satira kadar tekrar calistirmak gerekir
-- ama tabiki Drop islemleri yapilmamali gercek calismalarda kolay kolay 










