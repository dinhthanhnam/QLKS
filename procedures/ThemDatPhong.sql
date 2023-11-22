CREATE OR REPLACE PROCEDURE ThemDatPhong(
    p_manhanvien VARCHAR2,
    p_makhachhang VARCHAR2,
    p_SONGAYO NUMBER,
    p_CHECKINDATE DATE
    
) IS
BEGIN
    INSERT INTO DATPHONG (
            MADATPHONG,
            MANHANVIEN,
            MAKHACHHANG,
            NGAYDATPHONG,
            SONGAYO,
            CHECKINDATE,
            CHECKOUTDATE,
            PHUONGTHUCTHANHTOAN,
            coc,
            TONGTIEN
        ) VALUES (
            'DP'||LPAD(seq_madatphong.NEXTVAL, 5, '0'),
            p_manhanvien,
            p_makhachhang,
            sysdate,
            p_songayo,
            p_CHECKINDATE,
            TO_DATE(p_CHECKINDATE, 'DD-MM-YYYY'),
            TO_DATE(p_CHECKINDATE, 'DD-MM-YYYY') + p_songayo,
            '',
            0
        );

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Bản ghi đặt phòng đã được thêm thành công.');
END ThemDatPhong;
/
DESCRIBE datphong;
show errors;