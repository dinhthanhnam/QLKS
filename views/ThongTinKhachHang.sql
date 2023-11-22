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
order by MAKHACHHANG;


select * from ThongTinKhachHang;