USE LEARN_SQL
GO

CREATE TABLE DataType
(
	--Nhóm số chính xác
	DBit BIT, --0 và 1
	DInt INT, --Kiểu số nguyên
	DMoney MONEY, --Kiểu tiền tệ
	--Nhóm số xấp xỉ
	DFloat FLOAT, --Số thực
	--Ngày tháng
	DDateTime DATE, --Lưu trữ chính xác
	DTime TIME, --Lưu trữ giờ phút giây
	--Chuỗi: Quy tắc: N + Var + Tên kiểu. N là có hỗ trợ Unicode hay không, var có là kiểu động, còn lại là tĩnhD
	DChar CHAR(20),
	DNChar NCHAR(20),
	DVarChar VARCHAR(20),
	DNVarchar NVARCHAR(20),
	--Cứ nhớ kiểu char LUÔN CÓ đối số limit số kí tự
	DText TEXT,
	DNtext NTEXT,
	--Cứ nhớ kiểu char KHÔNG CÓ	đối số limit số kí tự
)
--Đọc thêm về kiểu dữ liệu cấp phát động và tĩnh ở đây: https://www.howkteam.vn/course/su-dung-sql-server/kieu-du-lieu-trong-sql-server-1365#:~:text=c%C3%A2%CC%80n%20l%C6%B0u%20y%CC%81-,C%C3%A2%CC%81p%20pha%CC%81t%20%C4%91%C3%B4%CC%A3ng%20va%CC%80%20c%C3%A2%CC%81p%20pha%CC%81t%20ti%CC%83nh,-%E1%BB%9E%20ki%E1%BB%83u%20d%E1%BB%AF