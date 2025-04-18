USE multitablequeries;

/*============================ Primary Key ============================
1- Primary Key bir tablodaki her satırı benzersiz şekilde tanımlayan kolondur veya birden fazla kolonun birlesimidir
2- Primary Key UNIQUE'dir
3- Bir tabloda en fazla bir Primary Key Olabilir.
4- Primary Key column'da hicbir data NULL olamaz. 
-- Bir field Primary Key yapmak icin 2 farkli yol vardir;
*/
/*--------------------- Syntax 1 -------------------
    Data Type'dan sonra "PRIMARY KEY" yazarak
    CREATE TABLE students_table
    (
        id INT PRIMARY KEY,
        name VARCHAR(50),
        grade INT,
        adres VARCHAR(100),
        last_update DATE
    ); 
--------------------------------------------------*/
/*--------------------- Syntax 2 -------------------
    CONSTRAINT Keyword'u kullanilarak PRIMARY KEY tanimlanabilir.
    "CONSTRAINT constraintName PRIMARY KEY(column1, column2, ... column_n);"
    CREATE TABLE students_table
    (
        id INT ,
        name VARCHAR(50),
        grade INT,
        adres VARCHAR(100),
        last_update DATE
        CONSTRAINT id_pk PRIMARY KEY (id)
    );
 --------------------------------------------------*/
/*------------------------------- SORU  -------------------------------
    "sehirler" isimli bir tablo olusturun.
    Tabloda "alan_kodu", "isim", "nufus" fieldlari olsun.
    "isim" field'i bos birakilamasin.
    1. yolu kullanarak "alan_kodu" field'ini primary key yapin
 -------------------------------------------------------------------*/
 
 CREATE TABLE sehirler (
 alan_kodu CHAR(4) PRIMARY KEY,
 isim varchar(30) NOT NULL, 
 nufus int
 );
 
 
 /*
------------------------------- SORU -------------------------------
	"ogretmenler" isimli bir table olusturun.
	Tabloda "id", "isim", "brans", "cinsiyet" fieldlari olsun.
	"id" field'i tekrarli veri kabul etmesin.
	2. yolu kullanarak "id" ve "isim" field'larini primary key yapin
-------------------------------------------------------------------
*/


CREATE TABLE ogretmenler (
id int UNIQUE, 
isim varchar(30), 
brans varchar(30), 
cinsiyet char(5),
CONSTRAINT pk_isim_id PRIMARY KEY(id,isim)
);

-- id'i UNIQUE olarak tanimlamak zorunda degildik 
-- PRIMARY KEY olarak id+isim tanimlandigi icin 
-- bu sutunlar otomatik olarka UNIQUE ve NOT NULL olurlar


/*
------------------------------- SORU -------------------------------
	"universite_ogrenci_bilgi_sistemi" isimli bir table olusturun.
	Tabloda "giris_yili", "giris_siralamasi", "isim", "bolum" field'lari olsun.
	"isim" field'i NULL deger kabul etmesin.
	2. yolu kullanarak "giris_yili" ve "giris_siralamasi" field'larini
    primary key yapin
-------------------------------------------------------------------
*/

CREATE TABLE universite_ogrenci_bilgi_sistemi(
giris_yili year,
giris_siralamasi int,
isim varchar(50) NOT NULL,
bolum varchar(50),
CONSTRAINT pk_girisyili_girissiralamasi PRIMARY KEY(giris_yili, giris_siralamasi)
);



/*
============================ Foreign Key ============================
1- Foreign Key iki tablo arasında Relation oluşturmak için kullanılır.
2- Foreign Key MUTLAKA başka bir tablonun Primary Key’ine bağlıdır.
3- Referenced table (bağlanılan tablo, Primary Key’in olduğu tablo) 
   Parent Table olarak da adlandırılır. Foreign Key’in olduğu tablo ise  
   Child Table olarak da adlandırılır.
4- Bir tabloda birden fazla Foreign Key olabilir.
5- Foreign Key NULL değeri alabilir.
6- Foreign Key DUBLICATE değeri alabilir.
7- Foreign Key Pimary Key'de var olmayan bir degeri kendi icerisinde bulunduramaz.

Not 1: Parent Table’da olmayan bir veriyi(PK'daki herhangi bir deger) 
Child Table’a giremezsiniz.
Not 2: Child Table’ı silmeden Parent Table’ı silemezsiniz. 
Önce Child  Table silinir, sonra Parent Table silinir.
=====================================================================
*/
/*--------------------------- Syntax  ---------------------------
    CONSTRAINT constraintName FOREIGN KEY(child_table_field_name)
    REFERENCES parent_table (parent_table_field_name)
    CREATE TABLE table_name
    (
        id CHAR(10),
        name CHAR(10),
        CONSTRAINT constraint_name
        FOREIGN KEY(id)
        REFERENCES parent_table (parent_table_field_name)
    );
---------------------------------------------------------------*/ 
/*------------------------------- SORU -------------------------------
    "tedarikci" isimli bir tablo olusturun.
    Tabloda "tedarikci_id", "tedarikci_ismi", "iletisim_isim" fieldlari olsun.
    "tedarikci_id" field'ini PRIMARY KEY olsun.
    
    "urunler" isminde baska bir tablo olusturun. 
    Tabloda "tedarikci_id" ve "urun_id" field'lari olsun.
    "tedarikci_id" FOREIGN KEY olsun.
-------------------------------------------------------------------*/ 

CREATE TABLE tedarikci (
tedarikci_id char(6) PRIMARY KEY,
tedarikci_ismi varchar(40),
iletisim_isim varchar(40)
);

-- Parent tablo olusturulmadan child tablo olusturulamaz
-- forign key ve primary key olacak sutunun ayni data turune sahip olmasi gerekir

CREATE TABLE urunler(
tedarikci_id char(6),
urun_id int,
CONSTRAINT tedarikci_foreignKey
FOREIGN KEY(tedarikci_id)
REFERENCES tedarikci (tedarikci_id)
);

/*
 ------------------------------- SORU -------------------------------
	"bebeler" isimli bir tablo olusturun.
	Tabloda "id", "isim", "iletisim_no" field'lari olsun.
	"id" field'i PRIMARY KEY olsun.

	"notlar" isminde baska bir tablo olusturun. 
	Tabloda "bebe_id" ve "puan" field'lari olsun.
	"bebe_id" FOREIGN KEY olsun.
-------------------------------------------------------------------
*/

CREATE TABLE bebeler(
id char(7) PRIMARY KEY,
isim varchar(40),
iletisim_no int
);

CREATE TABLE notlar(
	bebe_id char(7),
	puan INT,
	CONSTRAINT bebe_id_foreignKey
	FOREIGN KEY (bebe_id)
	REFERENCES bebeler (id)
	);



 /*
 ------------------------------- SORU -------------------------------
"ogrenciler" ve "dersler" isimli iki tablo oluşturun.

"ogrenciler" tablosunda "ogrenci_no" (Primary Key),
"isim", ve "bolum" alanları olsun.

"dersler" tablosunda "ders_kodu" (Primary Key),
"ders_adi", ve "kredi" alanları olsun.

"ogrenci_dersleri" isimli bir many to many ilişki tablosu
oluşturun ve gerekli Foreign Key'leri tanımlayın.
-------------------------------------------------------------------
*/ 

CREATE TABLE ogrenciler(
ogrenci_no int PRIMARY KEY,
isim varchar(40),
bolum varchar(50)
);

CREATE TABLE dersler(
ders_kodu char(8) PRIMARY KEY,
ders_adi varchar(40),
kredi int
);

 
 CREATE TABLE ogrenci_dersleri(
	ogrenci_no int,
	ders_kodu CHAR(6),
	CONSTRAINT ogrenci_no_foreign_key 
    FOREIGN KEY(ogrenci_no) 
    REFERENCES ogrenciler (ogrenci_no),
	CONSTRAINT ders_kodu_foreign_key 
    FOREIGN KEY(ders_kodu ) 
    REFERENCES dersler (ders_kodu)
	);
 
 



















 
 