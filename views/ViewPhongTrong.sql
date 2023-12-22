---View phòng trống
CREATE OR REPLACE VIEW ViewPhongTrong AS
SELECT *
FROM ThongTinPhong
WHERE maphong NOT IN (SELECT maphong FROM KhachDangO);

select * from ViewPhongTrong;