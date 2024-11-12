CREATE DATABASE MangXaHoi_DuLich1
GO

USE MangXaHoi_DuLich1
GO
------- BANG BOOKING ---------
CREATE TABLE Booking (
	Booking_ID VARCHAR(255) PRIMARY KEY NOT NULL, -- INT PRIMARY KEY IDENTITY(1,1),
	Tours_ID VARCHAR(255) NOT NULL, 
	User_ID VARCHAR(255) NOT NULL,
	Created_at DATETIME DEFAULT GETDATE() NOT NULL,
	Modified_by VARCHAR(255) NULL,
	Modified_at DATETIME DEFAULT GETDATE() NULL,
	Note TEXT NULL,
	QR VARCHAR(255),  -- Lưu trữ mã QR hoặc ID duy nhất
	Status VARCHAR(50) NOT NULL, --Status ENUM('Pending', 'Confirmed', 'Cancelled', 'Completed') NOT NULL,
	--  Total_price DECIMAL(10,2) NOT NULL,  -- tổng giá)
	-- Special_requests TEXT NULL, --  (yêu cầu đặc biệt) để cung cấp thông tin chi tiết hơn về đơn đặt chỗ.
	--Tours_id INT NOT NULL FOREIGN KEY REFERENCES Tours(Tours_id) ,
	--Users_id VARCHAR(255) NOT NULL FOREIGN KEY REFERENCES Account(Users_id) ,
	--Payment_id VARCHAR(255) NOT NULL FOREIGN KEY REFERENCES Payment(Payment_id) ,
	--Schedule_id INT NOT NULL FOREIGN KEY REFERENCES Schedule(Schedule_id) 

);