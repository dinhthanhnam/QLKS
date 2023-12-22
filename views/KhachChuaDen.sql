--view khách chưa đến
CREATE OR REPLACE VIEW KhachChuaDen AS
SELECT *
FROM ThongTinKhachHang
WHERE checkindate > SYSDATE;