"# ham_trong_SQL" 
1. Hàm AVG()
Hàm AVG() trả về giá trị trung bình của một cột kiểu số.

SELECT AVG(column_name)
FROM table_name
WHERE condition;
Trong đó: 

column_name là tên của cột muốn tính giá trị trung bình.
table_name là tên của bảng
condition là biểu thức điều kiện

2. Hàm COUNT()
Hàm COUNT() trả về số lượng bản ghi thoả mãn điền kiện đưa ra.

SELECT COUNT(column_name)
FROM table_name
WHERE condition;

3. Hàm MAX()
Hàm MAX() trả về giá trị lớn nhất trong một cột và thoả mãn điều kiện đưa ra.

SELECT MAX(column_name)
FROM table_name
WHERE condition;

4. Hàm MIN()
Hàm MIN() trả về giá trị nhỏ nhất trong một cột và thoả mãn điều kiện đưa ra.

SELECT MIN(column_name)
FROM table_name
WHERE condition;

5. Hàm SUM()
Hàm SUM() trả về tổng giá trị của một cột kiểu số.

SELECT SUM(column_name)
FROM table_name
WHERE condition;

6. Hàm UCASE()
Hàm UCASE() chuyển giá trị của một trường sang chữ viết hoa.

SELECT UCASE(column_name) FROM table_name;

7. Hàm LCASE()
Hàm LCASE() chuyển giá trị của một trường sang chữ viết thường.

SELECT LCASE(column_name) FROM table_name;

8. Hàm LEN()
Hàm LEN() trả về độ dài của chuỗi (số lượng ký tự) của một giá trị trong cột kiểu chuỗi.

SELECT LEN(column_name) FROM table_name;

9. Hàm NOW()
Hàm NOW() trả về ngày tháng và thời gian hiện tại.

SELECT NOW() FROM table_name;

10. Mệnh đề GROUP BY
Mệnh đề GROUP BY thường được sử dụng cùng với các hàm như COUNT(), MAX(), MIN(), SUM(), AVG() để tách thành các nhóm con theo một cột (hoặc nhiều cột).

SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);

11. Mệnh đề HAVING
Mệnh đề HAVING có chức năng lọc dữ liệu như mệnh đề WHERE nhưng sử dụng cùng với các hàm SQL.

SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);
