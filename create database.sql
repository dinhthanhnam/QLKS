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
