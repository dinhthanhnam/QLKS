CREATE OR REPLACE PROCEDURE ThemNhieuDichVu AS
    v_luachon VARCHAR2(5);
    v_madatphong VARCHAR2(10);  -- You need to obtain or pass the MADATPHONG value
    v_madichvu VARCHAR2(10);
    v_soluong NUMBER;
BEGIN
    LOOP
        v_madichvu := '&p_madichvu';
        v_soluong := TO_NUMBER('&p_soluong');

        -- Call the ThemDichVu procedure
        ThemDichVu(v_madatphong, v_madichvu, v_soluong);

        -- Ask if the user wants to add more services
        v_luachon := '&x';

        IF YesNo(v_luachon) = FALSE THEN
            EXIT; -- Exit the loop if the user doesn't want to add more services
        END IF;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Quá trình thêm dịch vụ đã kết thúc.');
END ThemNhieuDichVu;
/


    