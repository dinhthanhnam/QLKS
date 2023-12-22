--View khách đang ở
CREATE OR REPLACE VIEW KhachDangO AS
SELECT *
FROM ThongTinKhachHang
WHERE SYSDATE BETWEEN checkindate AND checkoutdate;