CREATE OR REPLACE PROCEDURE ThemThongTinKhachDatTruoc(
    p_manhanvien VARCHAR2,
    p_ten VARCHAR2,
    p_ho VARCHAR2,
    p_sodienthoai varchar2,
    p_cccd VARCHAR2,
    p_maphong varchar2,
    p_CHECKINDATE date,
    p_songayo NUMBER
) IS
    v_makhachhang VARCHAR2(10);
    v_madatphong VARCHAR2(10);
    v_giaphong number;
BEGIN
        ThemKhachHang(p_ten, p_ho, p_sodienthoai, p_cccd, null, null);
        SELECT MAKHACHHANG INTO v_makhachhang
        FROM KHACHHANG
        order by MAKHACHHANG desc
        FETCH FIRST 1 row ONLY;
        ThemDatPhong(p_manhanvien, v_makhachhang, p_songayo, p_CHECKINDATE);
        SELECT madatphong INTO v_madatphong
        FROM datphong
        order by madatphong desc
        FETCH FIRST 1 row ONLY;
        INSERT INTO chitietphong(machitietphong, madatphong, maphong)
        VALUES ('CTPH'||LPAD(seq_machitietphong.NEXTVAL, 5, '0'), v_madatphong, p_maphong);
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Bản ghi khách đặt trước đã được thêm thành công.');
        
        SELECT giaphong INTO v_giaphong
        FROM ThongTinPhong
        WHERE maphong = p_maphong
        FETCH FIRST 1 ROW ONLY;
        UPDATE DATPHONG
        set coc = v_giaphong/2
        WHERE MADATPHONG = v_madatphong;
END ThemThongTinKhachDatTruoc;
/
SHOW errors;
describe thongtinkhachhang;

BEGIN
    ThemThongTinKhachDatTruoc(
        '&p_manhanvien',
        '&p_ten',
        '&p_ho',
        '&p_sodienthoai',
        '&p_cccd',
        '&p_CHECKINDATE',
        '&p_songayo'
    )
end;