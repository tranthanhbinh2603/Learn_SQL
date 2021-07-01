--Tạo Database
CREATE DATABASE LEARN_SQL --Sử dụng Database này trong tất cả các bài học
GO

USE LEARN_SQL
GO

--Tạo 1 bảng
CREATE TABLE Table_Example --Chú ý 1 database chỉ có duy nhất 1 table có tên như thế này.
(
	Ten NVARCHAR(100),
	Tuoi INT,
	GT BIT
) 

--Thêm 1 cột
ALTER TABLE dbo.Table_Example ADD Add_ress NTEXT

--Chỉnh sửa kiểu dữ liệu
ALTER TABLE dbo.Table_Example ALTER COLUMN Tuoi BIGINT

--Xoá 1 bảng
DROP TABLE dbo.Table_Example

--Xoá dữ liệu trong 1 bảng mà không xoá luôn bảng
TRUNCATE TABLE dbo.Table_Example