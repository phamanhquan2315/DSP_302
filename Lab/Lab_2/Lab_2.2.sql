use HR;
SELECT * FROM PETRESCUE;
-- Truy vấn A1: Nhập một hàm tính tổng chi phí của tất cả những lần cứu hộ động vật trong bảng PETRESCUE.
SELECT SUM(COST) FROM PETRESCUE;

-- Truy vấn A2: Nhập một hàm hiển thị tổng chi phí của tất cả những lần cứu hộ động vật trong bảng PETRESCUE trong cột SUM_OF_COST.
SELECT SUM(COST) SUM_OF_COST FROM PETRESCUE;

-- Truy vấn A3: Nhập một hàm hiển thị số lượng động vật tối đa được cứu hộ.
SELECT COUNT(*) FROM petrescue;

-- Truy vấn A4: Nhập một hàm hiển thị chi phí trung bình của động vật được cứu hộ.
SELECT AVG(COST) FROM petrescue;

-- Truy vấn A5: Nhập một hàm hiển thị chi phí cứu hộ trung bình cho một chú chó.
select AVG(COST) FROM petrescue 
WHERE ANIMAL = 'Dog';

-- Truy vấn A5: Nhập một hàm hiển thị chi phí cứu hộ trung bình cho một chú chó.
select round(avg(cost)) from petrescue
where ANIMAL = 'Dog';

-- Truy vấn B2: Nhập hàm hiển thị độ dài của tên từng con vật.
select distinct ANIMAL ,length(ANIMAL) from petrescue;

-- Truy vấn B3: Nhập hàm hiển thị tên con vật trong mỗi lần cứu hộ bằng chữ hoa.
select UCASE(Animal) from petrescue;

-- Truy vấn B4: Nhập hàm hiển thị tên con vật trong mỗi lần cứu hộ bằng chữ hoa và không trùng lặp.
select distinct UCASE(Animal) from petrescue;

-- Truy vấn B5: Nhập một truy vấn hiển thị tất cả các cột từ bảng PETRESCUE, trong đó (các) con vật được cứu hộ là mèo. Sử dụng cat chữ thường trong truy vấn.
select * from petrescue where ANIMAL = 'cat';

-- Truy vấn C1: Nhập một hàm hiển thị ngày trong tháng mèo được cứu hộ.
select Day(RESCUEDATE), month(RESCUEDATE) from petrescue;

-- Truy vấn C2: Nhập hàm hiển thị số lần cứu hộ vào tháng thứ 5.
select count(*) from petrescue where month(RESCUEDATE) = 5;

-- Truy vấn C3: Nhập hàm hiển thị số lần cứu hộ vào ngày 14 trong tháng.
select count(*) from petrescue where day(RESCUEDATE) = 14;

-- Truy vấn C4: Động vật được cứu hộ nên được đưa tới phòng khám thú y trong vòng ba ngày kể từ ngày được cứu hộ. Nhập một hàm hiển thị ngày thứ ba từ mỗi lần cứu hộ.
select DAY(RESCUEDATE + 3), MONTH(RESCUEDATE) from PETRESCUE;

-- Truy vấn C5: Nhập một hàm hiển thị khoảng thời gian các động vật được cứu hộ; sự khác biệt giữa ngày hôm nay và ngày giải cứu.
SELECT (current_date() - RESCUEDATE) FROM petrescue

