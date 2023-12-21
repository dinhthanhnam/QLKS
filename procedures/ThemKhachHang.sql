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
    ThemKhachHang('&p_ten', '&p_ho', '&p_sodienthoai', '&p_cccd', '&p_diachi', '&p_sothenganhang');
END;
/


