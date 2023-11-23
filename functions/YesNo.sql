CREATE OR REPLACE FUNCTION YesNo(f_giaTri VARCHAR2) RETURN BOOLEAN IS
BEGIN
    -- Kiểm tra giá trị của tham số và trả về BOOLEAN tương ứng
    IF UPPER(f_giaTri) IN ('YES', 'Y') THEN
        RETURN TRUE;
    ELSIF UPPER(f_giaTri) IN ('NO', 'N') THEN
        RETURN FALSE;
    ELSE
        -- Nếu giá trị không hợp lệ, có thể xử lý tùy thuộc vào yêu cầu của bạn
        -- Ví dụ: có thể trả về giá trị mặc định, raise exception, hoặc làm điều gì đó khác
        RAISE_APPLICATION_ERROR(-20001, 'Giá trị không hợp lệ. Nhập vào "yes", "no", "y", hoặc "n".');
    END IF;
END YesNo;
/
