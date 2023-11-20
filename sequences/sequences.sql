--sinh mã khách hàng
CREATE SEQUENCE seq_makhachsan
    START WITH 1
    increment BY 1
    NOCACHE
    NOCYCLE;

CREATE SEQUENCE seq_makhachhang
   START WITH 1
   INCREMENT BY 1
   NOCACHE
   NOCYCLE;

ALTER SEQUENCE seq_makhachhang restart;

INSERT INTO KHACHHANG (MAKHACHHANG, TEN, HO, CCCD, DIACHI, SODIENTHOAI, SOTHENGANHANG)
VALUES ('KH' || LPAD(seq_makhachhang.NEXTVAL, 5, '0'), 'Ngan', 'Ha', 036032131414, 'So 12, Chua Boc, Dong Da, Ha Noi', '0213123131', '0841131231231');
--sinh mã nhân viên
CREATE SEQUENCE seq_manhanvien
   START WITH 1
   INCREMENT BY 1
   NOCACHE
   NOCYCLE;

ALTER SEQUENCE seq_manhanvien restart;
--sinh mã phòng
CREATE SEQUENCE seq_maphong
   START WITH 1
   INCREMENT BY 1
   NOCACHE
   NOCYCLE;

--sinh mã dịch vụ
CREATE SEQUENCE seq_madatphong
   START WITH 1
   INCREMENT BY 1
   NOCACHE
   NOCYCLE;

--sinh mã chi tiết phòng
CREATE SEQUENCE seq_machitietphong
   START WITH 1
   INCREMENT BY 1
   NOCACHE
   NOCYCLE;

--sinh mã chi tiết dịch vụ
CREATE SEQUENCE seq_machitietdichvu
   START WITH 1
   INCREMENT BY 1
   NOCACHE
   NOCYCLE;


