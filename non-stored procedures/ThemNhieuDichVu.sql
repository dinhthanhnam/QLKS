--mảng cho chi tiết dịch vụ
CREATE TYPE CHITIETDICHVU_array AS TABLE OF CHITIETDICHVU_type;


--hàm cho chạy hết mảng chi tiết dịch vụ
CREATE OR REPLACE PROCEDURE ThemNhieuDichVu(
    p_madatphong VARCHAR2,
    p_chitietdichvu CHITIETDICHVU_array
) IS
BEGIN
    FOR i IN 1..p_chitietdichvu.COUNT LOOP
        ThemDichVu(p_madatphong, p_chitietdichvu(i).madichvu, p_chitietdichvu(i).soluong);
    END LOOP;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Quá trình thêm dịch vụ đã kết thúc.');
END ThemNhieuDichVu;
/
-- gọi Hàm
DECLARE
    v_chitietdichvu CHITIETDICHVU_array := CHITIETDICHVU_array();
BEGIN
    v_chitietdichvu.EXTEND; -- Extend the array
    v_chitietdichvu(1) := CHITIETDICHVU_type('VS', 1); -- Add a service detail

    v_chitietdichvu.EXTEND;
    v_chitietdichvu(2) := CHITIETDICHVU_type('MS', 2);

    ThemNhieuDichVu('DP00005', v_chitietdichvu);
END;
/