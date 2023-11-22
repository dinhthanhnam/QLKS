--Cap nhat tong tien dat phong 
CREATE OR REPLACE PROCEDURE CapNhatTongTienDatPhong(p_madatphong VARCHAR2) IS
    v_tongtien INT;
BEGIN
    -- Tính giá phòng sau khi áp dụng giảm giá (nếu có)
    SELECT COALESCE(SUM(lp.gia * (1 - COALESCE(ctgg.tiletrietkhau, 0) / 100)), 0)
    INTO v_tongtien
    FROM phong p
    JOIN loaiphong lp ON p.maloaiphong = lp.maloaiphong
    LEFT JOIN ctgg ON lp.maloaiphong = ctgg.maloaiphong
                   AND extract(month from SYSDATE) BETWEEN extract(month from ctgg.ngaybatdau) AND extract(month from ctgg.ngayketthuc)
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

BEGIN
CapNhatTongTienDatPhong('DP001');
end;