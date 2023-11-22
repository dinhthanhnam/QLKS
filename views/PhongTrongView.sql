--phòng còn trống tại thời điểm hiện tại (chưa hoàn thiện)
CREATE OR REPLACE VIEW PhongTrongView AS
SELECT *
FROM ThongTinPhong
WHERE maphong NOT IN (
    SELECT maphong
    FROM chitietphong ctp
    JOIN datphong dp ON ctp.madatphong = dp.madatphong
    WHERE dp.checkoutdate >= SYSDATE
);
