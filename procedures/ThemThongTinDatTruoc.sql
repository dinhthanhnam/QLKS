describe datphong;
CREATE OR REPLACE PROCEDURE ThemThongTinDatTruoc(
    p_ten VARCHAR2,
    p_ho VARCHAR2,
    p_chucvu varchar2,
    p_diachi VARCHAR2,
    p_sodienthoai VARCHAR2
) IS
BEGIN
    INSERT INTO KHACHHANG (
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
