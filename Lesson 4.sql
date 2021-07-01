--Tạo cơ sở dữ liệu nhé
USE LEARN_SQL
GO

CREATE TABLE GiangVien
(
	GV# CHAR(4),
	HoTen NVARCHAR(100),
	DiaChi NTEXT,
	NgaySinh DATE,
	Luong INT,
)

--Thêm một vài dữ liệu nhá

INSERT dbo.GiangVien
(
    GV#,
    HoTen,
    DiaChi,
    NgaySinh,
    Luong
)
VALUES
(   'GV01',        -- GV# - char(4)
    N'Vũ Tuyết Trinh',       -- HoTen - nvarchar(100)
    N'Hoàng Mai, Hà Nội',       -- DiaChi - ntext
    '10/10/1975', -- NgaySinh - date
    1000          -- Luong - int
    )

INSERT dbo.GiangVien
(
    GV#,
    HoTen,
    DiaChi,
    NgaySinh,
    Luong
)
VALUES
(   'GV02',        -- GV# - char(4)
    N'Nguyễn Nhật Quang',       -- HoTen - nvarchar(100)
    N'Hai Bà Trưng, Hà Nội',       -- DiaChi - ntext
    '03/11/1976', -- NgaySinh - date
    2000          -- Luong - int
    )

INSERT dbo.GiangVien
(
    GV#,
    HoTen,
    DiaChi,
    NgaySinh,
    Luong
)
VALUES
(   'GV03',        -- GV# - char(4)
    N'Trần Đức Khánh',       -- HoTen - nvarchar(100)
    N'Đống Đa, Hà Nội',       -- DiaChi - ntext
    '04/06/1977', -- NgaySinh - date
    3000          -- Luong - int
    )

INSERT dbo.GiangVien
(
    GV#,
    HoTen,
    DiaChi,
    NgaySinh,
    Luong
)
VALUES
(   'GV04',        -- GV# - char(4)
    N'Nguyễn Hồng Phương',       -- HoTen - nvarchar(100)
    N'Tây Hồ, Hà Nội',       -- DiaChi - ntext
    '10/12/1983', -- NgaySinh - date
    4000          -- Luong - int
    )

INSERT dbo.GiangVien
(
    GV#,
    HoTen,
    DiaChi,
    NgaySinh,
    Luong
)
VALUES
(   'GV05',        -- GV# - char(4)
    N'Lê Thanh Hương',       -- HoTen - nvarchar(100)
    N'Hoàng Mai, Hà Nội',       -- DiaChi - ntext
    '10/10/1976', -- NgaySinh - date
    5000          -- Luong - int
    )

--Xoá dữ liệu trong table. Có 2 cách
TRUNCATE TABLE dbo.GiangVien --Cách 1
DELETE dbo.Table_Example --Cách 2
--Xoá dữ liệu có điều kiện
DELETE dbo.GiangVien WHERE GV#='GV01'
--Đọc thêm về truncate table và delete:https://www.howkteam.vn/course/su-dung-sql-server/insert-delete-update-table-trong-sql-server-1385#:~:text=N%E1%BA%BFu%20ch%C3%BAng%20c%C3%B3%20c%C3%B9ng%20ch%E1%BB%A9c%20n%C4%83ng%2C%20t%E1%BA%A1i%20sao%20c%E1%BA%A7n%20ph%E1%BA%A3i%20s%E1%BB%AD%20d%E1%BB%A5ng%20hai%20l%E1%BB%87nh%20x%C3%B3a%20d%E1%BB%AF%20li%E1%BB%87u%20ri%C3%AAng%20bi%E1%BB%87t%3F%20V%E1%BA%ADy%20ch%C3%BAng%20c%C3%B3%20g%C3%AC%20kh%C3%A1c%20nhau%3F%20S%E1%BB%B1%20kh%C3%A1c%20bi%E1%BB%87t%20%C4%91%C3%B3%20c%C3%B3%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20g%C3%AC%20%C4%91%E1%BA%BFn%20thao%20t%C3%A1c%20truy%20v%E1%BA%A5n%20c%E1%BB%A7a%20b%E1%BA%A1n%20trong%20SQL.%20H%C3%A3y%20c%C3%B9ng%20Kteam%20t%C3%ACm%20hi%E1%BB%83u%20m%E1%BB%99t%20s%E1%BB%91%20kh%C3%A1c%20bi%E1%BB%87t%20c%C6%A1%20b%E1%BA%A3n%20gi%E1%BB%AFa%20hai%20l%E1%BB%87nh%20n%C3%A0y!

--Update
UPDATE dbo.GiangVien SET Luong=10000
UPDATE dbo.GiangVien SET Luong=20000 WHERE GV#='GV03'


