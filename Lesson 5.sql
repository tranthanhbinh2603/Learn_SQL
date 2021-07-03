--Khởi tạo Database: Nguồn: Howkteam
------------------------------------------------------------
-- Sử dụng database
USE LEARN_SQL
GO 
-- Tạo bảng HOCSINH
CREATE TABLE HOCSINH
(
	MAHS CHAR(5) PRIMARY KEY, --Tạo khoá chính khi tạo bảng (Không nên dùng vì rất khó xoá)
	TEN NVARCHAR(30),
	NAM BIT, -- Column giới tính Nam: 1 - đúng, 0 - sai
	NGAYSINH DATETIME,
	DIACHI VARCHAR(20),
	DIEMTB FLOAT,
)
GO
-- Tạo bảng GIAOVIEN
CREATE TABLE GIAOVIEN
(
	MAGV CHAR(5), 
	TEN NVARCHAR(30),
	Nam BIT, -- Column giới tính Nam: 1 - đúng, 0 - sai
	NGAYSINH DATETIME,
	DIACHI VARCHAR(20),
	LUONG MONEY,
	CONSTRAINT PK_GIAOVIEN PRIMARY KEY (MAGV) --Tạo khoá chính sau khi tạo bảng
)
GO
-- Tạo bảng LOPHOC
CREATE TABLE LOPHOC
(
	MALOP CHAR(5) NOT NULL UNIQUE,
	TENLOP NVARCHAR(30),
	SOLUONG INT
)
GO
------------------------------------------------------------
--1. Đặt khoá chính trong và sau khi tạo bảng (Có ở trên)
--2. Đặt khoá chính bên ngoài bảng
ALTER TABLE dbo.LOPHOC ADD CONSTRAINT PK_LOPHOC PRIMARY KEY(MALOP)
--3. Xoá khoá chính (Có đặt tên)
ALTER TABLE dbo.GIAOVIEN DROP CONSTRAINT PK_GIAOVIEN

