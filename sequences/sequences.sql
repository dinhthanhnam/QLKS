--sinh mã khách hàng
CREATE SEQUENCE seq_makhachhang
   START WITH 1
   INCREMENT BY 1
   NOCACHE
   NOCYCLE;

--sinh mã nhân viên
CREATE SEQUENCE seq_manhanvien
   START WITH 1
   INCREMENT BY 1
   NOCACHE
   NOCYCLE;

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

alter sequence SEQ_MACHITIETPHONG restart;
alter sequence SEQ_MAKHACHHANG restart;
alter sequence SEQ_MACHITIETDICHVU restart;
alter sequence SEQ_MAPHONG restart;
alter sequence SEQ_MADATPHONG restart;
alter sequence SEQ_MANHANVIEN restart;
