--nhanvien
INSERT INTO NHANVIEN (manhanvien, ten, ho, CHUCVU, DIACHI, SODIENTHOAI)
values ('NV'||LPAD(seq_manhanvien.NEXTVAL, 4, '0'), 'Nam', 'Dinh Thanh','Nhan vien', 'so 66 ngo 28, Tu Lien, Tay Ho, Ha Noi','0382027003');
INSERT INTO NHANVIEN (manhanvien, ten, ho, CHUCVU, DIACHI, SODIENTHOAI)
values ('NV'||LPAD(seq_manhanvien.NEXTVAL, 4, '0'), 'Nghia', 'Nguyen The','Gymer', 'abc', null);
INSERT INTO NHANVIEN (manhanvien, ten, ho, CHUCVU, DIACHI, SODIENTHOAI)
values ('NV'||LPAD(seq_manhanvien.NEXTVAL, 4, '0'), 'Hung', 'Nguyen Duy','Nhan vien', 'abc', null);
INSERT INTO NHANVIEN (manhanvien, ten, ho, CHUCVU, DIACHI, SODIENTHOAI)
values ('NV'||LPAD(seq_manhanvien.NEXTVAL, 4, '0'), 'A Khang', 'Tran','Wibu', 'abc', null);
INSERT INTO NHANVIEN (manhanvien, ten, ho, CHUCVU, DIACHI, SODIENTHOAI)
values ('NV'||LPAD(seq_manhanvien.NEXTVAL, 4, '0'), 'Khoi', 'Truong Ngoc Minh','Yeu Chi', 'abc', null);
INSERT INTO NHANVIEN (manhanvien, ten, ho, CHUCVU, DIACHI, SODIENTHOAI)
values ('NV'||LPAD(seq_manhanvien.NEXTVAL, 4, '0'), 'Son', 'Doan Van','Faker', 'abc', null);
--khachhang
--sinh mã khách hàng
INSERT INTO KHACHHANG (MAKHACHHANG, TEN, HO, CCCD, DIACHI, SODIENTHOAI, SOTHENGANHANG)
values ('KH'||LPAD(SEQ_MAKHACHHANG.NEXTVAL, 5, '0'),'Ngan', 'Ha', '036032131414', 'So 12, Chua Boc, Dong Da, Ha Noi', '0213122131', '0841131239231231');
INSERT INTO KHACHHANG (MAKHACHHANG, TEN, HO, CCCD, DIACHI, SODIENTHOAI, SOTHENGANHANG)
values ('KH'||LPAD(SEQ_MAKHACHHANG.NEXTVAL, 5, '0'),'Anh', 'Nguyen Phuong', '036032134414', 'So 12, Chua Boc, Dong Da, Ha Noi', '0213922131', '0891131231231231');
INSERT INTO KHACHHANG (MAKHACHHANG, TEN, HO, CCCD, DIACHI, SODIENTHOAI, SOTHENGANHANG)
values ('KH'||LPAD(SEQ_MAKHACHHANG.NEXTVAL, 5, '0'),'Chi', 'Nguyen', '036039131414', 'So 12, Chua Boc, Dong Da, Ha Noi', '0219153131', '0844931212331231');

--loai phong
INSERT INTO LOAIPHONG (MALOAIPHONG, LOAIPHONG, GIA)
VALUES ('DON', 'Phong don', 200000);
INSERT INTO LOAIPHONG (MALOAIPHONG, LOAIPHONG, GIA)
VALUES ('DOI', 'Phong doi', 500000);
INSERT INTO LOAIPHONG (MALOAIPHONG, LOAIPHONG, GIA)
VALUES ('VIP', 'Phong doi vip', 1000000);
INSERT INTO LOAIPHONG (MALOAIPHONG, LOAIPHONG, GIA)
VALUES ('SUKIEN', 'Phong su kien', 3000000);
INSERT INTO LOAIPHONG (MALOAIPHONG, LOAIPHONG, GIA)
VALUES ('TANGTHUONG', 'Tang thuong sieu vip', 10000000);
INSERT INTO LOAIPHONG (MALOAIPHONG, LOAIPHONG, GIA)
VALUES ('CHUCNANG', 'Phong chuc nang', null);
INSERT INTO LOAIPHONG (MALOAIPHONG, LOAIPHONG, GIA)
VALUES ('STAFF', 'Phong nhan vien', null);
--ctgg
-- 1 số vấn đề: các chương trình giảm giá lẽ ra nên được áp dụng cho nhiều phòng, nhưng đang phải tạo 3 ctgg với 3 mã khác nhau cho cùng 1 chương trình, sẽ suy nghĩ thêm
INSERT INTO CTGG ( mactgg, TILETRIETKHAU, ngaybatdau, ngayketthuc, MALOAIPHONG)
VALUES ('NNN_DOI_23', 10, '1-nov-2023', '30-nov-2023','DOI');
INSERT INTO CTGG ( mactgg, TILETRIETKHAU, ngaybatdau, ngayketthuc, MALOAIPHONG)
VALUES ('NNN_DON_23', 10, '1-nov-2023', '30-nov-2023','DON');
INSERT INTO CTGG ( mactgg, TILETRIETKHAU, ngaybatdau, ngayketthuc, MALOAIPHONG)
VALUES ('NNN_VIP_23', 10, '1-nov-2023', '30-nov-2023','VIP');
INSERT INTO CTGG ( MACTGG, TILETRIETKHAU, NGAYBATDAU, NGAYKETTHUC, MALOAIPHONG)
VALUES ('Valen_VIP_23', 20,'14-feb-2023','15-feb-2023', 'VIP');
--Phong
-- phòng cần có thêm trạng thái, dùng trigger, hoặc 1 stored procedure để lưu lại truy vấn tìm các phòng còn trống
-- tạm thời để phục vụ việc test tính khả thi của csdl thì chưa thêm trạng thái, nhưng nhất định phải có
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'CHUCNANG', '101');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'CHUCNANG', '102');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'STAFF', '103');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'DON', '201');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'DON', '202');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'DOI', '203');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'DOI', '204');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'VIP', '205');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'SUKIEN', '301');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'SUKIEN', '302');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'DON', '401');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'DON', '402');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'DOI', '403');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'DOI', '404');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'VIP', '405');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'DON', '501');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'DON', '502');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'DOI', '503');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'DOI', '504');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'VIP', '505');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'TANGTHUONG', '601');

--dichvu
--note here:
INSERT INTO DICHVU (MADICHVU, TENDICHVU, GIA)
VALUES ('DV_VS', 'Dich vu ve sinh', 100000);
INSERT INTO DICHVU (MADICHVU, TENDICHVU, GIA)
VALUES ('MS_TP', 'Mat-xa tai phong', 500000);
INSERT INTO DICHVU (MADICHVU, TENDICHVU, GIA)
VALUES ('MS', 'Mat-xa', 300000);
INSERT INTO DICHVU (MADICHVU, TENDICHVU, GIA)
VALUES ('MS_A_Z', 'Mat-xa tu A_Z', 1000000);
INSERT INTO DICHVU (MADICHVU, TENDICHVU, GIA)
VALUES ('GYM', 'Phong Gym', 50000);
INSERT INTO DICHVU (MADICHVU, TENDICHVU, GIA)
VALUES ('GYM_PT', 'Gym co PT', 200000);
INSERT INTO DICHVU (MADICHVU, TENDICHVU, GIA)
VALUES ('POOL', 'Be boi', 100000);
INSERT INTO DICHVU (MADICHVU, TENDICHVU, GIA)
VALUES ('POOL_PRI', 'Be boi rieng', 1000000);
select * from dichvu;
--booking
--cần nhiều trigger: trigger thêm thời gian check in của khách(lập tức), trigger thêm thời gian check out(lập tức), trigger update tổng tiền (hoặc stored procedure, vì tổng tiền cũng ko cần update lập tức)
INSERT INTO DATPHONG (MADATPHONG, MANHANVIEN, MAKHACHHANG, NGAYDATPHONG, CHECKINDATE, CHECKOUTDATE, PHUONGTHUCTHANHTOAN, coc, TONGTIEN)
VALUES ('DP'||LPAD(seq_madatphong.NEXTVAL, 5, '0'), 'NV0001', 'KH00001', '16-nov-2023', '18-nov-2023', '20-nov-2023' , 'cash', 100000, 0);
INSERT INTO DATPHONG (MADATPHONG, MANHANVIEN, MAKHACHHANG, NGAYDATPHONG, CHECKINDATE, CHECKOUTDATE, PHUONGTHUCTHANHTOAN, coc, TONGTIEN)
VALUES ('DP'||LPAD(seq_madatphong.NEXTVAL, 5, '0'), 'NV0002', 'KH00002', '17-nov-2023', '19-nov-2023', '22-nov-2023', 'card', 500000, 0);
--chitietphong
INSERT INTO CHITIETPHONG (MACHITIETPHONG,MADATPHONG, MAPHONG)
VALUES ('CTPH'||LPAD(seq_machitietphong.NEXTVAL, 5, '0'),'DP00001','P05');
INSERT INTO CHITIETPHONG (MACHITIETPHONG,MADATPHONG, MAPHONG)
VALUES ('CTPH'||LPAD(seq_machitietphong.NEXTVAL, 5, '0'),'DP00002','P08');
--chitietdichvu:
INSERT INTO CHITIETDICHVU (MACHITIETDICHVU, MADATPHONG, MADICHVU, soluong)
VALUES ('CTDV'||LPAD(seq_machitietdichvu.NEXTVAL, 5, '0'),'DP00001','DV_VS', 1);
INSERT INTO CHITIETDICHVU (MACHITIETDICHVU, MADATPHONG, MADICHVU, soluong)
VALUES ('CTDV'||LPAD(seq_machitietdichvu.NEXTVAL, 5, '0'),'DP00001','GYM', 2);
INSERT INTO CHITIETDICHVU (MACHITIETDICHVU, MADATPHONG, MADICHVU, soluong)
VALUES ('CTDV'||LPAD(seq_machitietdichvu.NEXTVAL, 5, '0'),'DP00001','MS', 2);
INSERT INTO CHITIETDICHVU (MACHITIETDICHVU, MADATPHONG, MADICHVU, soluong)
VALUES ('CTDV'||LPAD(seq_machitietdichvu.NEXTVAL, 5, '0'),'DP00001','POOL', 2);
INSERT INTO CHITIETDICHVU (MACHITIETDICHVU, MADATPHONG, MADICHVU, soluong)
VALUES ('CTDV'||LPAD(seq_machitietdichvu.NEXTVAL, 5, '0'),'DP00002','DV_VS', 1);
INSERT INTO CHITIETDICHVU (MACHITIETDICHVU, MADATPHONG, MADICHVU, soluong)
VALUES ('CTDV'||LPAD(seq_machitietdichvu.NEXTVAL, 5, '0'),'DP00002','GYM', 2);
INSERT INTO CHITIETDICHVU (MACHITIETDICHVU, MADATPHONG, MADICHVU, soluong)
VALUES ('CTDV'||LPAD(seq_machitietdichvu.NEXTVAL, 5, '0'),'DP00002','MS', 2);
