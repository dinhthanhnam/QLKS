--khachsan
--chưa chứng minh được tính thực dụng của bảng khách sạn ngoài việc có nhiều hơn 1 khách sạn, còn nếu ko thì cũng ko cần thiết lắm
INSERT INTO KHACHSAN (MAKHACHSAN, TENKHACHSAN, DIACHI, SODIENTHOAI, email, website, SOTANG, SOPHONG, DANHGIA, checkinTime, checkoutTime)
VALUES ('KS01','Quantum Horizon Hotel', '310, Nghi Tam, Tay Ho, Ha Noi','0999888999', 'quantumhorizon@gmail.com', 'quantumhorizon.com', 7, 30, 3.5,SYSDATE, SYSDATE);
INSERT INTO KHACHSAN (MAKHACHSAN, TENKHACHSAN, DIACHI, SODIENTHOAI, email, website, SOTANG, SOPHONG, DANHGIA, checkinTime, checkoutTime)
VALUES ('KS02','Midnight Blaze Inn', '50, Xuan Dieu, Tay Ho, Ha Noi','0999000999', 'midnightblazeinn@gmail.com', 'midnightblazeinn.com', 7, 30, 3.5,SYSDATE, SYSDATE);

--nhanvien
INSERT INTO NHANVIEN (manhanvien, MAKHACHSAN, ten, ho, CHUCVU, DIACHI, SODIENTHOAI)
values ('NV001', 'KS01', 'Nam', 'Dinh Thanh','Nhan vien', 'so 66 ngo 28, Tu Lien, Tay Ho, Ha Noi','0382027003');
INSERT INTO NHANVIEN (manhanvien, MAKHACHSAN, ten, ho, CHUCVU, DIACHI, SODIENTHOAI)
values ('NV002', 'KS01', 'Nghia', 'Nguyen The','Gymer', 'abc', '0999999999');
INSERT INTO NHANVIEN (manhanvien, MAKHACHSAN, ten, ho, CHUCVU, DIACHI, SODIENTHOAI)
values ('NV003', 'KS01', 'Hung', 'Nguyen Duy','Nhan vien', 'abc', '0999999999');
INSERT INTO NHANVIEN (manhanvien, MAKHACHSAN, ten, ho, CHUCVU, DIACHI, SODIENTHOAI)
values ('NV004', 'KS01', 'A Khang', 'Tran','Wibu', 'abc', '0999999999');
INSERT INTO NHANVIEN (manhanvien, MAKHACHSAN, ten, ho, CHUCVU, DIACHI, SODIENTHOAI)
values ('NV005', 'KS02', 'Khoi', 'Truong Ngoc Minh','Yeu Chi', 'abc', '0999999999');
INSERT INTO NHANVIEN (manhanvien, MAKHACHSAN, ten, ho, CHUCVU, DIACHI, SODIENTHOAI)
values ('NV006', 'KS02', 'Son', 'Doan Van','Faker', 'abc', '0999999999');
--khachhang
-- cần bổ sung sau các ràng buộc unique cho các trường như sđt, cccd, số thẻ
SELECT * FROM KHACHHANG
order by ten asc;
INSERT INTO KHACHHANG (MAKHACHHANG, TEN, HO, CCCD, DIACHI, SODIENTHOAI, SOTHENGANHANG)
values ('KH0001','Ngan', 'Ha', 036032131414, 'So 12, Chua Boc, Dong Da, Ha Noi', 0213123131, 0841131231231);
INSERT INTO KHACHHANG (MAKHACHHANG, TEN, HO, CCCD, DIACHI, SODIENTHOAI, SOTHENGANHANG)
values ('KH0002','Anh', 'Nguyen Phuong', 036032134414, 'So 12, Chua Boc, Dong Da, Ha Noi', 0213122131, 0851131231231);
INSERT INTO KHACHHANG (MAKHACHHANG, TEN, HO, CCCD, DIACHI, SODIENTHOAI, SOTHENGANHANG)
values ('KH0003','Chi', 'Nguyen', 036039131414, 'So 12, Chua Boc, Dong Da, Ha Noi', 0213153131, 0844131231231);
--loai phong
select * from loaiphong;
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
--Phong
-- phòng cần có thêm trạng thái, dùng trigger, hoặc 1 stored procedure để lưu lại truy vấn tìm các phòng còn trống
-- tạm thời để phục vụ việc test tính khả thi của csdl thì chưa thêm trạng thái, nhưng nhất định phải có
INSERT INTO PHONG (maphong, MALOAIPHONG, MAKHACHSAN, SOPHONG)
VALUES ('KS01_01', 'CHUCNANG','KS01', '101');
INSERT INTO PHONG (maphong, MALOAIPHONG, MAKHACHSAN, SOPHONG)
VALUES ('KS01_02', 'CHUCNANG','KS01', '102');
INSERT INTO PHONG (maphong, MALOAIPHONG, MAKHACHSAN, SOPHONG)
VALUES ('KS01_03', 'STAFF','KS01', '103');
INSERT INTO PHONG (maphong, MALOAIPHONG, MAKHACHSAN, SOPHONG)
VALUES ('KS01_04', 'DON','KS01', '201');
INSERT INTO PHONG (maphong, MALOAIPHONG, MAKHACHSAN, SOPHONG)
VALUES ('KS01_05', 'DON','KS01', '202');
INSERT INTO PHONG (maphong, MALOAIPHONG, MAKHACHSAN, SOPHONG)
VALUES ('KS01_06', 'DOI','KS01', '203');
INSERT INTO PHONG (maphong, MALOAIPHONG, MAKHACHSAN, SOPHONG)
VALUES ('KS01_07', 'DOI','KS01', '204');
INSERT INTO PHONG (maphong, MALOAIPHONG, MAKHACHSAN, SOPHONG)
VALUES ('KS01_08', 'VIP','KS01', '205');
INSERT INTO PHONG (maphong, MALOAIPHONG, MAKHACHSAN, SOPHONG)
VALUES ('KS01_09', 'SUKIEN','KS01', '301');
INSERT INTO PHONG (maphong, MALOAIPHONG, MAKHACHSAN, SOPHONG)
VALUES ('KS01_10', 'SUKIEN','KS01', '302');
INSERT INTO PHONG (maphong, MALOAIPHONG, MAKHACHSAN, SOPHONG)
VALUES ('KS01_11', 'DON','KS01', '401');
INSERT INTO PHONG (maphong, MALOAIPHONG, MAKHACHSAN, SOPHONG)
VALUES ('KS01_12', 'DON','KS01', '402');
INSERT INTO PHONG (maphong, MALOAIPHONG, MAKHACHSAN, SOPHONG)
VALUES ('KS01_13', 'DOI','KS01', '403');
INSERT INTO PHONG (maphong, MALOAIPHONG, MAKHACHSAN, SOPHONG)
VALUES ('KS01_14', 'DOI','KS01', '404');
INSERT INTO PHONG (maphong, MALOAIPHONG, MAKHACHSAN, SOPHONG)
VALUES ('KS01_15', 'VIP','KS01', '405');
INSERT INTO PHONG (maphong, MALOAIPHONG, MAKHACHSAN, SOPHONG)
VALUES ('KS01_16', 'DON','KS01', '501');
INSERT INTO PHONG (maphong, MALOAIPHONG, MAKHACHSAN, SOPHONG)
VALUES ('KS01_17', 'DON','KS01', '502');
INSERT INTO PHONG (maphong, MALOAIPHONG, MAKHACHSAN, SOPHONG)
VALUES ('KS01_18', 'DOI','KS01', '503');
INSERT INTO PHONG (maphong, MALOAIPHONG, MAKHACHSAN, SOPHONG)
VALUES ('KS01_19', 'DOI','KS01', '504');
INSERT INTO PHONG (maphong, MALOAIPHONG, MAKHACHSAN, SOPHONG)
VALUES ('KS01_20', 'VIP','KS01', '505');
INSERT INTO PHONG (maphong, MALOAIPHONG, MAKHACHSAN, SOPHONG)
VALUES ('KS01_21', 'TANGTHUONG','KS01', '601');

SELECT * FROM phong;
--dichvu
--note here:
INSERT INTO DICHVU (MADICHVU, TENDICHVU, MAKHACHSAN, GIA)
VALUES ('DV_VS', 'Dich vu ve sinh', 'KS01', 100000);
INSERT INTO DICHVU (MADICHVU, TENDICHVU, MAKHACHSAN, GIA)
VALUES ('MS_TP', 'Mat-xa tai phong', 'KS01', 500000);
INSERT INTO DICHVU (MADICHVU, TENDICHVU, MAKHACHSAN, GIA)
VALUES ('MS', 'Mat-xa', 'KS01', 300000);
INSERT INTO DICHVU (MADICHVU, TENDICHVU, MAKHACHSAN, GIA)
VALUES ('MS_A_Z', 'Mat-xa tu A_Z', 'KS01', 1000000);
INSERT INTO DICHVU (MADICHVU, TENDICHVU, MAKHACHSAN, GIA)
VALUES ('GYM', 'Phong Gym', 'KS01', 50000);
INSERT INTO DICHVU (MADICHVU, TENDICHVU, MAKHACHSAN, GIA)
VALUES ('GYM_PT', 'Gym co PT', 'KS01', 200000);
INSERT INTO DICHVU (MADICHVU, TENDICHVU, MAKHACHSAN, GIA)
VALUES ('POOL', 'Be boi', 'KS01', 100000);
INSERT INTO DICHVU (MADICHVU, TENDICHVU, MAKHACHSAN, GIA)
VALUES ('POOL_PRI', 'Be boi rieng', 'KS01', 1000000);
--booking
--cần nhiều trigger: trigger thêm thời gian check in của khách(lập tức), trigger thêm thời gian check out(lập tức), trigger update tổng tiền (hoặc stored procedure, vì tổng tiền cũng ko cần update lập tức)
INSERT INTO DATPHONG (MADATPHONG, MANHANVIEN, MAKHACHSAN, MAKHACHHANG, NGAYDATPHONG, CHECKINDATE, CHECKOUTDATE, PHUONGTHUCTHANHTOAN, TONGTIEN)
VALUES ('DP001', 'NV001', 'KS01', 'KH0001', '16-nov-2023', '18-nov-2023', '20-nov-2023' , 'Cash', 0);

INSERT INTO DATPHONG (MADATPHONG, MANHANVIEN, MAKHACHSAN, MAKHACHHANG, NGAYDATPHONG, CHECKINDATE, CHECKOUTDATE, PHUONGTHUCTHANHTOAN, TONGTIEN)
VALUES ('DP002', 'NV002', 'KS01', 'KH0002', '17-nov-2023', '19-nov-2023', '22-nov-2023', 'Credit Card', 0);

select dp.MADATPHONG, dp.MAKHACHHANG, ctph.MAPHONG
FROM DATPHONG dp
JOIN CHITIETPHONG ctph on dp.MADATPHONG = ctph.MADATPHONG;
--stored procedure tổng tiền đặt phòng (demo)
-- nhìn vào demo, có thể thấy, mình đang lấy dữ liệu giá bằn cách join 3 bảng, có thể làm dễ hơn bằng cách tạo sẵn 1 view về phòng, loại phòng, giá, discount, từ đó tính toán dễ hơn
CREATE OR REPLACE PROCEDURE UpdateTongTienDatPhong AS
BEGIN
    -- Tính tổng tiền từ phòng
    DECLARE totalMoney INT := 0;
    BEGIN
    FOR phong_rec IN (
        SELECT lp.gia
        FROM chitietphong ctph
        JOIN phong p ON ctph.maphong = p.maphong
        JOIN loaiphong lp ON p.maloaiphong = lp.maloaiphong
        WHERE ctph.madatphong = 'DP002'
    )
    LOOP
        totalMoney := totalMoney + phong_rec.gia;
    END LOOP;

    -- Tính tổng tiền từ dịch vụ (nếu có)
    FOR dichvu_rec IN (
        SELECT dv.gia * ctdv.soluong AS gia_dichvu
        FROM chitietdichvu ctdv
        JOIN dichvu dv ON ctdv.madichvu = dv.madichvu
        WHERE ctdv.madatphong = 'DP002'
    )
    LOOP
        totalMoney := totalMoney + dichvu_rec.gia_dichvu;
    END LOOP;

    -- Cập nhật tổng tiền cho bảng datphong
    UPDATE datphong
    SET tongtien = totalMoney
    WHERE madatphong = 'DP002';
    end;
END;
/

exec UpdateTongTienDatPhong;
select * FROM DATPHONG;
show errors;
--chitietphong
INSERT INTO CHITIETPHONG (MACHITIETPHONG,MADATPHONG, MAPHONG)
VALUES ('CTPH0001','DP001','KS01_05');
INSERT INTO CHITIETPHONG (MACHITIETPHONG,MADATPHONG, MAPHONG)
VALUES ('CTPH0002','DP002','KS01_08');
--chitietdichvu: lẽ ra nên có thêm số lượng, Maybe?
ALTER TABLE CHITIETDICHVU
add soluong int;
INSERT INTO CHITIETDICHVU (MACHITIETDICHVU, MADATPHONG, MADICHVU, soluong)
VALUES ('CTDV0001','DP001','DV_VS', 1);
INSERT INTO CHITIETDICHVU (MACHITIETDICHVU, MADATPHONG, MADICHVU, soluong)
VALUES ('CTDV0002','DP001','GYM', 2);
INSERT INTO CHITIETDICHVU (MACHITIETDICHVU, MADATPHONG, MADICHVU, soluong)
VALUES ('CTDV0003','DP001','MS', 2);
INSERT INTO CHITIETDICHVU (MACHITIETDICHVU, MADATPHONG, MADICHVU, soluong)
VALUES ('CTDV0004','DP001','POOL', 2);

INSERT INTO CHITIETDICHVU (MACHITIETDICHVU, MADATPHONG, MADICHVU, soluong)
VALUES ('CTDV0005','DP002','DV_VS', 1);
INSERT INTO CHITIETDICHVU (MACHITIETDICHVU, MADATPHONG, MADICHVU, soluong)
VALUES ('CTDV0006','DP002','GYM', 2);
INSERT INTO CHITIETDICHVU (MACHITIETDICHVU, MADATPHONG, MADICHVU, soluong)
VALUES ('CTDV0007','DP002','MS', 2);

select * from CHITIETDICHVU;
--- nhận ra 1 số vấn đề, đối với đặt phòng, chi tiết phòng, chi tiết dv, nếu các mã nhập bằng tay quá mất thời gian
--- cần suy nghĩ thêm về serializable, serialization, hoặc trigger, hoặc bla bla