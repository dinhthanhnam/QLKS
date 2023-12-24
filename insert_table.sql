--nhanvien
INSERT INTO NHANVIEN (manhanvien, ten, ho, CHUCVU, DIACHI, SODIENTHOAI)
values ('NV'||LPAD(seq_manhanvien.NEXTVAL, 4, '0'), 'Nam', 'Dinh Thanh','Le tan', 'so 66 ngo 28, Tu Lien, Tay Ho, Ha Noi','0382027003');
INSERT INTO NHANVIEN (manhanvien, ten, ho, CHUCVU, DIACHI, SODIENTHOAI)
values ('NV'||LPAD(seq_manhanvien.NEXTVAL, 4, '0'), 'Nghia', 'Nguyen The','Le tan', 'so 139, Tam Trinh, Ha Noi', '0872027403');
INSERT INTO NHANVIEN (manhanvien, ten, ho, CHUCVU, DIACHI, SODIENTHOAI)
values ('NV'||LPAD(seq_manhanvien.NEXTVAL, 4, '0'), 'Hung', 'Nguyen Duy','Le tan', 'Tieu vuong quoc Thanh Hoa', '0652024563');
INSERT INTO NHANVIEN (manhanvien, ten, ho, CHUCVU, DIACHI, SODIENTHOAI)
values ('NV'||LPAD(seq_manhanvien.NEXTVAL, 4, '0'), 'A Khang', 'Tran','Le tan', '139 Giap Bat', '0323023353');
INSERT INTO NHANVIEN (manhanvien, ten, ho, CHUCVU, DIACHI, SODIENTHOAI)
values ('NV'||LPAD(seq_manhanvien.NEXTVAL, 4, '0'), 'Khoi', 'Truong Ngoc Minh','Le tan',' Tieu vuong quoc Thanh Hoa', '0766443353');
INSERT INTO NHANVIEN (manhanvien, ten, ho, CHUCVU, DIACHI, SODIENTHOAI)
values ('NV'||LPAD(seq_manhanvien.NEXTVAL, 4, '0'), 'Son', 'Doan Van','Le tan', 'Dia Nguc', '0896157137');

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
VALUES ('FAMILY', 'Phong gia dinh', 1200000);
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
VALUES ('Noel_DOI_23', 20,'25-dec-2023','31-dec-2023', 'DOI');
INSERT INTO CTGG ( MACTGG, TILETRIETKHAU, NGAYBATDAU, NGAYKETTHUC, MALOAIPHONG)
VALUES ('Noel_DON_23', 20,'25-dec-2023','31-dec-2023', 'DON');
INSERT INTO CTGG ( MACTGG, TILETRIETKHAU, NGAYBATDAU, NGAYKETTHUC, MALOAIPHONG)
VALUES ('Noel_VIP_23', 20,'25-dec-2023','31-dec-2023', 'VIP');
INSERT INTO CTGG ( MACTGG, TILETRIETKHAU, NGAYBATDAU, NGAYKETTHUC, MALOAIPHONG)
VALUES ('Noel_FAM_23', 20,'25-dec-2023','31-dec-2023', 'VIP');

INSERT INTO CTGG ( MACTGG, TILETRIETKHAU, NGAYBATDAU, NGAYKETTHUC, MALOAIPHONG)
VALUES ('NY_DOI_24', 20,'1-jan-2024','3-jan-2024', 'DOI');
INSERT INTO CTGG ( MACTGG, TILETRIETKHAU, NGAYBATDAU, NGAYKETTHUC, MALOAIPHONG)
VALUES ('NY_DON_24', 20,'1-jan-2024','3-jan-2024', 'DON');
INSERT INTO CTGG ( MACTGG, TILETRIETKHAU, NGAYBATDAU, NGAYKETTHUC, MALOAIPHONG)
VALUES ('NY_VIP_24', 20,'1-jan-2024','3-jan-2024', 'VIP');
INSERT INTO CTGG ( MACTGG, TILETRIETKHAU, NGAYBATDAU, NGAYKETTHUC, MALOAIPHONG)
VALUES ('NY_FAM_24', 20,'1-jan-2024','3-jan-2024', 'VIP');

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
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'SUKIEN', '104');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'DON', '201');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'DON', '202');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'DOI', '203');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'DOI', '204');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'DOI', '205');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'VIP', '206');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'FAMILY', '207');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'FAMILY', '208');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'SUKIEN', '301');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'SUKIEN', '302');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'SUKIEN', '303');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'DON', '401');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'DON', '402');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'DOI', '403');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'DOI', '404');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'DOI', '405');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'VIP', '405');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'VIP', '406');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'FAMILY', '407');
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
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'VIP', '506')
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'FAMILY', '507');
INSERT INTO PHONG (maphong, MALOAIPHONG, SOPHONG)
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'TANGTHUONG', '601');

--dichvu
--note here:
INSERT INTO DICHVU (MADICHVU, TENDICHVU, GIA)
VALUES ('VS', 'Dich vu ve sinh', 100000);
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

INSERT INTO DATPHONG (MADATPHONG, MANHANVIEN, MAKHACHHANG, NGAYDATPHONG, CHECKINDATE, CHECKOUTDATE, PHUONGTHUCTHANHTOAN, coc, TONGTIEN)
VALUES ('DP'||LPAD(seq_madatphong.NEXTVAL, 5, '0'), 'NV0001', 'KH00001', '16-dec-2023', '18-dec-2023', '20-dec-2023' , null, 0, 0);
INSERT INTO DATPHONG (MADATPHONG, MANHANVIEN, MAKHACHHANG, NGAYDATPHONG, CHECKINDATE, CHECKOUTDATE, PHUONGTHUCTHANHTOAN, coc, TONGTIEN)
VALUES ('DP'||LPAD(seq_madatphong.NEXTVAL, 5, '0'), 'NV0002', 'KH00002', '17-dec-2023', '19-dec-2023', '22-dec-2023', null, 0, 0);
INSERT INTO DATPHONG (MADATPHONG, MANHANVIEN, MAKHACHHANG, NGAYDATPHONG, CHECKINDATE, CHECKOUTDATE, PHUONGTHUCTHANHTOAN, coc, TONGTIEN)
VALUES ('DP'||LPAD(seq_madatphong.NEXTVAL, 5, '0'), 'NV0005', 'KH00003', '20-dec-2023', '23-dec-2023', '25-dec-2023', null, 0, 0);

--chitietphong
INSERT INTO CHITIETPHONG (MACHITIETPHONG,MADATPHONG, MAPHONG)
VALUES ('CTPH'||LPAD(seq_machitietphong.NEXTVAL, 5, '0'),'DP00001','P05');
INSERT INTO CHITIETPHONG (MACHITIETPHONG,MADATPHONG, MAPHONG)
VALUES ('CTPH'||LPAD(seq_machitietphong.NEXTVAL, 5, '0'),'DP00002','P08');
INSERT INTO CHITIETPHONG (MACHITIETPHONG,MADATPHONG, MAPHONG)
VALUES ('CTPH'||LPAD(seq_machitietphong.NEXTVAL, 5, '0'),'DP00002','P10');
--chitietdichvu:
INSERT INTO CHITIETDICHVU (MACHITIETDICHVU, MADATPHONG, MADICHVU, soluong)
VALUES ('CTDV'||LPAD(seq_machitietdichvu.NEXTVAL, 5, '0'),'DP00001','VS', 1);
INSERT INTO CHITIETDICHVU (MACHITIETDICHVU, MADATPHONG, MADICHVU, soluong)
VALUES ('CTDV'||LPAD(seq_machitietdichvu.NEXTVAL, 5, '0'),'DP00001','GYM', 2);
INSERT INTO CHITIETDICHVU (MACHITIETDICHVU, MADATPHONG, MADICHVU, soluong)
VALUES ('CTDV'||LPAD(seq_machitietdichvu.NEXTVAL, 5, '0'),'DP00002','MS', 2);
INSERT INTO CHITIETDICHVU (MACHITIETDICHVU, MADATPHONG, MADICHVU, soluong)
VALUES ('CTDV'||LPAD(seq_machitietdichvu.NEXTVAL, 5, '0'),'DP00002','POOL', 2);
INSERT INTO CHITIETDICHVU (MACHITIETDICHVU, MADATPHONG, MADICHVU, soluong)
VALUES ('CTDV'||LPAD(seq_machitietdichvu.NEXTVAL, 5, '0'),'DP00003','VS', 1);
INSERT INTO CHITIETDICHVU (MACHITIETDICHVU, MADATPHONG, MADICHVU, soluong)
VALUES ('CTDV'||LPAD(seq_machitietdichvu.NEXTVAL, 5, '0'),'DP00003','GYM', 2);
INSERT INTO CHITIETDICHVU (MACHITIETDICHVU, MADATPHONG, MADICHVU, soluong)
VALUES ('CTDV'||LPAD(seq_machitietdichvu.NEXTVAL, 5, '0'),'DP00003','MS', 2);
