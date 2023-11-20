CREATE OR REPLACE PROCEDURE ThemKhachHang(
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

INSERT INTO KHACHHANG (MAKHACHHANG, TEN, HO, CCCD, DIACHI, SODIENTHOAI, SOTHENGANHANG)
values ('KH'||LPAD(seq_makhachhang.NEXTVAL, 5, '0'),'Ngan', 'Ha', 036032131414, 'So 12, Chua Boc, Dong Da, Ha Noi', 0213123131, 0841131231231123);

SHOW errors;

ALTER SEQUENCE seq_makhachhang restart;
select * from khachhang;
DELETE FROM KHACHHANG;
DESCRIBE KHACHHANG;

