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
            p_CHECKINDATE + p_songayo,
            '',
            0,
            0
        );

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('B?n ghi ??t phòng ?ã ???c thêm thành công.');
END ThemDatPhong;
/
BEGIN
    ThemDatPhong('NV0004', 'KH00001', 1, '26-nov-2023');
END;
DESCRIBE datphong;
show errors;

SELECT SEQ_MADATPHONG.NEXTVAL FROM dual;

select * from datphong;
