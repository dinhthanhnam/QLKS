DESCRIBE nhanvien;
CREATE OR REPLACE PROCEDURE ThemNhanVien(
    p_ten VARCHAR2,
    p_ho VARCHAR2,
    p_sodienthoai NUMBER,
    p_cccd NUMBER,
    p_diachi VARCHAR2
) IS
BEGIN
    INSERT INTO KHACHHANG (
            MAKHACHHANG,
            TEN,
            HO,
            SODIENTHOAI,
            CCCD,
            DIACHI  
        ) VALUES (
            'KH' || LPAD(seq_makhachhang.NEXTVAL, 5, '0'),
            p_ten,
            p_ho,
            p_sodienthoai,
            p_cccd,
            p_diachi
        );

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Bản ghi khách hàng đã được thêm thành công.');
END ThemKhachHang;
/

BEGIN
    ThemKhachHang('&p_ten', '&p_ho', '&p_sodienthoai', '&p_cccd', '&p_diachi');
END;
/