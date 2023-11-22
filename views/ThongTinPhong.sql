---thong tin phong (hoàn thiện)
CREATE OR REPLACE VIEW ThongTinPhong AS
SELECT 
    p.maphong,
    lp.loaiphong,
    lp.gia AS giaphong,
    ctgg.MACTGG,
    COALESCE(ctgg.tiletrietkhau, 0) AS TILETRIETKHAU,
    lp.gia - lp.gia * COALESCE(ctgg.tiletrietkhau, 0) / 100 AS giaphongsautrietkhau
FROM phong p
JOIN loaiphong lp ON p.maloaiphong = lp.maloaiphong
LEFT JOIN ctgg ON lp.maloaiphong = ctgg.maloaiphong
               AND SYSDATE BETWEEN ctgg.ngaybatdau AND ctgg.ngayketthuc
order by MAPHONG;

select * FROM THONGTINPHONG;

