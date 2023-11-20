--cần thực hiện sau khi hoàn thành insert dữ liệu trước
CREATE OR REPLACE VIEW PhongTrong AS
SELECT p.maphong, lp.loaiphong, lp.gia
FROM phong p
JOIN loaiphong lp ON p.maloaiphong = lp.maloaiphong
WHERE NOT EXISTS (
    SELECT 1
    FROM datphong dp
    JOIN CHITIETPHONG ctph ON dp.MADATPHONG = ctph.MADATPHONG
    WHERE ctph.maphong = p.maphong
      AND SYSDATE BETWEEN dp.checkindate AND dp.checkoutdate
);


SELECT * FROM PhongTrong;

describe DATPHONG;

select * FROM phong;