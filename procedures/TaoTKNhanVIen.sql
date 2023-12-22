--tạo tk cho nhân viên với 2 tham số đầu vào
CREATE OR REPLACE PROCEDURE TaoTKNhanVien(
    p_username IN VARCHAR2,
    p_password IN VARCHAR2
)
IS
BEGIN
    EXECUTE IMMEDIATE 'CREATE USER ' || p_username || ' IDENTIFIED BY ' || p_password;
    EXECUTE IMMEDIATE 'GRANT C##nhanvien TO ' || p_username;
    COMMIT;
EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Lỗi: ' || SQLERRM);
            ROLLBACK;
END TaoTKNhanVien;