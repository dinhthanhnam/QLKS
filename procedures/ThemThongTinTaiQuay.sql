CREATE or REPLACE PROCEDURE ThemThongTinTaiQuay(
    p_manhanvien VARCHAR2,
    p_ten VARCHAR2,
    p_ho VARCHAR2,
    p_sodienthoai VARCHAR2,
    p_cccd varchar2,
    p_diachi varchar2,
    p_maphong VARCHAR2,
    p_CHECKINDATE date,
    p_songayo number
) is
    v_makhachhang VARCHAR2(10);
    v_madatphong VARCHAR2(10);
BEGIN
    THEMKHACHHANG(P_TEN, P_HO, P_SODIENTHOAI, P_CCCD, P_DIACHI, '');
    SELECT MAKHACHHANG INTO v_makhachhang
        FROM KHACHHANG
        order by MAKHACHHANG desc
        FETCH FIRST 1 row ONLY;
    THEMDATPHONG(P_MANHANVIEN, v_MAKHACHHANG, P_SONGAYO, P_CHECKINDATE);
    SELECT MADATPHONG INTO v_madatphong
        FROM DATPHONG
        order by MADATPHONG desc
        FETCH FIRST 1 row ONLY;
    INSERT INTO chitietphong(machitietphong, madatphong, maphong)
        VALUES ('CTPH'||LPAD(seq_machitietphong.NEXTVAL, 5, '0'), v_madatphong, p_maphong);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Bản ghi tại quầy đã được thêm thành công.');
END ThemThongTinTaiQuay;
/

