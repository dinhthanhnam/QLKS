DESCRIBE nhanvien;
CREATE OR REPLACE PROCEDURE ThemNhanVien(
    p_ten VARCHAR2,
    p_ho VARCHAR2,
    p_chucvu varchar2,
    p_diachi VARCHAR2,
    p_sodienthoai VARCHAR2
) IS
BEGIN
    INSERT INTO NHANVIEN (
            MANHANVIEN,
            TEN,
            HO,
            chucvu,
            DIACHI,
            SODIENTHOAI
        ) VALUES (
            'NV' || LPAD(seq_makhachhang.NEXTVAL, 4, '0'),
            p_ten,
            p_ho,
            p_chucvu,
            p_diachi,
            p_sodienthoai
        );

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Bản ghi nhân viên đã được thêm thành công.');
END ThemNhanVien;
/

BEGIN
    ThemNhanVien('&p_ten', '&p_ho', '&p_chucvu', '&p_diachi', '&p_sodienthoai');
END;
/

select * from NHANVIEN;

SELECT SEQ_MANHANVIEN.NEXTVAL FROM dual;
