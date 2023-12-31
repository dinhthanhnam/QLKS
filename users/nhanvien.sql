
CREATE ROLE C##nhanvien;
GRANT CONNECT, RESOURCE TO C##nhanvien;
GRANT create session to C##nhanvien;

GRANT SELECT ON C##QLKS.NHANVIEN TO C##nhanvien;
GRANT SELECT ON C##QLKS.LOAIPHONG TO C##nhanvien;
GRANT SELECT ON C##QLKS.CTGG TO C##nhanvien;
GRANT SELECT ON C##QLKS.PHONG TO C##nhanvien;
GRANT SELECT ON C##QLKS.DICHVU TO C##nhanvien;
GRANT SELECT, INSERT, UPDATE ON C##QLKS.KHACHHANG TO C##nhanvien;
GRANT SELECT, INSERT, UPDATE, DELETE ON C##QLKS.DATPHONG TO C##nhanvien;
GRANT SELECT, INSERT, UPDATE, DELETE ON C##QLKS.CHITIETPHONG TO C##nhanvien;
GRANT SELECT, INSERT, UPDATE, DELETE ON C##QLKS.CHITIETDICHVU TO C##nhanvien;
GRANT SELECT ON C##QLKS.KhachChuaDen TO C##nhanvien;
GRANT SELECT ON C##QLKS.KhachDangO TO C##nhanvien;
GRANT SELECT ON C##QLKS.ThongTinKhachHang TO C##nhanvien;
GRANT SELECT ON C##QLKS.ThongTinPhong TO C##nhanvien;
GRANT SELECT ON C##QLKS.ViewPhongTrong TO C##nhanvien;

GRANT EXECUTE ON C##QLKS.CheckOut TO C##nhanvien;
GRANT EXECUTE ON C##QLKS.ThemDatPhong TO C##nhanvien;
GRANT EXECUTE ON C##QLKS.ThemKhachHang TO C##nhanvien;
GRANT EXECUTE ON C##QLKS.ThemNhanVien TO C##nhanvien;
GRANT EXECUTE ON C##QLKS.ThemThongTinKhachDatTruoc TO C##nhanvien;
GRANT EXECUTE ON C##QLKS.ThemThongTinTaiQuay TO C##nhanvien;
GRANT EXECUTE ON C##QLKS.UpdateTongTien TO C##nhanvien;


create user C##NV identified by midnightheaven;
GRANT C##nhanvien TO C##NV;

