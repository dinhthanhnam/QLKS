CREATE OR REPLACE PROCEDURE CheckOut(p_madatphong VARCHAR2, p_phuongthucthanhtoan VARCHAR2) IS
    cur_row ThongTinKhachHang%ROWTYPE;
    CURSOR cur_ThongTinKhachHang IS
        SELECT *
        FROM ThongTinKhachHang
        WHERE madatphong = p_madatphong;
BEGIN
    CapNhatTongTienDatPhong(p_madatphong);
    -- Update phương thức thanh toán, (lưu ý, phương thức thanh toán phải là 'card', 'cash', hoặc 'transfer')
    UPDATE datphong
    SET phuongthucthanhtoan = lower(p_phuongthucthanhtoan)
    WHERE madatphong = p_madatphong;

    OPEN cur_ThongTinKhachHang;
    
    -- Lặp qua tất cả các hàng
    FOR cur_row IN cur_ThongTinKhachHang
    LOOP
        -- Chèn thông tin vào bảng hoadon cho mỗi hàng
        INSERT INTO hoadon (
            mahoadon,
            MADATPHONG,
            makhachhang,
            tenkhachhang,
            hokhachhang,
            diachikhachhang,
            cccd,
            SODIENTHOAIKHACHHANG,
            ngaydatphong,
            songayo,
            checkindate,
            checkoutdate,
            phuongthucthanhtoan,
            coc,
            maphong,
            loaiphong,
            madichvu,
            tendichvu,
            soluong,
            tongtien
        )
        VALUES (
            'HD'||LPAD(SEQ_MAHOADON.NEXTVAL, 5, '0'),
            cur_row.madatphong,
            cur_row.makhachhang,
            cur_row.tenkhachhang,
            cur_row.hokhachhang,
            cur_row.diachikhachhang,
            cur_row.cccd,
            cur_row.sodienthoaikhachhang,
            cur_row.ngaydatphong,
            cur_row.songayo,
            cur_row.checkindate,
            cur_row.checkoutdate,
            lower(p_phuongthucthanhtoan),
            cur_row.coc,
            cur_row.maphong,
            cur_row.loaiphong,
            cur_row.madichvu,
            cur_row.tendichvu,
            cur_row.soluong,
            cur_row.tongtien
        );
    END LOOP;

    -- Đóng con trỏ
    CLOSE cur_ThongTinKhachHang;

    COMMIT;
END CheckOut;
/