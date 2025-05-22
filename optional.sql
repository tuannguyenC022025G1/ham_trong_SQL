create database quan_ly_ban_hang_optional;
use quan_ly_ban_hang_optional;

CREATE TABLE khach_hang (
    ma_khach_hang VARCHAR(5) PRIMARY KEY,
    ho_va_ten_lot VARCHAR(50) NOT NULL,
    ten VARCHAR(50) NOT NULL,
    dia_chi VARCHAR(255),
    email VARCHAR(50),
    dien_thoai VARCHAR(13)
);


CREATE TABLE san_pham (
    ma_san_pham INT PRIMARY KEY AUTO_INCREMENT,
    ten_sp VARCHAR(50) NOT NULL,
    mo_ta VARCHAR(255),
    so_luong INT NOT NULL CHECK (so_luong >= 0),
    don_gia DECIMAL(15,2) NOT NULL CHECK (don_gia >= 0)
);


CREATE TABLE hoa_don (
    ma_hoa_don INT PRIMARY KEY AUTO_INCREMENT,
    ngay_mua_hang DATE NOT NULL,
    ma_khach_hang VARCHAR(5),
    trang_thai VARCHAR(30),
    FOREIGN KEY (ma_khach_hang) REFERENCES khach_hang(ma_khach_hang)
);


CREATE TABLE hoa_don_chi_tiet (
    ma_hoa_don_chi_tiet INT PRIMARY KEY AUTO_INCREMENT,
    ma_hoa_don INT,
    ma_san_pham INT,
    so_luong INT NOT NULL,
    FOREIGN KEY (ma_hoa_don) REFERENCES hoa_don(ma_hoa_don),
    FOREIGN KEY (ma_san_pham) REFERENCES san_pham(ma_san_pham)
);
select count(*) as so_luong_khach_hang
from khach_hang;

SELECT MAX(don_gia) AS don_gia_lon_nhat
FROM san_pham;

SELECT MIN(so_luong) AS so_luong_thap_nhat
FROM san_pham;

SELECT SUM(so_luong) AS tong_so_luong
FROM san_pham;

SELECT COUNT(*) AS so_hoa_don_chua_thanh_toan
FROM hoa_don
WHERE trang_thai = 'chưa thanh toán' 
  AND MONTH(ngay_mua_hang) = 12 
  AND YEAR(ngay_mua_hang) = 2016;
  
  SELECT hd.ma_hoa_don, COUNT(hdct.ma_san_pham) AS so_loai_san_pham
FROM hoa_don hd
JOIN hoa_don_chi_tiet hdct ON hd.ma_hoa_don = hdct.ma_hoa_don
GROUP BY hd.ma_hoa_don;

SELECT hd.ma_hoa_don, COUNT(hdct.ma_san_pham) AS so_loai_san_pham
FROM hoa_don hd
JOIN hoa_don_chi_tiet hdct ON hd.ma_hoa_don = hdct.ma_hoa_don
GROUP BY hd.ma_hoa_don
HAVING COUNT(hdct.ma_san_pham) >= 5;

SELECT ma_hoa_don, ngay_mua_hang, ma_khach_hang
FROM hoa_don
ORDER BY ngay_mua_hang DESC;

