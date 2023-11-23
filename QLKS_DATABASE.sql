--------------------------------------------------------
--  File created - Thursday-November-23-2023   
--------------------------------------------------------
DROP SEQUENCE "C##QLKS"."SEQ_MACHITIETDICHVU";
DROP SEQUENCE "C##QLKS"."SEQ_MACHITIETPHONG";
DROP SEQUENCE "C##QLKS"."SEQ_MADATPHONG";
DROP SEQUENCE "C##QLKS"."SEQ_MAKHACHHANG";
DROP SEQUENCE "C##QLKS"."SEQ_MANHANVIEN";
DROP SEQUENCE "C##QLKS"."SEQ_MAPHONG";
DROP TABLE "C##QLKS"."CHITIETDICHVU";
DROP TABLE "C##QLKS"."CHITIETPHONG";
DROP TABLE "C##QLKS"."CTGG";
DROP TABLE "C##QLKS"."DATPHONG";
DROP TABLE "C##QLKS"."DICHVU";
DROP TABLE "C##QLKS"."KHACHHANG";
DROP TABLE "C##QLKS"."LOAIPHONG";
DROP TABLE "C##QLKS"."NHANVIEN";
DROP TABLE "C##QLKS"."PHONG";
DROP VIEW "C##QLKS"."PHONGTRONGVIEW";
DROP VIEW "C##QLKS"."THONGTINKHACHHANG";
DROP VIEW "C##QLKS"."THONGTINPHONG";
DROP PROCEDURE "C##QLKS"."CAPNHATTONGTIENDATPHONG";
DROP PROCEDURE "C##QLKS"."THEMDATPHONG";
DROP PROCEDURE "C##QLKS"."THEMDICHVU";
DROP PROCEDURE "C##QLKS"."THEMKHACHHANG";
DROP PROCEDURE "C##QLKS"."THEMNHANVIEN";
DROP PROCEDURE "C##QLKS"."THEMTHONGTINKHACHDATTRUOC";
DROP PROCEDURE "C##QLKS"."THEMTHONGTINTAIQUAY";
DROP FUNCTION "C##QLKS"."YESNO";
--------------------------------------------------------
--  DDL for Sequence SEQ_MACHITIETDICHVU
--------------------------------------------------------

   CREATE SEQUENCE  "C##QLKS"."SEQ_MACHITIETDICHVU"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 8 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_MACHITIETPHONG
--------------------------------------------------------

   CREATE SEQUENCE  "C##QLKS"."SEQ_MACHITIETPHONG"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 3 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_MADATPHONG
--------------------------------------------------------

   CREATE SEQUENCE  "C##QLKS"."SEQ_MADATPHONG"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 5 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_MAKHACHHANG
--------------------------------------------------------

   CREATE SEQUENCE  "C##QLKS"."SEQ_MAKHACHHANG"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 3 START WITH 10 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_MANHANVIEN
--------------------------------------------------------

   CREATE SEQUENCE  "C##QLKS"."SEQ_MANHANVIEN"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 11 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_MAPHONG
--------------------------------------------------------

   CREATE SEQUENCE  "C##QLKS"."SEQ_MAPHONG"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table CHITIETDICHVU
--------------------------------------------------------

  CREATE TABLE "C##QLKS"."CHITIETDICHVU" 
   (	"MACHITIETDICHVU" VARCHAR2(20 BYTE), 
	"MADICHVU" VARCHAR2(10 BYTE), 
	"MADATPHONG" VARCHAR2(10 BYTE), 
	"SOLUONG" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CHITIETPHONG
--------------------------------------------------------

  CREATE TABLE "C##QLKS"."CHITIETPHONG" 
   (	"MACHITIETPHONG" VARCHAR2(20 BYTE), 
	"MAPHONG" VARCHAR2(10 BYTE), 
	"MADATPHONG" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CTGG
--------------------------------------------------------

  CREATE TABLE "C##QLKS"."CTGG" 
   (	"MACTGG" VARCHAR2(10 BYTE), 
	"TILETRIETKHAU" NUMBER, 
	"NGAYBATDAU" DATE, 
	"NGAYKETTHUC" DATE, 
	"MALOAIPHONG" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DATPHONG
--------------------------------------------------------

  CREATE TABLE "C##QLKS"."DATPHONG" 
   (	"MADATPHONG" VARCHAR2(10 BYTE), 
	"MANHANVIEN" VARCHAR2(10 BYTE), 
	"MAKHACHHANG" VARCHAR2(10 BYTE), 
	"NGAYDATPHONG" DATE, 
	"SONGAYO" NUMBER, 
	"CHECKINDATE" DATE, 
	"CHECKOUTDATE" DATE, 
	"PHUONGTHUCTHANHTOAN" VARCHAR2(20 BYTE), 
	"COC" NUMBER, 
	"TONGTIEN" FLOAT(126)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DICHVU
--------------------------------------------------------

  CREATE TABLE "C##QLKS"."DICHVU" 
   (	"MADICHVU" VARCHAR2(10 BYTE), 
	"TENDICHVU" VARCHAR2(20 BYTE), 
	"GIA" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KHACHHANG
--------------------------------------------------------

  CREATE TABLE "C##QLKS"."KHACHHANG" 
   (	"MAKHACHHANG" VARCHAR2(10 BYTE), 
	"TEN" VARCHAR2(10 BYTE), 
	"HO" VARCHAR2(20 BYTE), 
	"DIACHI" VARCHAR2(50 BYTE), 
	"CCCD" VARCHAR2(12 BYTE), 
	"SODIENTHOAI" VARCHAR2(15 BYTE), 
	"SOTHENGANHANG" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LOAIPHONG
--------------------------------------------------------

  CREATE TABLE "C##QLKS"."LOAIPHONG" 
   (	"MALOAIPHONG" VARCHAR2(10 BYTE), 
	"LOAIPHONG" VARCHAR2(20 BYTE), 
	"GIA" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NHANVIEN
--------------------------------------------------------

  CREATE TABLE "C##QLKS"."NHANVIEN" 
   (	"MANHANVIEN" VARCHAR2(10 BYTE), 
	"TEN" VARCHAR2(10 BYTE), 
	"HO" VARCHAR2(20 BYTE), 
	"CHUCVU" VARCHAR2(20 BYTE), 
	"DIACHI" VARCHAR2(50 BYTE), 
	"SODIENTHOAI" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PHONG
--------------------------------------------------------

  CREATE TABLE "C##QLKS"."PHONG" 
   (	"MAPHONG" VARCHAR2(10 BYTE), 
	"MALOAIPHONG" VARCHAR2(10 BYTE), 
	"SOPHONG" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View PHONGTRONGVIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##QLKS"."PHONGTRONGVIEW" ("MAPHONG", "LOAIPHONG", "GIAPHONG", "MACTGG", "TILETRIETKHAU", "GIAPHONGSAUTRIETKHAU") AS 
  SELECT "MAPHONG","LOAIPHONG","GIAPHONG","MACTGG","TILETRIETKHAU","GIAPHONGSAUTRIETKHAU"
FROM ThongTinPhong
WHERE maphong NOT IN (
    SELECT maphong
    FROM chitietphong ctp
    JOIN datphong dp ON ctp.madatphong = dp.madatphong
    WHERE dp.checkoutdate >= SYSDATE
)
;
--------------------------------------------------------
--  DDL for View THONGTINKHACHHANG
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##QLKS"."THONGTINKHACHHANG" ("MAKHACHHANG", "TENKHACHHANG", "HOKHACHHANG", "DIACHIKHACHHANG", "CCCD", "SODIENTHOAIKHACHHANG", "MADATPHONG", "NGAYDATPHONG", "SONGAYO", "CHECKINDATE", "CHECKOUTDATE", "PHUONGTHUCTHANHTOAN", "COC", "TONGTIEN", "MAPHONG", "LOAIPHONG", "MADICHVU", "TENDICHVU", "SOLUONG") AS 
  SELECT
    kh.makhachhang,
    kh.ten AS tenkhachhang,
    kh.ho AS hokhachhang,
    kh.diachi AS diachikhachhang,
    kh.cccd AS cccd,
    kh.sodienthoai AS sodienthoaikhachhang,
    dp.madatphong,
    dp.ngaydatphong,
    dp.songayo,
    dp.checkindate,
    dp.checkoutdate,
    dp.phuongthucthanhtoan,
    dp.coc,
    dp.tongtien,
    p.maphong,
    lp.loaiphong,
    dv.madichvu,
    dv.tendichvu,
    ctdv.soluong
FROM
    khachhang kh
JOIN
    datphong dp ON kh.makhachhang = dp.makhachhang
JOIN
    chitietphong ctp ON dp.madatphong = ctp.madatphong
JOIN
    phong p ON ctp.maphong = p.maphong
JOIN
    loaiphong lp ON p.maloaiphong = lp.maloaiphong
LEFT JOIN
    chitietdichvu ctdv ON dp.madatphong = ctdv.madatphong
LEFT JOIN
    dichvu dv ON ctdv.madichvu = dv.madichvu
order by MAKHACHHANG
;
--------------------------------------------------------
--  DDL for View THONGTINPHONG
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##QLKS"."THONGTINPHONG" ("MAPHONG", "LOAIPHONG", "GIAPHONG", "MACTGG", "TILETRIETKHAU", "GIAPHONGSAUTRIETKHAU") AS 
  SELECT
    p.maphong,
    lp.loaiphong,
    lp.gia AS giaphong,
    ctgg.MACTGG,
    COALESCE(ctgg.tiletrietkhau, 0) AS TILETRIETKHAU,
    lp.gia - lp.gia * COALESCE(ctgg.tiletrietkhau, 0) / 100 AS giaphongsautrietkhau
FROM phong p
JOIN loaiphong lp ON p.maloaiphong = lp.maloaiphong
LEFT JOIN ctgg ON lp.maloaiphong = ctgg.maloaiphong
               AND SYSDATE BETWEEN ctgg.ngaybatdau AND ctgg.ngayketthuc
order by MAPHONG
;
REM INSERTING into C##QLKS.CHITIETDICHVU
SET DEFINE OFF;
Insert into C##QLKS.CHITIETDICHVU (MACHITIETDICHVU,MADICHVU,MADATPHONG,SOLUONG) values ('CTDV00001','DV_VS','DP00001',1);
Insert into C##QLKS.CHITIETDICHVU (MACHITIETDICHVU,MADICHVU,MADATPHONG,SOLUONG) values ('CTDV00002','GYM','DP00001',2);
Insert into C##QLKS.CHITIETDICHVU (MACHITIETDICHVU,MADICHVU,MADATPHONG,SOLUONG) values ('CTDV00003','MS','DP00001',2);
Insert into C##QLKS.CHITIETDICHVU (MACHITIETDICHVU,MADICHVU,MADATPHONG,SOLUONG) values ('CTDV00004','POOL','DP00001',2);
Insert into C##QLKS.CHITIETDICHVU (MACHITIETDICHVU,MADICHVU,MADATPHONG,SOLUONG) values ('CTDV00005','DV_VS','DP00002',1);
Insert into C##QLKS.CHITIETDICHVU (MACHITIETDICHVU,MADICHVU,MADATPHONG,SOLUONG) values ('CTDV00006','GYM','DP00002',2);
Insert into C##QLKS.CHITIETDICHVU (MACHITIETDICHVU,MADICHVU,MADATPHONG,SOLUONG) values ('CTDV00007','MS','DP00002',2);
REM INSERTING into C##QLKS.CHITIETPHONG
SET DEFINE OFF;
Insert into C##QLKS.CHITIETPHONG (MACHITIETPHONG,MAPHONG,MADATPHONG) values ('CTPH00001','P05','DP00001');
Insert into C##QLKS.CHITIETPHONG (MACHITIETPHONG,MAPHONG,MADATPHONG) values ('CTPH00002','P08','DP00002');
REM INSERTING into C##QLKS.CTGG
SET DEFINE OFF;
Insert into C##QLKS.CTGG (MACTGG,TILETRIETKHAU,NGAYBATDAU,NGAYKETTHUC,MALOAIPHONG) values ('NNN_DOI_23',10,to_date('01-NOV-23','DD-MON-RR'),to_date('30-NOV-23','DD-MON-RR'),'DOI');
Insert into C##QLKS.CTGG (MACTGG,TILETRIETKHAU,NGAYBATDAU,NGAYKETTHUC,MALOAIPHONG) values ('NNN_DON_23',10,to_date('01-NOV-23','DD-MON-RR'),to_date('30-NOV-23','DD-MON-RR'),'DON');
Insert into C##QLKS.CTGG (MACTGG,TILETRIETKHAU,NGAYBATDAU,NGAYKETTHUC,MALOAIPHONG) values ('NNN_VIP_23',10,to_date('01-NOV-23','DD-MON-RR'),to_date('30-NOV-23','DD-MON-RR'),'VIP');
REM INSERTING into C##QLKS.DATPHONG
SET DEFINE OFF;
Insert into C##QLKS.DATPHONG (MADATPHONG,MANHANVIEN,MAKHACHHANG,NGAYDATPHONG,SONGAYO,CHECKINDATE,CHECKOUTDATE,PHUONGTHUCTHANHTOAN,COC,TONGTIEN) values ('DP00004','NV0004','KH00001',to_date('23-NOV-23','DD-MON-RR'),1,to_date('26-NOV-23','DD-MON-RR'),to_date('27-NOV-23','DD-MON-RR'),null,0,0);
Insert into C##QLKS.DATPHONG (MADATPHONG,MANHANVIEN,MAKHACHHANG,NGAYDATPHONG,SONGAYO,CHECKINDATE,CHECKOUTDATE,PHUONGTHUCTHANHTOAN,COC,TONGTIEN) values ('DP00001','NV0001','KH00001',to_date('16-NOV-23','DD-MON-RR'),null,to_date('18-NOV-23','DD-MON-RR'),to_date('20-NOV-23','DD-MON-RR'),'cash',100000,0);
Insert into C##QLKS.DATPHONG (MADATPHONG,MANHANVIEN,MAKHACHHANG,NGAYDATPHONG,SONGAYO,CHECKINDATE,CHECKOUTDATE,PHUONGTHUCTHANHTOAN,COC,TONGTIEN) values ('DP00002','NV0002','KH00002',to_date('17-NOV-23','DD-MON-RR'),null,to_date('19-NOV-23','DD-MON-RR'),to_date('22-NOV-23','DD-MON-RR'),'card',500000,0);
REM INSERTING into C##QLKS.DICHVU
SET DEFINE OFF;
Insert into C##QLKS.DICHVU (MADICHVU,TENDICHVU,GIA) values ('DV_VS','Dich vu ve sinh',100000);
Insert into C##QLKS.DICHVU (MADICHVU,TENDICHVU,GIA) values ('MS_TP','Mat-xa tai phong',500000);
Insert into C##QLKS.DICHVU (MADICHVU,TENDICHVU,GIA) values ('MS','Mat-xa',300000);
Insert into C##QLKS.DICHVU (MADICHVU,TENDICHVU,GIA) values ('MS_A_Z','Mat-xa tu A_Z',1000000);
Insert into C##QLKS.DICHVU (MADICHVU,TENDICHVU,GIA) values ('GYM','Phong Gym',50000);
Insert into C##QLKS.DICHVU (MADICHVU,TENDICHVU,GIA) values ('GYM_PT','Gym co PT',200000);
Insert into C##QLKS.DICHVU (MADICHVU,TENDICHVU,GIA) values ('POOL','Be boi',100000);
Insert into C##QLKS.DICHVU (MADICHVU,TENDICHVU,GIA) values ('POOL_PRI','Be boi rieng',1000000);
REM INSERTING into C##QLKS.KHACHHANG
SET DEFINE OFF;
Insert into C##QLKS.KHACHHANG (MAKHACHHANG,TEN,HO,DIACHI,CCCD,SODIENTHOAI,SOTHENGANHANG) values ('KH00007','Quoc','Viet',null,'411243579786','09872131237',null);
Insert into C##QLKS.KHACHHANG (MAKHACHHANG,TEN,HO,DIACHI,CCCD,SODIENTHOAI,SOTHENGANHANG) values ('KH00004','abc','Nguyen','abc','123456789012','12345678903',null);
Insert into C##QLKS.KHACHHANG (MAKHACHHANG,TEN,HO,DIACHI,CCCD,SODIENTHOAI,SOTHENGANHANG) values ('KH00003','Chi','Nguyen','So 12, Chua Boc, Dong Da, Ha Noi','036039131414','0219153131','0844931212331231');
Insert into C##QLKS.KHACHHANG (MAKHACHHANG,TEN,HO,DIACHI,CCCD,SODIENTHOAI,SOTHENGANHANG) values ('KH00001','Ngan','Ha','So 12, Chua Boc, Dong Da, Ha Noi','036032131414','0213122131','0841131239231231');
Insert into C##QLKS.KHACHHANG (MAKHACHHANG,TEN,HO,DIACHI,CCCD,SODIENTHOAI,SOTHENGANHANG) values ('KH00002','Anh','Nguyen Phuong','So 12, Chua Boc, Dong Da, Ha Noi','036032134414','0213922131','0891131231231231');
REM INSERTING into C##QLKS.LOAIPHONG
SET DEFINE OFF;
Insert into C##QLKS.LOAIPHONG (MALOAIPHONG,LOAIPHONG,GIA) values ('DON','Phong don',200000);
Insert into C##QLKS.LOAIPHONG (MALOAIPHONG,LOAIPHONG,GIA) values ('DOI','Phong doi',500000);
Insert into C##QLKS.LOAIPHONG (MALOAIPHONG,LOAIPHONG,GIA) values ('VIP','Phong doi vip',1000000);
Insert into C##QLKS.LOAIPHONG (MALOAIPHONG,LOAIPHONG,GIA) values ('SUKIEN','Phong su kien',3000000);
Insert into C##QLKS.LOAIPHONG (MALOAIPHONG,LOAIPHONG,GIA) values ('TANGTHUONG','Tang thuong sieu vip',10000000);
Insert into C##QLKS.LOAIPHONG (MALOAIPHONG,LOAIPHONG,GIA) values ('CHUCNANG','Phong chuc nang',null);
Insert into C##QLKS.LOAIPHONG (MALOAIPHONG,LOAIPHONG,GIA) values ('STAFF','Phong nhan vien',null);
REM INSERTING into C##QLKS.NHANVIEN
SET DEFINE OFF;
Insert into C##QLKS.NHANVIEN (MANHANVIEN,TEN,HO,CHUCVU,DIACHI,SODIENTHOAI) values ('NV0007','Nam','DInh','cac','abc','1234567890');
Insert into C##QLKS.NHANVIEN (MANHANVIEN,TEN,HO,CHUCVU,DIACHI,SODIENTHOAI) values ('NV0001','Nam','Dinh Thanh','Nhan vien','so 66 ngo 28, Tu Lien, Tay Ho, Ha Noi','0382027003');
Insert into C##QLKS.NHANVIEN (MANHANVIEN,TEN,HO,CHUCVU,DIACHI,SODIENTHOAI) values ('NV0002','Nghia','Nguyen The','Gymer','abc',null);
Insert into C##QLKS.NHANVIEN (MANHANVIEN,TEN,HO,CHUCVU,DIACHI,SODIENTHOAI) values ('NV0003','Hung','Nguyen Duy','Nhan vien','abc',null);
Insert into C##QLKS.NHANVIEN (MANHANVIEN,TEN,HO,CHUCVU,DIACHI,SODIENTHOAI) values ('NV0004','A Khang','Tran','Wibu','abc',null);
Insert into C##QLKS.NHANVIEN (MANHANVIEN,TEN,HO,CHUCVU,DIACHI,SODIENTHOAI) values ('NV0005','Khoi','Truong Ngoc Minh','Yeu Chi','abc',null);
Insert into C##QLKS.NHANVIEN (MANHANVIEN,TEN,HO,CHUCVU,DIACHI,SODIENTHOAI) values ('NV0006','Son','Doan Van','Faker','abc',null);
REM INSERTING into C##QLKS.PHONG
SET DEFINE OFF;
Insert into C##QLKS.PHONG (MAPHONG,MALOAIPHONG,SOPHONG) values ('P01','CHUCNANG','101');
Insert into C##QLKS.PHONG (MAPHONG,MALOAIPHONG,SOPHONG) values ('P02','CHUCNANG','102');
Insert into C##QLKS.PHONG (MAPHONG,MALOAIPHONG,SOPHONG) values ('P03','STAFF','103');
Insert into C##QLKS.PHONG (MAPHONG,MALOAIPHONG,SOPHONG) values ('P04','DON','201');
Insert into C##QLKS.PHONG (MAPHONG,MALOAIPHONG,SOPHONG) values ('P05','DON','202');
Insert into C##QLKS.PHONG (MAPHONG,MALOAIPHONG,SOPHONG) values ('P06','DOI','203');
Insert into C##QLKS.PHONG (MAPHONG,MALOAIPHONG,SOPHONG) values ('P07','DOI','204');
Insert into C##QLKS.PHONG (MAPHONG,MALOAIPHONG,SOPHONG) values ('P08','VIP','205');
Insert into C##QLKS.PHONG (MAPHONG,MALOAIPHONG,SOPHONG) values ('P09','SUKIEN','301');
Insert into C##QLKS.PHONG (MAPHONG,MALOAIPHONG,SOPHONG) values ('P10','SUKIEN','302');
Insert into C##QLKS.PHONG (MAPHONG,MALOAIPHONG,SOPHONG) values ('P11','DON','401');
Insert into C##QLKS.PHONG (MAPHONG,MALOAIPHONG,SOPHONG) values ('P12','DON','402');
Insert into C##QLKS.PHONG (MAPHONG,MALOAIPHONG,SOPHONG) values ('P13','DOI','403');
Insert into C##QLKS.PHONG (MAPHONG,MALOAIPHONG,SOPHONG) values ('P14','DOI','404');
Insert into C##QLKS.PHONG (MAPHONG,MALOAIPHONG,SOPHONG) values ('P15','VIP','405');
Insert into C##QLKS.PHONG (MAPHONG,MALOAIPHONG,SOPHONG) values ('P16','DON','501');
Insert into C##QLKS.PHONG (MAPHONG,MALOAIPHONG,SOPHONG) values ('P17','DON','502');
Insert into C##QLKS.PHONG (MAPHONG,MALOAIPHONG,SOPHONG) values ('P18','DOI','503');
Insert into C##QLKS.PHONG (MAPHONG,MALOAIPHONG,SOPHONG) values ('P19','DOI','504');
Insert into C##QLKS.PHONG (MAPHONG,MALOAIPHONG,SOPHONG) values ('P20','VIP','505');
Insert into C##QLKS.PHONG (MAPHONG,MALOAIPHONG,SOPHONG) values ('P21','TANGTHUONG','601');
--------------------------------------------------------
--  DDL for Index UNIQUE_CARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##QLKS"."UNIQUE_CARD" ON "C##QLKS"."KHACHHANG" ("SOTHENGANHANG") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UNIQUE_CCCD
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##QLKS"."UNIQUE_CCCD" ON "C##QLKS"."KHACHHANG" ("CCCD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UNIQUE_SDTKHACH
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##QLKS"."UNIQUE_SDTKHACH" ON "C##QLKS"."KHACHHANG" ("SODIENTHOAI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UNIQUE_SODIENTHOAI
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##QLKS"."UNIQUE_SODIENTHOAI" ON "C##QLKS"."NHANVIEN" ("SODIENTHOAI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Procedure CAPNHATTONGTIENDATPHONG
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##QLKS"."CAPNHATTONGTIENDATPHONG" (p_madatphong VARCHAR2) IS
    v_tongtien INT;
BEGIN
    -- Tính giá phòng sau khi áp d?ng gi?m giá (n?u có)
    SELECT COALESCE(SUM(lp.gia * (1 - COALESCE(ctgg.tiletrietkhau, 0) / 100)), 0)
    INTO v_tongtien
    FROM phong p
    JOIN loaiphong lp ON p.maloaiphong = lp.maloaiphong
    LEFT JOIN ctgg ON lp.maloaiphong = ctgg.maloaiphong
                   AND extract(month from SYSDATE) BETWEEN extract(month from ctgg.ngaybatdau) AND extract(month from ctgg.ngayketthuc)
    WHERE p.maphong IN (SELECT maphong FROM chitietphong WHERE madatphong = p_madatphong);

    -- C?ng thêm giá d?ch v?
    SELECT v_tongtien + COALESCE(SUM(dv.gia * ctdv.soluong), 0)
    INTO v_tongtien
    FROM dichvu dv
    JOIN chitietdichvu ctdv ON dv.madichvu = ctdv.madichvu
    WHERE ctdv.madatphong = p_madatphong;

    -- C?p nh?t t?ng ti?n trong b?ng datphong
    UPDATE datphong
    SET tongtien = v_tongtien
    WHERE madatphong = p_madatphong;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        -- X? lı ngo?i l? n?u có
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('L?i: ' || SQLERRM);
END CapNhatTongTienDatPhong;

/
--------------------------------------------------------
--  DDL for Procedure THEMDATPHONG
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##QLKS"."THEMDATPHONG" (
    p_manhanvien VARCHAR2,
    p_makhachhang VARCHAR2,
    p_SONGAYO NUMBER,
    p_CHECKINDATE DATE
    
) IS
BEGIN
    INSERT INTO DATPHONG (
            MADATPHONG,
            MANHANVIEN,
            MAKHACHHANG,
            NGAYDATPHONG,
            SONGAYO,
            CHECKINDATE,
            CHECKOUTDATE,
            PHUONGTHUCTHANHTOAN,
            coc,
            TONGTIEN
        ) VALUES (
            'DP'||LPAD(seq_madatphong.NEXTVAL, 5, '0'),
            p_manhanvien,
            p_makhachhang,
            sysdate,
            p_songayo,
            p_CHECKINDATE,
            p_CHECKINDATE + p_songayo,
            '',
            0,
            0
        );

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('B?n ghi ??t phòng ?ã ???c thêm thành công.');
END ThemDatPhong;

/
--------------------------------------------------------
--  DDL for Procedure THEMDICHVU
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##QLKS"."THEMDICHVU" (
    p_madatphong VARCHAR2,
    p_madichvu VARCHAR2,
    p_SOLUONG NUMBER
) IS
BEGIN
    INSERT INTO CHITIETDICHVU (machitietdichvu, MADICHVU, MADATPHONG, SOLUONG)
        VALUES ('CTDV'||LPAD(SEQ_MACHITIETDICHVU.NEXTVAL, 5, '0'), p_madichvu, p_madatphong, p_soluong);
end ThemDichVu;

/
--------------------------------------------------------
--  DDL for Procedure THEMKHACHHANG
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##QLKS"."THEMKHACHHANG" (
    p_ten VARCHAR2,
    p_ho VARCHAR2,
    p_sodienthoai VARCHAR2,
    p_cccd VARCHAR2,
    p_diachi VARCHAR2,
    p_sothenganhang VARCHAR2
) IS
BEGIN
    INSERT INTO KHACHHANG (
            MAKHACHHANG,
            TEN,
            HO,
            SODIENTHOAI,
            CCCD,
            DIACHI,
            SOTHENGANHANG
        ) VALUES (
            'KH' || LPAD(seq_makhachhang.NEXTVAL, 5, '0'),
            p_ten,
            p_ho,
            p_sodienthoai,
            p_cccd,
            p_diachi,
            p_sothenganhang
        );

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('B?n ghi khách hàng ?ã ???c thêm thành công.');
END ThemKhachHang;

/
--------------------------------------------------------
--  DDL for Procedure THEMNHANVIEN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##QLKS"."THEMNHANVIEN" (
    p_ten VARCHAR2,
    p_ho VARCHAR2,
    p_chucvu varchar2,
    p_diachi VARCHAR2,
    p_sodienthoai VARCHAR2
) IS
BEGIN
    INSERT INTO NHANVIEN (
            MANHANVIEN,
            TEN,
            HO,
            chucvu,
            DIACHI,
            SODIENTHOAI
        ) VALUES (
            'NV' || LPAD(seq_makhachhang.NEXTVAL, 4, '0'),
            p_ten,
            p_ho,
            p_chucvu,
            p_diachi,
            p_sodienthoai
        );

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('B?n ghi nhân viên ?ã ???c thêm thành công.');
END ThemNhanVien;

/
--------------------------------------------------------
--  DDL for Procedure THEMTHONGTINKHACHDATTRUOC
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##QLKS"."THEMTHONGTINKHACHDATTRUOC" (
    p_manhanvien VARCHAR2,
    p_ten VARCHAR2,
    p_ho VARCHAR2,
    p_sodienthoai varchar2,
    p_cccd VARCHAR2,
    p_maphong varchar2,
    p_CHECKINDATE date,
    p_songayo NUMBER
) IS
    v_makhachhang VARCHAR2(10);
    v_madatphong VARCHAR2(10);
    v_giaphong number;
BEGIN
        ThemKhachHang(p_ten, p_ho, p_sodienthoai, p_cccd, null, null);
        SELECT MAKHACHHANG INTO v_makhachhang
            FROM KHACHHANG
            order by MAKHACHHANG desc
            FETCH FIRST 1 row ONLY;
        ThemDatPhong(p_manhanvien, v_makhachhang, p_songayo, p_CHECKINDATE);
            SELECT madatphong INTO v_madatphong
            FROM datphong
            order by madatphong desc
            FETCH FIRST 1 row ONLY;
        INSERT INTO chitietphong(machitietphong, madatphong, maphong)
        VALUES ('CTPH'||LPAD(seq_machitietphong.NEXTVAL, 5, '0'), v_madatphong, p_maphong);
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('B?n ghi khách ??t tr??c ?ã ???c thêm thành công.');
        
        SELECT giaphong INTO v_giaphong
            FROM ThongTinPhong
            WHERE maphong = p_maphong
            FETCH FIRST 1 ROW ONLY;
        UPDATE DATPHONG
            set coc = v_giaphong/2
            WHERE MADATPHONG = v_madatphong;
END ThemThongTinKhachDatTruoc;

/
--------------------------------------------------------
--  DDL for Procedure THEMTHONGTINTAIQUAY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##QLKS"."THEMTHONGTINTAIQUAY" (
    p_manhanvien VARCHAR2,
    p_ten VARCHAR2,
    p_ho VARCHAR2,
    p_sodienthoai VARCHAR2,
    p_cccd varchar2,
    p_diachi varchar2,
    p_maphong VARCHAR2,
    p_CHECKINDATE date,
    p_songayo number
) is
    v_makhachhang VARCHAR2(10);
    v_madatphong VARCHAR2(10);
BEGIN
    THEMKHACHHANG(P_TEN, P_HO, P_SODIENTHOAI, P_CCCD, P_DIACHI, '');
    SELECT MAKHACHHANG INTO v_makhachhang
        FROM KHACHHANG
        order by MAKHACHHANG desc
        FETCH FIRST 1 row ONLY;
    THEMDATPHONG(P_MANHANVIEN, v_MAKHACHHANG, P_SONGAYO, P_CHECKINDATE);
    SELECT MADATPHONG INTO v_madatphong
        FROM DATPHONG
        order by MADATPHONG desc
        FETCH FIRST 1 row ONLY;
    INSERT INTO chitietphong(machitietphong, madatphong, maphong)
        VALUES ('CTPH'||LPAD(seq_machitietphong.NEXTVAL, 5, '0'), v_madatphong, p_maphong);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('B?n ghi t?i qu?y ?ã ???c thêm thành công.');
END ThemThongTinTaiQuay;

/
--------------------------------------------------------
--  DDL for Function YESNO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "C##QLKS"."YESNO" (f_giaTri VARCHAR2) RETURN BOOLEAN IS
BEGIN
    -- Ki?m tra giá tr? c?a tham s? và tr? v? BOOLEAN t??ng ?ng
    IF UPPER(f_giaTri) IN ('YES', 'Y') THEN
        RETURN TRUE;
    ELSIF UPPER(f_giaTri) IN ('NO', 'N') THEN
        RETURN FALSE;
    ELSE
        -- N?u giá tr? không h?p l?, có th? x? lı tùy thu?c vào yêu c?u c?a b?n
        -- Ví d?: có th? tr? v? giá tr? m?c ??nh, raise exception, ho?c làm ?i?u gì ?ó khác
        RAISE_APPLICATION_ERROR(-20001, 'Giá tr? không h?p l?. Nh?p vào "yes", "no", "y", ho?c "n".');
    END IF;
END YesNo;

/
--------------------------------------------------------
--  Constraints for Table DATPHONG
--------------------------------------------------------

  ALTER TABLE "C##QLKS"."DATPHONG" ADD CHECK (phuongthucthanhtoan IN ('card', 'cash', 'transfer')) ENABLE;
  ALTER TABLE "C##QLKS"."DATPHONG" ADD PRIMARY KEY ("MADATPHONG")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PHONG
--------------------------------------------------------

  ALTER TABLE "C##QLKS"."PHONG" ADD PRIMARY KEY ("MAPHONG")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOAIPHONG
--------------------------------------------------------

  ALTER TABLE "C##QLKS"."LOAIPHONG" ADD PRIMARY KEY ("MALOAIPHONG")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DICHVU
--------------------------------------------------------

  ALTER TABLE "C##QLKS"."DICHVU" ADD PRIMARY KEY ("MADICHVU")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CHITIETDICHVU
--------------------------------------------------------

  ALTER TABLE "C##QLKS"."CHITIETDICHVU" ADD PRIMARY KEY ("MACHITIETDICHVU")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NHANVIEN
--------------------------------------------------------

  ALTER TABLE "C##QLKS"."NHANVIEN" ADD CHECK (REGEXP_LIKE(SODIENTHOAI, '^[0-9]+$')) ENABLE;
  ALTER TABLE "C##QLKS"."NHANVIEN" ADD PRIMARY KEY ("MANHANVIEN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##QLKS"."NHANVIEN" ADD CONSTRAINT "UNIQUE_SODIENTHOAI" UNIQUE ("SODIENTHOAI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CTGG
--------------------------------------------------------

  ALTER TABLE "C##QLKS"."CTGG" ADD CHECK (tiletrietkhau >= 0 and tiletrietkhau <= 100) ENABLE;
  ALTER TABLE "C##QLKS"."CTGG" ADD CHECK (ngaybatdau < ngayketthuc) ENABLE;
  ALTER TABLE "C##QLKS"."CTGG" ADD PRIMARY KEY ("MACTGG")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KHACHHANG
--------------------------------------------------------

  ALTER TABLE "C##QLKS"."KHACHHANG" ADD CHECK (REGEXP_LIKE(cccd, '^[0-9]+$') and LENGTH(cccd) = 12) ENABLE;
  ALTER TABLE "C##QLKS"."KHACHHANG" ADD CHECK (REGEXP_LIKE(SODIENTHOAI, '^[0-9]+$')) ENABLE;
  ALTER TABLE "C##QLKS"."KHACHHANG" ADD CHECK (REGEXP_LIKE(SOTHENGANHANG, '^[0-9]+$')) ENABLE;
  ALTER TABLE "C##QLKS"."KHACHHANG" ADD PRIMARY KEY ("MAKHACHHANG")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##QLKS"."KHACHHANG" ADD CONSTRAINT "UNIQUE_CARD" UNIQUE ("SOTHENGANHANG")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##QLKS"."KHACHHANG" ADD CONSTRAINT "UNIQUE_CCCD" UNIQUE ("CCCD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##QLKS"."KHACHHANG" ADD CONSTRAINT "UNIQUE_SDTKHACH" UNIQUE ("SODIENTHOAI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CHITIETPHONG
--------------------------------------------------------

  ALTER TABLE "C##QLKS"."CHITIETPHONG" ADD PRIMARY KEY ("MACHITIETPHONG")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CHITIETDICHVU
--------------------------------------------------------

  ALTER TABLE "C##QLKS"."CHITIETDICHVU" ADD FOREIGN KEY ("MADICHVU")
	  REFERENCES "C##QLKS"."DICHVU" ("MADICHVU") ENABLE;
  ALTER TABLE "C##QLKS"."CHITIETDICHVU" ADD FOREIGN KEY ("MADATPHONG")
	  REFERENCES "C##QLKS"."DATPHONG" ("MADATPHONG") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CHITIETPHONG
--------------------------------------------------------

  ALTER TABLE "C##QLKS"."CHITIETPHONG" ADD FOREIGN KEY ("MAPHONG")
	  REFERENCES "C##QLKS"."PHONG" ("MAPHONG") ENABLE;
  ALTER TABLE "C##QLKS"."CHITIETPHONG" ADD FOREIGN KEY ("MADATPHONG")
	  REFERENCES "C##QLKS"."DATPHONG" ("MADATPHONG") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CTGG
--------------------------------------------------------

  ALTER TABLE "C##QLKS"."CTGG" ADD FOREIGN KEY ("MALOAIPHONG")
	  REFERENCES "C##QLKS"."LOAIPHONG" ("MALOAIPHONG") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DATPHONG
--------------------------------------------------------

  ALTER TABLE "C##QLKS"."DATPHONG" ADD FOREIGN KEY ("MANHANVIEN")
	  REFERENCES "C##QLKS"."NHANVIEN" ("MANHANVIEN") ENABLE;
  ALTER TABLE "C##QLKS"."DATPHONG" ADD FOREIGN KEY ("MAKHACHHANG")
	  REFERENCES "C##QLKS"."KHACHHANG" ("MAKHACHHANG") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PHONG
--------------------------------------------------------

  ALTER TABLE "C##QLKS"."PHONG" ADD FOREIGN KEY ("MALOAIPHONG")
	  REFERENCES "C##QLKS"."LOAIPHONG" ("MALOAIPHONG") ENABLE;
