
create TABLE khachsan (
    makhachsan VARCHAR2(10) PRIMARY KEY,
    tenkhachsan VARCHAR2(50),
    diachi VARCHAR2(50),
    sodienthoai VARCHAR2(15),
    email VARCHAR2(50),
    website VARCHAR2(50),
    sotang int,
    sophong int,
    danhgia int,
    checkinTime DATE,
    checkoutTime DATE
);
CREATE table nhanvien (
    manhanvien VARCHAR2(10) primary key,
    MAKHACHSAN VARCHAR2(10),
    ten VARCHAR2(10),
    ho varchar2(20),
    chucvu VARCHAR2(20),
    DIACHI VARCHAR2(50),
    SODIENTHOAI VARCHAR2(15),
    FOREIGN KEY (MAKHACHSAN) REFERENCES KHACHSAN(MAKHACHSAN)
);

CREATE TABLE khachhang (
    makhachhang VARCHAR2(10) PRIMARY KEY,
    ten VARCHAR2(10),
    ho VARCHAR2(20),
    DIACHI VARCHAR2(50),
    cccd VARCHAR2(15),
    SODIENTHOAI VARCHAR2(15),
    sothenganhang VARCHAR2(20)
);
CREATE TABLE loaiphong (
    maloaiphong VARCHAR2(10) primary KEY,
    loaiphong varchar2(20),
    gia int
);
CREATE TABLE ctgg (
    mactgg varchar2(10) PRIMARY KEY,
    tiletrietkhau int check (tiletrietkhau >= 1 and tiletrietkhau <= 100),
    ngaybatdau date,
    ngayketthuc date,
    maloaiphong varchar2(10),
    FOREIGN KEY (maloaiphong) REFERENCES loaiphong(maloaiphong),
    CHECK (ngaybatdau < ngayketthuc)
);
CREATE TABLE phong (
    maphong varchar2(10) primary key,
    maloaiphong VARCHAR2(10),
    makhachsan VARCHAR2(10),
    sophong varchar2(10),
    FOREIGN KEY (maloaiphong) REFERENCES loaiphong(maloaiphong),
    FOREIGN KEY (MAKHACHSAN) REFERENCES KHACHSAN(MAKHACHSAN)
);
create table dichvu (
    madichvu varchar2(10) primary key,
    MAKHACHSAN varchar2(10),
    tendichvu VARCHAR2(20),
    gia int,
    FOREIGN KEY (MAKHACHSAN) REFERENCES KHACHSAN(MAKHACHSAN)
);
CREATE TABLE datphong (
    madatphong varchar2(10) PRIMARY KEY,
    manhanvien VARCHAR2(10),
    MAKHACHSAN VARCHAR2(10),
    makhachhang varchar2(10),
    ngaydatphong DATE,
    checkindate DATE,
    checkoutdate DATE,
    phuongthucthanhtoan VARCHAR2(20),
    tongtien int,
    FOREIGN KEY (manhanvien) REFERENCES nhanvien(manhanvien),
    FOREIGN KEY (MAKHACHSAN) REFERENCES KHACHSAN(MAKHACHSAN),
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
    FOREIGN KEY (madichvu) REFERENCEs dichvu(madichvu),
    FOREIGN KEY (madatphong) REFERENCES datphong(madatphong)
);
