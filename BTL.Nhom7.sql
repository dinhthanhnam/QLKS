DROP table chitietdichvu;
DROP table chitietphong;
DROP table datphong;
drop table dichvu;
drop table phong;
drop table ctgg;
drop table loaiphong;
drop table khachhang;
drop table nhanvien;
drop table hoadon;

drop TYPE CHITIETDICHVU_array;
drop type CHITIETDICHVU_type;

alter sequence SEQ_MACHITIETPHONG restart;
alter sequence SEQ_MAKHACHHANG restart;
alter sequence SEQ_MACHITIETDICHVU restart;
alter sequence SEQ_MAPHONG restart;
alter sequence SEQ_MADATPHONG restart;
alter sequence SEQ_MANHANVIEN restart;
alter sequence SEQ_MAHOADON restart;



CREATE table nhanvien (
    manhanvien VARCHAR2(10) primary key,
    ten VARCHAR2(10),
    ho varchar2(20),
    chucvu VARCHAR2(20),
    DIACHI VARCHAR2(50),
    SODIENTHOAI VARCHAR2(15) check (REGEXP_LIKE(SODIENTHOAI, '^[0-9]+$')),
    CONSTRAINT unique_sodienthoai UNIQUE (SODIENTHOAI)
);
CREATE TABLE khachhang (
    makhachhang VARCHAR2(10) PRIMARY KEY,
    ten VARCHAR2(10),
    ho VARCHAR2(20),
    DIACHI VARCHAR2(50),
    cccd VARCHAR2(12) check (REGEXP_LIKE(cccd, '^[0-9]+$') and LENGTH(cccd) = 12),
    SODIENTHOAI VARCHAR2(15) check (REGEXP_LIKE(SODIENTHOAI, '^[0-9]+$')),
    sothenganhang VARCHAR2(20) check (REGEXP_LIKE(SOTHENGANHANG, '^[0-9]+$')),
    CONSTRAINT unique_card UNIQUE (SOTHENGANHANG),
    CONSTRAINT unique_cccd UNIQUE (CCCD),
    CONSTRAINT unique_sdtkhach UNIQUE (SODIENTHOAI)
);
CREATE TABLE loaiphong (
    maloaiphong VARCHAR2(10) primary KEY,
    loaiphong varchar2(20),
    gia NUMBER
);
CREATE TABLE ctgg (
    mactgg varchar2(20) PRIMARY KEY,
    tiletrietkhau NUMBER check (tiletrietkhau >= 0 and tiletrietkhau <= 100),
    ngaybatdau date,
    ngayketthuc date,
    maloaiphong varchar2(10),
    FOREIGN KEY (maloaiphong) REFERENCES loaiphong(maloaiphong),
    CHECK (ngaybatdau < ngayketthuc)
);
CREATE TABLE phong (
    maphong varchar2(10) primary key,
    maloaiphong VARCHAR2(10),
    sophong varchar2(10),
    FOREIGN KEY (maloaiphong) REFERENCES loaiphong(maloaiphong)
);
create table dichvu (
    madichvu varchar2(10) primary key,
    tendichvu VARCHAR2(20),
    gia NUMBER
);

CREATE TABLE datphong (
    madatphong varchar2(10) PRIMARY KEY,
    manhanvien VARCHAR2(10),
    makhachhang varchar2(10),
    ngaydatphong DATE,
    songayo NUMBER,
    checkindate DATE,
    checkoutdate DATE,
    phuongthucthanhtoan VARCHAR2(20) CHECK (phuongthucthanhtoan IN ('card', 'cash', 'transfer','CASH', 'CARD', 'TRANSFER')),
    coc NUMBER,
    tongtien FLOAT,
    FOREIGN KEY (manhanvien) REFERENCES nhanvien(manhanvien),
    FOREIGN KEY (makhachhang) REFERENCES khachhang(makhachhang)
);
create TABLE chitietphong (
    machitietphong VARCHAR2(20) primary KEY,
    maphong VARCHAR2(10),
    madatphong VARCHAR2(10),
    FOREIGN KEY (maphong) references phong(maphong),
    FOREIGN KEY (madatphong) REFERENCEs datphong(madatphong)
);
CREATE TABLE chitietdichvu (
    machitietdichvu VARCHAR2(20) PRIMARY key,
    madichvu varchar2(10),
    madatphong VARCHAR2(10),
    soluong NUMBER,
    FOREIGN KEY (madichvu) REFERENCEs dichvu(madichvu),
    FOREIGN KEY (madatphong) REFERENCES datphong(madatphong)
);


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
VALUES ('P'||LPAD(seq_maphong.NEXTVAL, 2, '0'), 'VIP', '506');
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


--them nhan vien moi
CREATE OR REPLACE PROCEDURE ThemNhanVien(
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
            'NV' || LPAD(SEQ_MANHANVIEN.NEXTVAL, 4, '0'),
            p_ten,
            p_ho,
            p_chucvu,
            p_diachi,
            p_sodienthoai
        );

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Bản ghi nhân viên đã được thêm thành công.');
END ThemNhanVien;
/

BEGIN
    ThemNhanVien('Ngan', 'Ha', 'Le tan', 'Ha Noi', '0987124141');
END;
/

select * from NHANVIEN;

-- chi them khach hang ma chua them phong` dat
CREATE OR REPLACE PROCEDURE ThemKhachHang(
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
        DBMS_OUTPUT.PUT_LINE('Bản ghi khách hàng đã được thêm thành công.');
END ThemKhachHang;
/

BEGIN
    ThemKhachHang('Trang', 'Nguyen Thi', '0219546133', '038045613144', 'Ha Noi', '');
END;
/

select * from khachhang;

-- them dat phong theo ma nhan vien thuc hien va ma khach hang
CREATE OR REPLACE PROCEDURE ThemDatPhong(
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
        DBMS_OUTPUT.PUT_LINE('Bản ghi đã được thêm thành công.');
END ThemDatPhong;
/
BEGIN
    ThemDatPhong('NV0004', 'KH00001', 1, '26-DEC-2023');
END;
/

SELECT * from datphong;


--them thong tin tai quay 
CREATE or REPLACE PROCEDURE ThemThongTinTaiQuay(
    p_manhanvien VARCHAR2,
    p_ten VARCHAR2,
    p_ho VARCHAR2,
    p_sodienthoai VARCHAR2,
    p_cccd varchar2,
    p_diachi varchar2,
    p_maphong VARCHAR2,
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
    THEMDATPHONG(P_MANHANVIEN, v_MAKHACHHANG, P_SONGAYO, SYSDATE);
    SELECT MADATPHONG INTO v_madatphong
        FROM DATPHONG
        order by MADATPHONG desc
        FETCH FIRST 1 row ONLY;
    INSERT INTO chitietphong(machitietphong, madatphong, maphong)
        VALUES ('CTPH'||LPAD(seq_machitietphong.NEXTVAL, 5, '0'), v_madatphong, p_maphong);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Bản ghi tại quầy đã được thêm thành công.');
END ThemThongTinTaiQuay;
/

BEGIN
    ThemThongTinTaiQuay('NV0001', 'Hang', 'Nguyen','0971231416','097123146578','Ha Noi','P12', 2);
END;
/
select * FROM khachhang;
select * from datphong;
select * from chitietphong;
-- giai thich: vua tao 1 khach hang moi, dong thoi dat 1 phong cho họ, nen, demo bang viec hien thi 2 bang kh va DP


-- tao 1 view de dung cho procedure o duoi  
CREATE OR REPLACE VIEW ThongTinPhong AS
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
order by MAPHONG;

select * FROM THONGTINPHONG;



--them thong tin dat truoc, thi giong voi thong tin dat tai quay, chi khac co tinh tien coc, va checkindate la
--nhan vien phai tu nhap, khong giong nhu dattaiquay, lay date là sysdate
CREATE OR REPLACE PROCEDURE ThemThongTinKhachDatTruoc(
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
        DBMS_OUTPUT.PUT_LINE('Bản ghi khách đặt trước đã được thêm thành công.');
        
        SELECT giaphong INTO v_giaphong
            FROM ThongTinPhong
            WHERE maphong = p_maphong
            FETCH FIRST 1 ROW ONLY;
        UPDATE DATPHONG
            set coc = v_giaphong/2
            WHERE MADATPHONG = v_madatphong;
END ThemThongTinKhachDatTruoc;
/

EXECUTE ThemThongTinKhachDatTruoc('NV0005', 'Nghia', 'The', '0923714345', '092123943145', 'P13', '26-dec-2024',1);

select * FROM THONGTINKHACHHANG;
CREATE OR REPLACE PROCEDURE CheckIn (
    p_cccd VARCHAR2,
    p_madatphong varchar2,
    p_diachi varchar2
)
IS
BEGIN
    UPDATE THONGTINKHACHHANG
    set DIACHIKHACHHANG = p_diachi
    where CCCD = p_cccd and p_madatphong = MADATPHONG;

    FOR rec IN (SELECT *
                    FROM ThongTinKhachHang
                    WHERE madatphong = p_madatphong)
    LOOP
        DBMS_OUTPUT.PUT_LINE('Mã đặt phòng: ' || rec.MADATPHONG);
        DBMS_OUTPUT.PUT_LINE('Mã phòng: ' || rec.maphong);
        DBMS_OUTPUT.PUT_LINE('Loại phòng: ' || rec.LOAIPHONG);
    END LOOP;
    COMMIT;
end;
/

EXECUTE CHECKIN ('092123943145','DP00007', 'Tam Trinh, Ha Noi');

select * from thongtinkhachhang;
select * from datphong;
select * from THONGTINPHONG;

-- tao 1 view de xem thong tin tat ca khah, muc dich la de truy van tu view
-- de xem khach con dang dung dich vu hay khach dat truoc nhung chua toi
CREATE OR REPLACE VIEW ThongTinKhachHang AS
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
    kh.SOTHENGANHANG,
    dp.coc,
    p.maphong,
    lp.loaiphong,
    dv.madichvu,
    dv.tendichvu,
    ctdv.soluong,
    dp.tongtien
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
order by MAKHACHHANG;


select * from ThongTinKhachHang;

--VIEW Khach dang o
CREATE OR REPLACE VIEW KhachDangO AS
SELECT *
FROM ThongTinKhachHang
WHERE SYSDATE BETWEEN checkindate AND checkoutdate;

--VIEW Khach chua den
CREATE OR REPLACE VIEW KhachChuaDen AS
SELECT *
FROM ThongTinKhachHang
WHERE checkindate > SYSDATE;

select * FROM KhachDangO;
select * from KhachChuaDen;

--Sau khi có view khách đang ở, và view thông tin phòng sẽ suy ra được view phòng trống
CREATE OR REPLACE VIEW ViewPhongTrong AS
SELECT *
FROM ThongTinPhong
WHERE maphong NOT IN (SELECT maphong FROM KhachDangO);

select * from ViewPhongTrong;
-- từ view khách chưa đến, có thể thực hiện thủ tục kiểm tra phòng trống

CREATE OR REPLACE PROCEDURE KiemTraPhongTrong(
    p_maphong VARCHAR2,
    p_checkindate DATE,
    p_songayo NUMBER
) IS
    v_phongTrong VARCHAR2(50);
    v_checkoutdate DATE;

    -- Biến để kiểm tra điều kiện đầu tiên
    v_dem NUMBER;

BEGIN
    v_checkoutdate := p_checkindate + p_songayo;

    -- Kiểm tra xem mã phòng có trong danh sách khách chưa đến không
    SELECT COUNT(*) INTO v_dem
    FROM KhachChuaDen
    WHERE maphong = p_maphong;

    -- Kiểm tra điều kiện đầu tiên
    IF v_dem = 0 THEN
        v_phongTrong := 'Phòng trống';
    ELSE
        -- Kiểm tra xem có thời gian trống để checkin mới không
        SELECT CASE
            WHEN MAX(checkoutdate) < p_checkindate OR
                 MIN(checkindate) > v_checkoutdate OR
                 EXISTS (
                     SELECT 1
                     FROM KhachChuaDen k1
                     JOIN KhachChuaDen k2 ON k1.maphong = k2.maphong
                     WHERE k1.CHECKINDATE < k2.CHECKINDATE
                     AND (p_checkindate > k1.checkoutdate AND p_checkindate < k2.checkindate)
                     AND (v_checkoutdate > k1.checkoutdate AND v_checkoutdate < k2.checkindate)
                 )
            THEN 'Phòng trống'
            ELSE 'Phòng không trống'
        END
        INTO v_phongTrong
        FROM KhachChuaDen
        WHERE maphong = p_maphong
        group by maphong;
    END IF;

    DBMS_OUTPUT.PUT_LINE(v_phongTrong);
END KiemTraPhongTrong;
/

EXECUTE KiemTraPhongTrong ('P13', '28-dec-2023', 1);
EXECUTE KiemTraPhongTrong ('P13', '01-jan-2024', 1);
EXECUTE KiemTraPhongTrong ('P13', '04-jan-2024', 1);

--Them nhieu dich vu
CREATE OR REPLACE PROCEDURE ThemDichVu (
    p_madatphong VARCHAR2,
    p_madichvu VARCHAR2,
    p_SOLUONG NUMBER
) IS
BEGIN
    INSERT INTO CHITIETDICHVU (machitietdichvu, MADICHVU, MADATPHONG, SOLUONG)
        VALUES ('CTDV'||LPAD(SEQ_MACHITIETDICHVU.NEXTVAL, 5, '0'), p_madichvu, p_madatphong, p_soluong);
end ThemDichVu;
/

---Ham them dich vu, co the them nhieu dich vu, ma dat phong phai tu nhap vao (HAM NAY KO STORED DUOC)
--type cho chi tiết dịch vụ


CREATE TYPE CHITIETDICHVU_type AS OBJECT (
    madichvu VARCHAR2(10),
    soluong NUMBER
);
/
--mảng cho chi tiết dịch vụ
CREATE TYPE CHITIETDICHVU_array AS TABLE OF CHITIETDICHVU_type;
/
--hàm cho chạy hết mảng chi tiết dịch vụ
CREATE OR REPLACE PROCEDURE ThemNhieuDichVu(
    p_madatphong VARCHAR2,
    p_chitietdichvu CHITIETDICHVU_array
) IS
BEGIN
    FOR i IN 1..p_chitietdichvu.COUNT LOOP
        ThemDichVu(p_madatphong, p_chitietdichvu(i).madichvu, p_chitietdichvu(i).soluong);
    END LOOP;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Quá trình thêm dịch vụ đã kết thúc.');
END ThemNhieuDichVu;
/
-- gọi Hàm
DECLARE
    v_chitietdichvu CHITIETDICHVU_array := CHITIETDICHVU_array();
BEGIN
    v_chitietdichvu.EXTEND; -- Extend the array
    v_chitietdichvu(1) := CHITIETDICHVU_type('VS', 1); -- Add a service detail

    v_chitietdichvu.EXTEND;
    v_chitietdichvu(2) := CHITIETDICHVU_type('MS', 2);

    ThemNhieuDichVu('DP00005', v_chitietdichvu);
END;
/

select * from CHITIETDICHVU;
-- Hàm tính tổng tiền cho khách, sẽ được dùng trong hàm check out cùng với cập nhật PHUONGTHUCTHANHTOAN
CREATE OR REPLACE PROCEDURE CapNhatTongTienDatPhong(p_madatphong VARCHAR2) IS
    v_tongtien INT;
BEGIN
    -- Tính giá phòng sau khi áp dụng giảm giá (nếu có)
    SELECT COALESCE(SUM(lp.gia * (1 - COALESCE(ctgg.tiletrietkhau, 0) / 100)), 0)
    INTO v_tongtien
    FROM phong p
    JOIN loaiphong lp ON p.maloaiphong = lp.maloaiphong
    LEFT JOIN ctgg ON lp.maloaiphong = ctgg.maloaiphong
                   AND SYSDATE BETWEEN ctgg.ngaybatdau AND ctgg.ngayketthuc
    WHERE p.maphong IN (SELECT maphong FROM chitietphong WHERE madatphong = p_madatphong);

    -- Cộng thêm giá dịch vụ
    SELECT v_tongtien + COALESCE(SUM(dv.gia * ctdv.soluong), 0)
    INTO v_tongtien
    FROM dichvu dv
    JOIN chitietdichvu ctdv ON dv.madichvu = ctdv.madichvu
    WHERE ctdv.madatphong = p_madatphong;

    -- Cập nhật tổng tiền trong bảng datphong
    UPDATE datphong
    SET tongtien = v_tongtien
    WHERE madatphong = p_madatphong;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        -- Xử lý ngoại lệ nếu có
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Lỗi: ' || SQLERRM);
END CapNhatTongTienDatPhong;
/

---tao 1 bang hoa don moi
create TABLE hoadon(
    mahoadon VARCHAR2(10),
    makhachhang VARCHAR2(20),
    tenkhachhang VARCHAR(20),
    hokhachhang varchar(20),
    diachikhachhang varchar(50),
    cccd varchar(20),
    SODIENTHOAIKHACHHANG varchar(15),
    MADATPHONG varchar(10),
    ngaydatphong DATE,
    songayo NUMBER,
    checkindate DATE,
    checkoutdate DATE,
    phuongthucthanhtoan varchar(10),
    sothenganhang varchar(20),
    coc NUMBER,
    maphong VARCHAR2(10),
    loaiphong VARCHAR2(20),
    madichvu VARCHAR(10),
    tendichvu VARCHAR(20),
    soluong NUMBER,
    tongtien FLOAT
);

--Thủ tục updatetong tien thường ko được dùng 1 mình mà sẽ dùng trong thủ tục checkout
--thu tuc check out gom : update tong tien cho bang datphong, sau do dung view thong tin phong de lay thong tin
--roi lai insert nguoc sang hoadon
CREATE OR REPLACE PROCEDURE CheckOut (
    p_madatphong VARCHAR2, 
    p_phuongthucthanhtoan VARCHAR2,
    p_sothenganhang varchar2
    ) IS
    cur_row ThongTinKhachHang%ROWTYPE;
    v_mahoadon hoadon.mahoadon%TYPE;
BEGIN
    v_mahoadon := 'HD'||LPAD(SEQ_MAHOADON.NEXTVAL, 5, '0');
    CapNhatTongTienDatPhong(p_madatphong);
    -- Update phương thức thanh toán, (lưu ý, phương thức thanh toán phải là 'card', 'cash', hoặc 'transfer')
    UPDATE datphong
    SET phuongthucthanhtoan = p_phuongthucthanhtoan
    WHERE madatphong = p_madatphong;

    UPDATE THONGTINKHACHHANG
    SET SOTHENGANHANG = p_sothenganhang
    WHERE madatphong = p_madatphong;

    FOR cur_row IN (SELECT *
                    FROM ThongTinKhachHang
                    WHERE madatphong = p_madatphong)
    LOOP
        INSERT INTO hoadon (
            mahoadon,
            makhachhang,
            tenkhachhang,
            hokhachhang,
            diachikhachhang,
            cccd,
            SODIENTHOAIKHACHHANG,
            MADATPHONG,
            ngaydatphong,
            songayo,
            checkindate,
            checkoutdate,
            phuongthucthanhtoan,
            SOTHENGANHANG,
            coc,
            maphong,
            loaiphong,
            madichvu,
            tendichvu,
            soluong,
            tongtien
        )
        VALUES (
            v_mahoadon,
            cur_row.makhachhang,
            cur_row.tenkhachhang,
            cur_row.hokhachhang,
            cur_row.diachikhachhang,
            cur_row.cccd,
            cur_row.sodienthoaikhachhang,
            cur_row.madatphong,
            cur_row.ngaydatphong,
            cur_row.songayo,
            cur_row.checkindate,
            cur_row.checkoutdate,
            p_phuongthucthanhtoan,
            p_sothenganhang,
            cur_row.coc,
            cur_row.maphong,
            cur_row.loaiphong,
            cur_row.madichvu,
            cur_row.tendichvu,
            cur_row.soluong,
            cur_row.tongtien
        );
    END LOOP;

    COMMIT;
END CheckOut;
/


--test hoadon


EXECUTE CHECKOUT('DP00005', 'cash', '');

select * from hoadon;

-- truy van SQL
-- Truy vấn những khách hàng quay lại từ 2 lần trở lên
SELECT
    kh.makhachhang,
    kh.ten,
    kh.ho,
    kh.DIACHI,
    kh.cccd,
    kh.SODIENTHOAI,
    kh.sothenganhang,
    COUNT(dp.madatphong) AS soLanDatPhong
FROM
    khachhang kh
JOIN
    datphong dp ON kh.makhachhang = dp.makhachhang
GROUP BY
    kh.makhachhang, kh.ten, kh.ho, kh.DIACHI, kh.cccd, kh.SODIENTHOAI, kh.sothenganhang
HAVING
    COUNT(dp.madatphong) >= 2;


-- Truy vấn các dịch vụ được sử dụng nhiều nhất trong tháng
WITH SuDungDichVu AS (
    SELECT
        dv.MaDichVu,
        dv.TenDichVu,
        SUM(cd.SoLuong) AS TongSoLuongSuDung
    FROM
        DichVu dv
    JOIN
        ChiTietDichVu cd ON dv.MaDichVu = cd.MaDichVu
    JOIN
        DatPhong dp ON cd.MaDatPhong = dp.MaDatPhong
    WHERE
        EXTRACT(MONTH FROM dp.NgayDatPhong) = EXTRACT(MONTH FROM SYSDATE)
    GROUP BY
        dv.MaDichVu, dv.TenDichVu
)
SELECT
    MaDichVu,
    TenDichVu,
    TongSoLuongSuDung
FROM
    SuDungDichVu
WHERE
    TongSoLuongSuDung = (SELECT MAX(TongSoLuongSuDung) FROM SuDungDichVu);


--Truy vấn phòng đc đặt nhiều nhất trong tháng
WITH PhongDuocDatNhieuNhat AS (
    SELECT
        p.maphong,
        COUNT(cp.madatphong) AS SoLanDat
    FROM
        phong p
    JOIN
        chitietphong cp ON p.maphong = cp.maphong
    JOIN
        datphong dp ON cp.madatphong = dp.madatphong
    WHERE
        EXTRACT(MONTH FROM dp.ngaydatphong) = EXTRACT(MONTH FROM SYSDATE)
    GROUP BY
        p.maphong
)
SELECT
    p.maphong,
    p.sophong,
    pdn.SoLanDat
FROM
    phong p
LEFT JOIN
    PhongDuocDatNhieuNhat pdn ON p.maphong = pdn.maphong
WHERE
    pdn.SoLanDat = (SELECT MAX(SoLanDat) FROM PhongDuocDatNhieuNhat);


--. Truy vấn những phòng không được giảm giá trong thời gian hiện tại
SELECT *
FROM ThongTinPhong
WHERE TILETRIETKHAU = 0;
-- Truy vấn tổng doanh thu trong tháng hiện tại
SELECT
    SUM(tongtien) AS doanhthu
FROM (
    SELECT DISTINCT mahoadon, tongtien
    FROM hoadon
    WHERE EXTRACT(MONTH FROM checkoutdate) = EXTRACT(MONTH FROM SYSDATE)
);

-- Truy vấn tổng doanh thu của từng loại dịch vụ trong tháng
SELECT
    dv.madichvu,
    dv.tendichvu,
    SUM(dv.gia * hd.soluong) AS doanhthu_thang
FROM
    dichvu dv
JOIN
    hoadon hd ON dv.madichvu = hd.madichvu
WHERE
    EXTRACT(MONTH FROM hd.checkoutdate) = EXTRACT(MONTH FROM SYSDATE)
GROUP BY
    dv.madichvu, dv.tendichvu;

-- Truy vấn khách hàng sử dụng dịch vụ nhiều nhất
WITH RankedCustomers AS (
    SELECT
        makhachhang,
        tenkhachhang,
        hokhachhang,
        madatphong,
        COALESCE(SUM(soluong), 0) AS tong_soluong_dichvu,
        RANK() OVER (ORDER BY COALESCE(SUM(soluong), 0) DESC, makhachhang) AS customer_rank,
        DENSE_RANK() OVER (ORDER BY COALESCE(SUM(soluong), 0) DESC, makhachhang) AS customer_dense_rank
    FROM
        ThongTinKhachHang
    GROUP BY
        makhachhang, tenkhachhang, hokhachhang, madatphong
)
SELECT
    makhachhang,
    tenkhachhang,
    hokhachhang,
    madatphong,
    tong_soluong_dichvu
FROM
    RankedCustomers
WHERE
    customer_rank = 1 OR customer_dense_rank = 1;

-- Truy vấn những khách hàng mới trong tháng
SELECT
    EXTRACT(MONTH FROM checkoutdate) AS thang,
    COUNT(madatphong) AS soluongdatphong
FROM
    datphong
WHERE
    EXTRACT(MONTH FROM checkoutdate) = EXTRACT(MONTH FROM SYSDATE)
GROUP BY
    EXTRACT(MONTH FROM checkoutdate)
ORDER BY
    thang;

-- Truy vấn đưa ra tổng số lượt đặt và sử dụng phòng trong tháng
SELECT
    kh1.makhachhang,
    kh1.ten AS tenkhachhang,
    kh1.ho AS hokhachhang,
    kh1.cccd,
    MIN(dp.ngaydatphong) AS ngaydatphong
FROM
    khachhang kh1
JOIN
    datphong dp ON kh1.makhachhang = dp.makhachhang
WHERE
    NOT EXISTS (
        SELECT 1
        FROM khachhang kh2
        WHERE kh2.cccd = kh1.cccd
        AND kh2.makhachhang <> kh1.makhachhang
    )
GROUP BY
    kh1.makhachhang, kh1.ten, kh1.ho, kh1.cccd
ORDER BY
    MIN(dp.ngaydatphong);
