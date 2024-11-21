CREATE DATABASE MangXaHoi_DuLich_beta
USE MangXaHoi_DuLich_beta
GO

CREATE TABLE Account (  -- Bảng lưu thông tin tài khoản người dùng
    User_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của tài khoản
    Created_date DATETIME,  -- Ngày tạo tài khoản
    Modified_date DATETIME,  -- Ngày cập nhật tài khoản
    is_activated BIT,  -- Trạng thái kích hoạt tài khoản
    is_verified BIT,  -- Trạng thái xác thực tài khoản
    Fullname NVARCHAR(255),  -- Họ tên người dùng
    Address NVARCHAR(255),  -- Địa chỉ người dùng
    Avatar NVARCHAR(255),  -- Ảnh đại diện người dùng
    Birthday DATE,  -- Ngày sinh người dùng
    Gender NVARCHAR(10),  -- Giới tính người dùng
    Role NVARCHAR(50),  -- Vai trò của tài khoản
    Email NVARCHAR(255),  -- Email người dùng
    Phone NVARCHAR(15),  -- Số điện thoại người dùng
    Provider NVARCHAR(50),  -- Nhà cung cấp dịch vụ (ví dụ Google, Facebook, v.v.)
    Vip BIT,  -- Trạng thái VIP của người dùng
    Password NVARCHAR(255)  -- Mật khẩu tài khoản
);

INSERT INTO Account (Created_date, Modified_date, is_activated, is_verified, Fullname, Address, Avatar, Birthday, Gender, Role, Email, Phone, Provider, Vip, Password) VALUES
('2024-11-01', '2024-11-01', 1, 1, 'Nguyễn Văn A', 'Hà Nội', 'avatar1.jpg', '1990-01-01', 'Nam', 'User', 'a@example.com', '0987654321', 'Google', 0, 'password123'),
('2024-11-02', '2024-11-02', 1, 1, 'Trần Thị B', 'Hồ Chí Minh', 'avatar2.jpg', '1992-02-15', 'Nữ', 'Admin', 'b@example.com', '0912345678', 'Facebook', 1, 'password456'),
('2024-11-03', '2024-11-03', 1, 0, 'Lê Minh C', 'Đà Nẵng', 'avatar3.jpg', '1985-03-20', 'Nam', 'User', 'c@example.com', '0901234567', 'Google', 0, 'password789'),
('2024-11-04', '2024-11-04', 0, 0, 'Phạm Thị D', 'Cần Thơ', 'avatar4.jpg', '1995-06-25', 'Nữ', 'User', 'd@example.com', '0981122334', 'Facebook', 0, 'password101'),
('2024-11-05', '2024-11-05', 1, 1, 'Nguyễn Minh E', 'Hải Phòng', 'avatar5.jpg', '1988-07-30', 'Nam', 'Admin', 'e@example.com', '0915674321', 'Google', 1, 'password112'),
('2024-11-06', '2024-11-06', 1, 0, 'Hoàng Thị F', 'Vũng Tàu', 'avatar6.jpg', '1993-08-18', 'Nữ', 'User', 'f@example.com', '0985671324', 'Facebook', 0, 'password123'),
('2024-11-07', '2024-11-07', 1, 1, 'Vũ Văn G', 'Quảng Ninh', 'avatar7.jpg', '1991-09-10', 'Nam', 'User', 'g@example.com', '0912348765', 'Google', 1, 'password234'),
('2024-11-08', '2024-11-08', 1, 1, 'Bùi Thị H', 'Hà Nội', 'avatar8.jpg', '1996-12-14', 'Nữ', 'User', 'h@example.com', '0908765432', 'Facebook', 0, 'password345'),
('2024-11-09', '2024-11-09', 1, 1, 'Đoàn Minh I', 'Nha Trang', 'avatar9.jpg', '1994-02-20', 'Nam', 'User', 'i@example.com', '0911234567', 'Google', 1, 'password456'),
('2024-11-10', '2024-11-10', 0, 0, 'Ngô Thị J', 'Thanh Hóa', 'avatar10.jpg', '1990-05-12', 'Nữ', 'Admin', 'j@example.com', '0982345678', 'Facebook', 0, 'password789');


CREATE TABLE Place (  -- Bảng lưu thông tin địa điểm
    Place_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của địa điểm
    Name NVARCHAR(255),  -- Tên địa điểm
    Address NVARCHAR(255),  -- Địa chỉ địa điểm
    Type NVARCHAR(50),  -- Loại hình địa điểm (ví dụ: du lịch, nghỉ dưỡng, v.v.)
    Image NVARCHAR(255),  -- Đường dẫn ảnh của địa điểm
    Cloudinary_id NVARCHAR(255),  -- ID ảnh trên Cloudinary
    Rating FLOAT,  -- Đánh giá trung bình của địa điểm
    Description NVARCHAR(MAX)  -- Mô tả về địa điểm
);

INSERT INTO Place (Name, Address, Type, Image, Cloudinary_id, Rating, Description) VALUES
('Vịnh Hạ Long', 'Hạ Long, Quảng Ninh', 'Du lịch', 'halong.jpg', 'cloud1', 4.8, 'Vịnh Hạ Long nổi tiếng với phong cảnh đẹp và các đảo đá vôi kỳ vĩ.'),
('Phố Cổ Hà Nội', 'Hà Nội', 'Du lịch', 'phoco.jpg', 'cloud2', 4.5, 'Phố Cổ Hà Nội với những ngôi nhà cổ kính và không gian đặc trưng.'),
('Chợ Bến Thành', 'TP. Hồ Chí Minh', 'Mua sắm', 'choben.jpg', 'cloud3', 4.3, 'Chợ Bến Thành là nơi bạn có thể mua sắm nhiều đặc sản và quà lưu niệm.'),
('Sapa', 'Lào Cai', 'Du lịch', 'sapa.jpg', 'cloud4', 4.7, 'Sapa nổi tiếng với những cảnh đẹp thiên nhiên và không khí mát mẻ.'),
('Đà Lạt', 'Lâm Đồng', 'Du lịch', 'dalat.jpg', 'cloud5', 4.6, 'Đà Lạt với các vườn hoa và khí hậu dễ chịu là điểm đến yêu thích của du khách.'),
('Cù Lao Chàm', 'Quảng Nam', 'Du lịch', 'culaocham.jpg', 'cloud6', 4.9, 'Cù Lao Chàm với bãi biển trong xanh và hệ sinh thái biển phong phú.'),
('Bãi biển Nha Trang', 'Nha Trang', 'Du lịch', 'nhatrang.jpg', 'cloud7', 4.8, 'Nha Trang là một trong những bãi biển đẹp và nổi tiếng nhất Việt Nam.'),
('Bãi Dài Phú Quốc', 'Phú Quốc', 'Du lịch', 'baidai.jpg', 'cloud8', 4.6, 'Bãi Dài với bãi cát trắng mịn và làn nước trong xanh, rất thích hợp để thư giãn.'),
('Cố Đô Huế', 'Huế', 'Di tích', 'hue.jpg', 'cloud9', 4.7, 'Cố Đô Huế là di sản văn hóa thế giới với những kiến trúc cổ kính và lịch sử phong phú.'),
('Vườn Quốc Gia Phong Nha-Kẻ Bàng', 'Quảng Bình', 'Du lịch', 'phongnha.jpg', 'cloud10', 4.9, 'Phong Nha-Kẻ Bàng với các hang động nổi tiếng là điểm đến của những người yêu thích khám phá thiên nhiên.');



CREATE TABLE Hotel (  -- Bảng lưu thông tin khách sạn
    Hotel_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của khách sạn
    Name NVARCHAR(255),  -- Tên khách sạn
    Address NVARCHAR(255),  -- Địa chỉ khách sạn
    Rating FLOAT,  -- Đánh giá trung bình của khách sạn
    Room INT,  -- Số lượng phòng của khách sạn
    Type NVARCHAR(50),  -- Loại hình khách sạn (ví dụ: resort, motel, v.v.)
    Website NVARCHAR(255)  -- Đường dẫn website của khách sạn
);


INSERT INTO Hotel (Name, Address, Rating, Room, Type, Website) VALUES
('InterContinental Hanoi', 'Hà Nội', 4.9, 200, 'Resort', 'intercontinental.com.vn'),
('Novotel Da Nang', 'Đà Nẵng', 4.7, 150, 'Hotel', 'novotel.com.vn'),
('Vinpearl Nha Trang', 'Nha Trang', 4.8, 250, 'Resort', 'vinpearl.com.vn'),
('Sheraton Saigon', 'TP. Hồ Chí Minh', 4.7, 100, 'Hotel', 'sheraton.com.vn'),
('Sofitel Legend Metropole Hanoi', 'Hà Nội', 5.0, 300, 'Luxury', 'sofitel.com.vn'),
('Park Hyatt Saigon', 'TP. Hồ Chí Minh', 4.8, 120, 'Luxury', 'parkhyatt.com'),
('Furama Resort Danang', 'Đà Nẵng', 4.6, 180, 'Resort', 'furama.com.vn'),
('JW Marriott Phu Quoc', 'Phú Quốc', 4.9, 220, 'Luxury', 'jwmarriott.com.vn'),
('Radisson Blu Resort Cam Ranh', 'Khánh Hòa', 4.5, 130, 'Resort', 'radissonblu.com.vn'),
('The Nam Hai, Hoi An', 'Hội An', 5.0, 80, 'Luxury', 'thenamhai.com');


CREATE TABLE Restaurant (  -- Bảng lưu thông tin nhà hàng
    Restaurant_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của nhà hàng
    Name NVARCHAR(255),  -- Tên nhà hàng
    Address NVARCHAR(255),  -- Địa chỉ nhà hàng
    Type NVARCHAR(50),  -- Loại hình nhà hàng (ví dụ: Á, Âu, v.v.)
    Website NVARCHAR(255)  -- Đường dẫn website của nhà hàng
);


INSERT INTO Restaurant (Name, Address, Type, Website) VALUES
('Nhà Hàng Ngon', 'Hà Nội', 'Á', 'nhahangngon.com'),
('Hủ Tiếu Nam Vang', 'TP. Hồ Chí Minh', 'Á', 'hutieu.com.vn'),
('Món Huế', 'Đà Nẵng', 'Á', 'monhue.com.vn'),
('Pizza 4P', 'Hà Nội', 'Âu', 'pizza4ps.com'),
('The Kafe', 'TP. Hồ Chí Minh', 'Âu', 'thekafe.com'),
('Sushi Bar', 'Hà Nội', 'Nhật', 'sushibar.com.vn'),
('Làng Nướng Nam Bộ', 'Đà Nẵng', 'Việt', 'langnuong.com.vn'),
('Bún Chả Hà Nội', 'Hà Nội', 'Việt', 'bunchahanoi.com.vn'),
('Café de Paris', 'TP. Hồ Chí Minh', 'Âu', 'cafedeparis.com'),
('Nhà Hàng Sài Gòn', 'TP. Hồ Chí Minh', 'Việt', 'nhahangsaigon.com.vn');

CREATE TABLE Vehicle (  -- Bảng lưu thông tin phương tiện di chuyển
    Vehicle_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của phương tiện
    Name NVARCHAR(255),  -- Tên phương tiện
    Type NVARCHAR(50)  -- Loại phương tiện (xe bus, xe du lịch, v.v.)
);

INSERT INTO Vehicle (Name, Type)
VALUES
(N'Xe buýt Sài Gòn', N'Xe buýt'),
(N'Xe khách Hoàng Long', N'Xe khách'),
(N'Xe limousine VIP', N'Xe limousine'),
(N'Tàu du lịch Hạ Long', N'Tàu du lịch'),
(N'Xe đạp đôi Đà Lạt', N'Xe đạp'),
(N'Thuyền rồng Huế', N'Thuyền du lịch'),
(N'Xe máy cho thuê Đà Nẵng', N'Xe máy'),
(N'Xe điện VinFast', N'Xe điện'),
(N'Tàu cao tốc Phú Quốc', N'Tàu cao tốc'),
(N'Xe jeep Mũi Né', N'Xe jeep');


CREATE TABLE Tour (  -- Bảng lưu thông tin tour du lịch
    Tour_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của tour
    Title NVARCHAR(255),  -- Tiêu đề tour
    Description NVARCHAR(MAX),  -- Mô tả tour
    Destination NVARCHAR(255),  -- Điểm đến của tour
    Departure NVARCHAR(255),  -- Điểm khởi hành của tour
    is_activated BIT,  -- Trạng thái kích hoạt tour
    Created_by INT,  -- ID người tạo tour
    Created_at DATETIME,  -- Thời gian tạo tour
    Modified_at DATETIME,  -- Thời gian cập nhật tour
    FOREIGN KEY (Created_by) REFERENCES Account(User_id)  -- Liên kết với bảng Account
);
INSERT INTO Tour (Title, Description, Destination, Departure, is_activated, Created_by, Created_at, Modified_at)
VALUES
(N'Tour Sài Gòn - Miền Tây', N'Khám phá vẻ đẹp miền Tây sông nước, thưởng thức đặc sản địa phương.', N'Miền Tây', N'Sài Gòn', 1, 1, GETDATE(), GETDATE()),
(N'Tour Đà Nẵng - Hội An', N'Trải nghiệm vẻ đẹp cổ kính của Hội An và biển Đà Nẵng.', N'Hội An', N'Đà Nẵng', 1, 2, GETDATE(), GETDATE()),
(N'Tour Hà Nội - Sapa', N'Tham quan thị trấn Sapa, tận hưởng không khí mát lạnh vùng núi.', N'Sapa', N'Hà Nội', 1, 3, GETDATE(), GETDATE()),
(N'Tour Hạ Long - Cát Bà', N'Chiêm ngưỡng vịnh Hạ Long - di sản thiên nhiên thế giới.', N'Hạ Long', N'Hà Nội', 1, 1, GETDATE(), GETDATE()),
(N'Tour Huế - Đà Nẵng', N'Tham quan cố đô Huế và các danh lam thắng cảnh Đà Nẵng.', N'Huế', N'Đà Nẵng', 1, 2, GETDATE(), GETDATE()),
(N'Tour Phú Quốc 4 ngày', N'Khám phá đảo ngọc Phú Quốc với biển xanh, cát trắng.', N'Phú Quốc', N'Hồ Chí Minh', 1, 3, GETDATE(), GETDATE()),
(N'Tour Đà Lạt - Thành phố ngàn hoa', N'Tận hưởng khí hậu mát mẻ và cảnh quan thơ mộng của Đà Lạt.', N'Đà Lạt', N'Sài Gòn', 1, 1, GETDATE(), GETDATE()),
(N'Tour Nha Trang - Vinpearl Land', N'Khám phá thành phố biển Nha Trang và khu giải trí Vinpearl Land.', N'Nha Trang', N'Hồ Chí Minh', 1, 2, GETDATE(), GETDATE()),
(N'Tour Mũi Né - Làng chài', N'Tận hưởng vẻ đẹp của đồi cát và cuộc sống làng chài tại Mũi Né.', N'Mũi Né', N'Sài Gòn', 1, 3, GETDATE(), GETDATE()),
(N'Tour Cần Thơ - Chợ nổi', N'Trải nghiệm cuộc sống sông nước qua chợ nổi Cái Răng.', N'Cần Thơ', N'Sài Gòn', 1, 1, GETDATE(), GETDATE());


CREATE TABLE TourDetail (  -- Bảng chi tiết tour
    TourDetail_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của chi tiết tour
    Date DATETIME,  -- Ngày cụ thể trong tour
    Image NVARCHAR(255),  -- Hình ảnh tour
    Vehicle NVARCHAR(255),  -- Phương tiện di chuyển trong ngày
    Itinerary NVARCHAR(MAX),  -- Lịch trình cụ thể
    Policy NVARCHAR(MAX),  -- Chính sách tour
    Tour_id INT,  -- ID tour
    Place_id INT,  -- ID địa điểm trong tour
    Hotel_id INT,  -- ID khách sạn trong tour
    Restaurant_id INT,  -- ID nhà hàng trong tour
    FOREIGN KEY (Tour_id) REFERENCES Tour(Tour_id),  -- Liên kết với bảng Tour
    FOREIGN KEY (Place_id) REFERENCES Place(Place_id),  -- Liên kết với bảng Place
    FOREIGN KEY (Hotel_id) REFERENCES Hotel(Hotel_id),  -- Liên kết với bảng Hotel
    FOREIGN KEY (Restaurant_id) REFERENCES Restaurant(Restaurant_id)  -- Liên kết với bảng Restaurant
);

INSERT INTO TourDetail (Date, Image, Vehicle, Itinerary, Policy, Tour_id, Place_id, Hotel_id, Restaurant_id)
VALUES
(GETDATE(), N'/images/mekong_day1.jpg', N'Xe du lịch', N'Buổi sáng tham quan chợ nổi Cái Răng, buổi chiều khám phá vườn trái cây.', 
 N'Thời gian tham quan không bao gồm phí cá nhân.', 1, 101, 201, 301),
(GETDATE() + 1, N'/images/mekong_day2.jpg', N'Thuyền', N'Khám phá kênh rạch miền Tây bằng thuyền, thưởng thức đặc sản miền Tây.', 
 N'Hướng dẫn viên đi kèm suốt hành trình.', 1, 102, 202, 302),
(GETDATE(), N'/images/danang_day1.jpg', N'Xe buýt', N'Tham quan Ngũ Hành Sơn và phố cổ Hội An.', 
 N'Ve vào cửa đã bao gồm trong chi phí.', 2, 103, 203, 303),
(GETDATE() + 1, N'/images/danang_day2.jpg', N'Xe điện', N'Tận hưởng cảnh đẹp tại bãi biển Mỹ Khê và cầu Rồng.', 
 N'Khách tự chuẩn bị các vật dụng cá nhân cần thiết.', 2, 104, 204, 304),
(GETDATE(), N'/images/sapa_day1.jpg', N'Xe ô tô', N'Khám phá đèo Ô Quy Hồ và thung lũng Mường Hoa.', 
 N'Tour bao gồm bảo hiểm du lịch.', 3, 105, 205, 305),
(GETDATE() + 1, N'/images/sapa_day2.jpg', N'Đi bộ', N'Tham quan bản Cát Cát và các ruộng bậc thang.', 
 N'Tour có hướng dẫn viên người bản địa.', 3, 106, 206, 306),
(GETDATE(), N'/images/halong_day1.jpg', N'Tàu thủy', N'Chèo kayak khám phá vịnh Hạ Long.', 
 N'Tour không bao gồm đồ uống trên tàu.', 4, 107, 207, 307),
(GETDATE() + 1, N'/images/halong_day2.jpg', N'Tàu du lịch', N'Tham quan hang Sửng Sốt và đảo Ti Tốp.', 
 N'Tour không bao gồm chi phí cá nhân.', 4, 108, 208, 308),
(GETDATE(), N'/images/phuquoc_day1.jpg', N'Xe điện', N'Tham quan các bãi biển nổi tiếng và Vinpearl Safari.', 
 N'Tour bao gồm vé vào cửa các điểm tham quan.', 6, 109, 209, 309),
(GETDATE() + 1, N'/images/phuquoc_day2.jpg', N'Tàu cao tốc', N'Lặn ngắm san hô tại quần đảo An Thới.', 
 N'Khách mang theo vật dụng cá nhân cần thiết.', 6, 110, 210, 310);

CREATE TABLE Schedule (  -- Bảng lịch trình tour
    Schedule_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của lịch trình
    Time NVARCHAR(50),  -- Thời gian tour khởi hành
    Start_date DATE,  -- Ngày bắt đầu tour
    End_date DATE,  -- Ngày kết thúc tour
    children_price FLOAT,  -- Giá cho trẻ em
    adult_price FLOAT,  -- Giá cho người lớn
    Tour_id INT,  -- ID tour
    FOREIGN KEY (Tour_id) REFERENCES Tour(Tour_id)  -- Liên kết với bảng Tour
);

INSERT INTO Schedule (Time, Start_date, End_date, children_price, adult_price, Tour_id)
VALUES
(N'08:00 AM', '2024-12-01', '2024-12-05', 500000, 1500000, 1),
(N'09:00 AM', '2024-12-10', '2024-12-14', 600000, 1700000, 2),
(N'07:30 AM', '2024-12-15', '2024-12-20', 550000, 1600000, 3),
(N'08:30 AM', '2024-12-20', '2024-12-25', 450000, 1400000, 4),
(N'10:00 AM', '2024-12-25', '2024-12-30', 650000, 1800000, 5),
(N'07:00 AM', '2024-12-01', '2024-12-03', 400000, 1300000, 6),
(N'08:00 AM', '2024-12-05', '2024-12-07', 500000, 1400000, 7),
(N'09:00 AM', '2024-12-10', '2024-12-12', 600000, 1500000, 8),
(N'06:30 AM', '2024-12-15', '2024-12-17', 550000, 1600000, 9),
(N'07:00 AM', '2024-12-20', '2024-12-22', 450000, 1300000, 10);

CREATE TABLE Booking (  -- Bảng đặt tour
    Booking_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của đặt tour
    Created_by INT,  -- ID người tạo đặt tour
    Created_at DATETIME,  -- Thời gian tạo đặt tour
    Modified_at DATETIME,  -- Thời gian cập nhật đặt tour
    Status NVARCHAR(50),  -- Trạng thái đặt tour
    Note NVARCHAR(MAX),  -- Ghi chú từ người đặt tour
    QR NVARCHAR(255),  -- Mã QR của đặt tour
    is_canceled BIT,  -- Trạng thái hủy đặt tour
    Tour_id INT,  -- ID tour đã đặt
    User_id INT,  -- ID người đặt tour
    Payment_id INT,  -- ID phương thức thanh toán
    FOREIGN KEY (Tour_id) REFERENCES Tour(Tour_id),  -- Liên kết với bảng Tour
    FOREIGN KEY (User_id) REFERENCES Account(User_id)  -- Liên kết với bảng Account
);

INSERT INTO Booking (Created_by, Created_at, Modified_at, Status, Note, QR, is_canceled, Tour_id, User_id, Payment_id)
VALUES
(1, '2024-11-21 10:30:00', '2024-11-21 10:45:00', N'Đã xác nhận', N'Khách hàng yêu cầu thanh toán qua thẻ tín dụng', N'QR123456789', 0, 1, 1, 1),
(2, '2024-11-22 11:00:00', '2024-11-22 11:30:00', N'Đã xác nhận', N'Yêu cầu chỗ ngồi gần cửa sổ', N'QR987654321', 0, 2, 2, 2),
(3, '2024-11-22 15:00:00', '2024-11-22 15:20:00', N'Đang chờ duyệt', N'Khách hàng muốn thay đổi ngày khởi hành', N'QR112233445', 0, 3, 3, 3),
(4, '2024-11-23 08:00:00', '2024-11-23 08:30:00', N'Đã hủy', N'Khách hủy tour vì lý do cá nhân', N'QR223344556', 1, 4, 4, 4),
(5, '2024-11-23 10:00:00', '2024-11-23 10:30:00', N'Đã xác nhận', N'Khách yêu cầu thêm dịch vụ đưa đón sân bay', N'QR334455667', 0, 5, 5, 5),
(6, '2024-11-24 09:00:00', '2024-11-24 09:30:00', N'Đang chờ duyệt', N'Khách muốn đặt phòng riêng cho gia đình', N'QR445566778', 0, 6, 6, 6),
(7, '2024-11-24 12:00:00', '2024-11-24 12:15:00', N'Đã xác nhận', N'Yêu cầu ăn chay trong suốt tour', N'QR556677889', 0, 7, 7, 7),
(8, '2024-11-25 14:00:00', '2024-11-25 14:30:00', N'Đã hủy', N'Khách không thể tham gia do bận công việc', N'QR667788990', 1, 8, 8, 8),
(9, '2024-11-26 16:00:00', '2024-11-26 16:30:00', N'Đã xác nhận', N'Khách yêu cầu thêm hướng dẫn viên tiếng Anh', N'QR778899001', 0, 9, 9, 9),
(10, '2024-11-27 17:00:00', '2024-11-27 17:30:00', N'Đang chờ duyệt', N'Khách yêu cầu đổi phương tiện di chuyển', N'QR889900112', 0, 10, 10, 10);



CREATE TABLE BookingCancel (  -- Bảng lưu lý do hủy đặt tour
    BookingCancel_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của hủy đặt tour
    Cancel_reason NVARCHAR(255),  -- Lý do hủy đặt tour
    Booking_id INT,  -- ID của đặt tour đã hủy
    Date DATETIME,  -- Ngày hủy đặt tour
    FOREIGN KEY (Booking_id) REFERENCES Booking(Booking_id)  -- Liên kết với bảng Booking
);

INSERT INTO BookingCancel (Cancel_reason, Booking_id, Date)
VALUES
(N'Lý do cá nhân', 4, '2024-11-23 08:30:00'),
(N'Không thể tham gia tour', 8, '2024-11-25 14:30:00'),
(N'Khách hàng thay đổi kế hoạch', 10, '2024-11-27 17:30:00'),
(N'Thời gian không phù hợp', 7, '2024-11-24 12:30:00'),
(N'Giới hạn ngân sách', 5, '2024-11-23 10:30:00');

CREATE TABLE Traveler (  -- Bảng lưu thông tin hành khách trong đặt tour
    Traveler_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của hành khách
    Full_name NVARCHAR(255),  -- Họ tên hành khách
    Phone NVARCHAR(15),  -- Số điện thoại hành khách
    Birthday DATE,  -- Ngày sinh hành khách
    Gender NVARCHAR(10),  -- Giới tính hành khách
    Passport NVARCHAR(50),  -- Số hộ chiếu hành khách
    Address NVARCHAR(255),  -- Địa chỉ hành khách
    Booking_id INT,  -- ID của đặt tour chứa hành khách
    FOREIGN KEY (Booking_id) REFERENCES Booking(Booking_id)  -- Liên kết với bảng Booking
);

INSERT INTO Traveler (Full_name, Phone, Birthday, Gender, Passport, Address, Booking_id)
VALUES
(N'Nguyễn Văn A', '0912345678', '1990-05-12', N'Nam', 'A12345678', N'123 Đường Lê Lai, Hà Nội', 1),
(N'Nguyễn Thị B', '0987654321', '1985-03-22', N'Nữ', 'B23456789', N'456 Đường Phạm Ngọc Thạch, TP.HCM', 2),
(N'Lê Minh C', '0918765432', '1992-07-14', N'Nam', 'C34567890', N'789 Đường Nguyễn Trãi, Đà Nẵng', 3),
(N'Phạm Kim D', '0976543210', '1980-11-05', N'Nữ', 'D45678901', N'101 Đường Trần Hưng Đạo, Hà Nội', 4),
(N'Hoàng Thanh E', '0932456789', '1993-09-25', N'Nam', 'E56789012', N'102 Đường Lý Thường Kiệt, Huế', 5),
(N'Trần Quỳnh F', '0909876543', '1988-12-30', N'Nữ', 'F67890123', N'303 Đường Nguyễn Huệ, TP.HCM', 6),
(N'Trần Minh G', '0923456789', '1995-04-18', N'Nam', 'G78901234', N'404 Đường Lê Duẩn, Đà Nẵng', 7),
(N'Vũ Lan H', '0945678901', '1994-02-10', N'Nữ', 'H89012345', N'505 Đường Trương Định, Hà Nội', 8),
(N'Ngô Bảo I', '0961234567', '1991-11-06', N'Nam', 'I90123456', N'606 Đường Nguyễn Thiện Thuật, TP.HCM', 9),
(N'Phan Minh J', '0952345678', '1996-05-17', N'Nam', 'J01234567', N'707 Đường Phan Chu Trinh, Đà Nẵng', 10);


CREATE TABLE Post (  -- Bảng lưu thông tin bài đăng
    Post_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của bài đăng
    Title NVARCHAR(255),  -- Tiêu đề bài đăng
    Description NVARCHAR(MAX),  -- Mô tả chi tiết bài đăng
    Location NVARCHAR(255),  -- Địa điểm bài đăng nhắc tới
    Image NVARCHAR(255),  -- Đường dẫn ảnh bài đăng
    Status NVARCHAR(50),  -- Trạng thái của bài đăng (ví dụ: công khai, ẩn, v.v.)
    Created_date DATETIME,  -- Ngày tạo bài đăng
    Modified_date DATETIME,  -- Ngày cập nhật bài đăng
    isActivated BIT,  -- Trạng thái kích hoạt bài đăng
    User_id INT,  -- ID người dùng đăng bài
    FOREIGN KEY (User_id) REFERENCES Account(User_id)  -- Liên kết với bảng Account
);

INSERT INTO Post (Title, Description, Location, Image, Status, Created_date, Modified_date, isActivated, User_id)
VALUES
(N'Tour du lịch Hà Nội', N'Khám phá vẻ đẹp của Hà Nội với những địa danh nổi tiếng như Hồ Hoàn Kiếm, Văn Miếu, v.v.', N'Hà Nội', N'images/tour_hanoi.jpg', N'Công khai', GETDATE(), GETDATE(), 1, 1),
(N'Tour du lịch Đà Nẵng', N'Tour tham quan các địa điểm như Ngũ Hành Sơn, Bà Nà Hills, và biển Mỹ Khê.', N'Đà Nẵng', N'images/tour_danang.jpg', N'Công khai', GETDATE(), GETDATE(), 1, 2),
(N'Tour du lịch TP.HCM', N'Khám phá những điểm đến nổi bật của TP.HCM như Chợ Bến Thành, Dinh Độc Lập, và phố đi bộ Nguyễn Huệ.', N'TP.HCM', N'images/tour_hcm.jpg', N'Công khai', GETDATE(), GETDATE(), 1, 3),
(N'Tour du lịch Huế', N'Tour tham quan các di tích lịch sử nổi tiếng của Huế như Đại Nội, Chùa Thiên Mụ, và lăng Tự Đức.', N'Huế', N'images/tour_hue.jpg', N'Công khai', GETDATE(), GETDATE(), 1, 4),
(N'Tour du lịch Nha Trang', N'Tour tham quan biển Nha Trang, Vinpearl, và các đảo xung quanh.', N'Nha Trang', N'images/tour_nhatrang.jpg', N'Công khai', GETDATE(), GETDATE(), 1, 5),
(N'Tour du lịch Phú Quốc', N'Khám phá hòn đảo thiên đường với bãi biển đẹp, thác nước, và các khu vui chơi giải trí.', N'Phú Quốc', N'images/tour_phuquoc.jpg', N'Công khai', GETDATE(), GETDATE(), 1, 6),
(N'Tour du lịch Sapa', N'Chinh phục những đỉnh núi cao và ngắm nhìn cảnh đẹp thiên nhiên tuyệt vời của Sapa.', N'Sapa', N'images/tour_sapa.jpg', N'Công khai', GETDATE(), GETDATE(), 1, 7),
(N'Tour du lịch Cần Thơ', N'Khám phá miền Tây Nam Bộ với chợ nổi Cái Răng, vườn trái cây, và những làng nghề truyền thống.', N'Cần Thơ', N'images/tour_canthop.jpg', N'Công khai', GETDATE(), GETDATE(), 1, 8),
(N'Tour du lịch Quy Nhơn', N'Tour tham quan những bãi biển hoang sơ và các di tích lịch sử tại Quy Nhơn.', N'Quy Nhơn', N'images/tour_quynhon.jpg', N'Công khai', GETDATE(), GETDATE(), 1, 9),
(N'Tour du lịch Bình Định', N'Khám phá các địa điểm như Khu du lịch Trung Luận, Chùa Long Khánh, và tháp Đôi.', N'Bình Định', N'images/tour_binhdinh.jpg', N'Công khai', GETDATE(), GETDATE(), 1, 10);

CREATE TABLE PostNotification (  -- Bảng thông báo về bài đăng
    Notification_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của thông báo
    Create_time DATETIME,  -- Thời gian tạo thông báo
    Notification_type NVARCHAR(50),  -- Loại thông báo (ví dụ: bình luận, thích, v.v.)
    Account_id INT,  -- ID tài khoản liên quan
    Post_id INT,  -- ID bài đăng liên quan
    FOREIGN KEY (Account_id) REFERENCES Account(User_id),  -- Liên kết với bảng Account
    FOREIGN KEY (Post_id) REFERENCES Post(Post_id)  -- Liên kết với bảng Post
);

INSERT INTO PostNotification (Create_time, Notification_type, Account_id, Post_id)
VALUES
(GETDATE(), N'Bình luận', 1, 1),  -- Tài khoản 1 bình luận về bài đăng 1
(GETDATE(), N'Thích', 2, 1),  -- Tài khoản 2 thích bài đăng 1
(GETDATE(), N'Bình luận', 3, 2),  -- Tài khoản 3 bình luận về bài đăng 2
(GETDATE(), N'Thích', 4, 2),  -- Tài khoản 4 thích bài đăng 2
(GETDATE(), N'Bình luận', 5, 3),  -- Tài khoản 5 bình luận về bài đăng 3
(GETDATE(), N'Thích', 6, 3),  -- Tài khoản 6 thích bài đăng 3
(GETDATE(), N'Bình luận', 7, 4),  -- Tài khoản 7 bình luận về bài đăng 4
(GETDATE(), N'Thích', 8, 4),  -- Tài khoản 8 thích bài đăng 4
(GETDATE(), N'Bình luận', 9, 5),  -- Tài khoản 9 bình luận về bài đăng 5
(GETDATE(), N'Thích', 10, 5);  -- Tài khoản 10 thích bài đăng 5

CREATE TABLE PostReaction (  -- Bảng lưu phản hồi trên bài đăng
    Reaction_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của phản hồi
    Reaction_type NVARCHAR(50),  -- Loại phản hồi (ví dụ: thích, không thích, v.v.)
    Comment_content NVARCHAR(MAX),  -- Nội dung bình luận phản hồi
    User_id INT,  -- ID người thực hiện phản hồi
    Post_id INT,  -- ID bài đăng được phản hồi
    FOREIGN KEY (User_id) REFERENCES Account(User_id),  -- Liên kết với bảng Account
    FOREIGN KEY (Post_id) REFERENCES Post(Post_id)  -- Liên kết với bảng Post
);

INSERT INTO PostReaction (Reaction_type, Comment_content, User_id, Post_id)
VALUES
(N'Thích', N'Bài đăng rất thú vị!', 1, 1),  -- Tài khoản 1 thích bài đăng 1 với bình luận
(N'Không thích', N'Bài đăng này không có gì đặc biệt.', 2, 1),  -- Tài khoản 2 không thích bài đăng 1 với bình luận
(N'Thích', N'Rất đẹp, tôi sẽ tham gia tour này!', 3, 2),  -- Tài khoản 3 thích bài đăng 2 với bình luận
(N'Không thích', N'Tôi không đồng ý với nội dung bài viết.', 4, 2),  -- Tài khoản 4 không thích bài đăng 2 với bình luận
(N'Thích', N'Bài viết hay, rất hữu ích!', 5, 3),  -- Tài khoản 5 thích bài đăng 3 với bình luận
(N'Thích', N'Tôi rất ấn tượng với thông tin trong bài đăng này!', 6, 3),  -- Tài khoản 6 thích bài đăng 3 với bình luận
(N'Không thích', N'Thông tin không đầy đủ như mong đợi.', 7, 4),  -- Tài khoản 7 không thích bài đăng 4 với bình luận
(N'Thích', N'Chắc chắn sẽ tham gia tour này nếu có dịp!', 8, 4),  -- Tài khoản 8 thích bài đăng 4 với bình luận
(N'Thích', N'Thông tin rất hữu ích cho tôi, cảm ơn!', 9, 5),  -- Tài khoản 9 thích bài đăng 5 với bình luận
(N'Không thích', N'Không thích bài đăng này chút nào.', 10, 5);  -- Tài khoản 10 không thích bài đăng 5 với bình luận


CREATE TABLE Review (  -- Bảng lưu đánh giá từ người dùng
    Review_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của đánh giá
    Rating FLOAT,  -- Số điểm đánh giá (ví dụ: 4.5)
    Comment NVARCHAR(MAX),  -- Nội dung bình luận đánh giá
    User_id INT,  -- ID người đánh giá
    Place_id INT,  -- ID địa điểm được đánh giá
    Tour_id INT,  -- ID tour được đánh giá
    FOREIGN KEY (User_id) REFERENCES Account(User_id),  -- Liên kết với bảng Account
    FOREIGN KEY (Place_id) REFERENCES Place(Place_id),  -- Liên kết với bảng Place
    FOREIGN KEY (Tour_id) REFERENCES Tour(Tour_id)  -- Liên kết với bảng Tour
);
INSERT INTO Review (Rating, Comment, User_id, Place_id, Tour_id)
VALUES
(4.5, N'Tour tuyệt vời, hướng dẫn viên rất nhiệt tình và chuyên nghiệp.', 1, 1, 1),  -- Người dùng 1 đánh giá tour 1 tại địa điểm 1
(3.8, N'Địa điểm này đẹp nhưng có thể cải thiện dịch vụ.', 2, 2, 2),  -- Người dùng 2 đánh giá tour 2 tại địa điểm 2
(5.0, N'Chuyến đi rất đáng nhớ, tôi sẽ quay lại lần sau!', 3, 3, 3),  -- Người dùng 3 đánh giá tour 3 tại địa điểm 3
(2.5, N'Không như kỳ vọng, tour thiếu sự tổ chức tốt.', 4, 4, 4),  -- Người dùng 4 đánh giá tour 4 tại địa điểm 4
(4.0, N'Khách sạn tốt, nhưng có một số vấn đề với phương tiện di chuyển.', 5, 5, 5),  -- Người dùng 5 đánh giá tour 5 tại địa điểm 5
(3.0, N'Thực sự không hài lòng với chất lượng tour và ăn uống.', 6, 6, 6),  -- Người dùng 6 đánh giá tour 6 tại địa điểm 6
(4.8, N'Phong cảnh rất đẹp và lịch trình hợp lý, tôi rất hài lòng.', 7, 7, 7),  -- Người dùng 7 đánh giá tour 7 tại địa điểm 7
(4.2, N'Dịch vụ tương đối ổn, tuy nhiên có thể cải thiện thêm một vài điểm.', 8, 8, 8),  -- Người dùng 8 đánh giá tour 8 tại địa điểm 8
(5.0, N'Rất tuyệt vời, tôi đã có những trải nghiệm không thể quên.', 9, 9, 9),  -- Người dùng 9 đánh giá tour 9 tại địa điểm 9
(4.6, N'Thật sự là chuyến đi tuyệt vời, chỉ có thể cải thiện về thời gian di chuyển.', 10, 10, 10);  -- Người dùng 10 đánh giá tour 10 tại địa điểm 10


CREATE TABLE Liked (  -- Bảng lưu lượt thích bài đăng
    Like_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của lượt thích
    User_id INT,  -- ID người dùng thích bài đăng
    Post_id INT,  -- ID bài đăng được thích
    FOREIGN KEY (User_id) REFERENCES Account(User_id),  -- Liên kết với bảng Account
    FOREIGN KEY (Post_id) REFERENCES Post(Post_id)  -- Liên kết với bảng Post
);

INSERT INTO Liked (User_id, Post_id)
VALUES
(1, 1),  -- Người dùng 1 thích bài đăng 1
(2, 2),  -- Người dùng 2 thích bài đăng 2
(3, 3),  -- Người dùng 3 thích bài đăng 3
(4, 4),  -- Người dùng 4 thích bài đăng 4
(5, 5),  -- Người dùng 5 thích bài đăng 5
(6, 6),  -- Người dùng 6 thích bài đăng 6
(7, 7),  -- Người dùng 7 thích bài đăng 7
(8, 8),  -- Người dùng 8 thích bài đăng 8
(9, 9),  -- Người dùng 9 thích bài đăng 9
(10, 10);  -- Người dùng 10 thích bài đăng 10


CREATE TABLE Follow (  -- Bảng lưu thông tin người theo dõi
    Follow_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của lượt theo dõi
    Follower_id INT,  -- ID người theo dõi
    Followee_id INT,  -- ID người được theo dõi
    FOREIGN KEY (Follower_id) REFERENCES Account(User_id),  -- Liên kết với bảng Account
    FOREIGN KEY (Followee_id) REFERENCES Account(User_id)  -- Liên kết với bảng Account
);

INSERT INTO Follow (Follower_id, Followee_id)
VALUES
(1, 2),  -- Người dùng 1 theo dõi người dùng 2
(2, 3),  -- Người dùng 2 theo dõi người dùng 3
(3, 4),  -- Người dùng 3 theo dõi người dùng 4
(4, 5),  -- Người dùng 4 theo dõi người dùng 5
(5, 6),  -- Người dùng 5 theo dõi người dùng 6
(6, 7),  -- Người dùng 6 theo dõi người dùng 7
(7, 8),  -- Người dùng 7 theo dõi người dùng 8
(8, 9),  -- Người dùng 8 theo dõi người dùng 9
(9, 10),  -- Người dùng 9 theo dõi người dùng 10
(10, 1);  -- Người dùng 10 theo dõi người dùng 1

CREATE TABLE Favorite (  -- Bảng lưu thông tin tour yêu thích
    Favorite_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của tour yêu thích
    Notification_type NVARCHAR(50),  -- Loại thông báo yêu thích
    User_id INT,  -- ID người dùng yêu thích tour
    Tour_id INT,  -- ID tour yêu thích
    FOREIGN KEY (User_id) REFERENCES Account(User_id),  -- Liên kết với bảng Account
    FOREIGN KEY (Tour_id) REFERENCES Tour(Tour_id)  -- Liên kết với bảng Tour
);

INSERT INTO Favorite (Notification_type, User_id, Tour_id)
VALUES
('Yêu thích', 1, 101),  -- Người dùng 1 yêu thích tour 101
('Yêu thích', 2, 102),  -- Người dùng 2 yêu thích tour 102
('Yêu thích', 3, 103),  -- Người dùng 3 yêu thích tour 103
('Yêu thích', 4, 104),  -- Người dùng 4 yêu thích tour 104
('Yêu thích', 5, 105),  -- Người dùng 5 yêu thích tour 105
('Yêu thích', 6, 106),  -- Người dùng 6 yêu thích tour 106
('Yêu thích', 7, 107),  -- Người dùng 7 yêu thích tour 107
('Yêu thích', 8, 108),  -- Người dùng 8 yêu thích tour 108
('Yêu thích', 9, 109),  -- Người dùng 9 yêu thích tour 109
('Yêu thích', 10, 110);  -- Người dùng 10 yêu thích tour 110


CREATE TABLE Voucher (  -- Bảng lưu thông tin voucher
    Voucher_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của voucher
    Percent FLOAT,  -- Phần trăm giảm giá
    Quantity INT,  -- Số lượng voucher có sẵn
    Time_start DATETIME,  -- Thời gian bắt đầu có hiệu lực
    Time_end DATETIME,  -- Thời gian hết hạn
    is_activated BIT,  -- Trạng thái kích hoạt voucher
    Created_by INT,  -- ID người tạo voucher
    FOREIGN KEY (Created_by) REFERENCES Account(User_id)  -- Liên kết với bảng Account
);
INSERT INTO Voucher (Percent, Quantity, Time_start, Time_end, is_activated, Created_by)
VALUES
(10.0, 100, '2024-11-01 00:00:00', '2024-11-30 23:59:59', 1, 1),  -- Voucher 10% tạo bởi người dùng 1
(15.0, 50, '2024-11-05 00:00:00', '2024-11-20 23:59:59', 1, 2),  -- Voucher 15% tạo bởi người dùng 2
(20.0, 200, '2024-11-10 00:00:00', '2024-12-10 23:59:59', 1, 3),  -- Voucher 20% tạo bởi người dùng 3
(25.0, 150, '2024-11-15 00:00:00', '2024-11-30 23:59:59', 1, 4),  -- Voucher 25% tạo bởi người dùng 4
(30.0, 75, '2024-11-20 00:00:00', '2024-12-31 23:59:59', 1, 5),  -- Voucher 30% tạo bởi người dùng 5
(50.0, 10, '2024-11-25 00:00:00', '2024-11-30 23:59:59', 1, 6);  -- Voucher 50% tạo bởi người dùng 6


CREATE TABLE Payment (  -- Bảng lưu phương thức thanh toán
    Payment_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của phương thức thanh toán
    Name NVARCHAR(255),  -- Tên phương thức thanh toán
    is_activated BIT,  -- Trạng thái kích hoạt phương thức thanh toán
    Created_at DATETIME  -- Ngày tạo phương thức thanh toán
);
INSERT INTO Payment (Name, is_activated, Created_at) VALUES
('Thẻ tín dụng/ghi nợ (Visa, MasterCard, JCB)', 1, GETDATE()),  -- Thẻ tín dụng/ghi nợ
('Chuyển khoản ngân hàng', 1, GETDATE()),  -- Chuyển khoản ngân hàng
('Momo', 1, GETDATE()),  -- Ví điện tử MoMo
('ZaloPay', 1, GETDATE()),  -- Ví điện tử ZaloPay
('ViettelPay', 1, GETDATE()),  -- Ví điện tử ViettelPay
('Moca', 1, GETDATE()),  -- Ví điện tử Moca
('Thanh toán khi nhận hàng (COD)', 1, GETDATE()),  -- COD
('Vietcombank ATM', 1, GETDATE()),  -- Thẻ ATM Vietcombank
('Techcombank ATM', 1, GETDATE()),  -- Thẻ ATM Techcombank



CREATE TABLE Token (  -- Bảng lưu thông tin token xác thực
    Token_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của token
    Expired DATETIME,  -- Thời gian hết hạn của token
    Revised DATETIME,  -- Thời gian cập nhật token
    Token NVARCHAR(255),  -- Giá trị token
    Account_id INT,  -- ID tài khoản liên kết với token
    FOREIGN KEY (Account_id) REFERENCES Account(User_id)  -- Liên kết với bảng Account
);



CREATE TABLE TourTemplate (  -- Bảng lưu mẫu tour
    TourTemplate_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của mẫu tour
    Name NVARCHAR(255),  -- Tên mẫu tour
    Description NVARCHAR(MAX)  -- Mô tả mẫu tour
);

CREATE TABLE CompanyDetails (  -- Bảng lưu thông tin công ty
    Company_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của công ty
    company_name NVARCHAR(255),  -- Tên công ty
    tax_code NVARCHAR(50),  -- Mã số thuế của công ty
    company_address NVARCHAR(255),  -- Địa chỉ công ty
    phone_number NVARCHAR(15),  -- Số điện thoại công ty
    email NVARCHAR(255)  -- Email của công ty
);

INSERT INTO CompanyDetails (company_name, tax_code, company_address, phone_number, email) VALUES
('Công Ty Du Lịch ABC', '123456789', '123 Đường ABC, Hà Nội', '0241234567', 'contact@abc.com'),
('Công Ty Du Lịch XYZ', '987654321', '456 Đường XYZ, TP.HCM', '0287654321', 'info@xyz.com'),
('Công Ty Du Lịch 123', '112233445', '789 Đường 123, Đà Nẵng', '0511234567', 'support@123.com'),
('Công Ty Du Lịch VMP', '556677889', '101 Đường VMP, Cần Thơ', '0292123456', 'hello@vmp.com'),
('Công Ty Du Lịch Thái Bình', '667788990', '202 Đường Thái Bình, Huế', '0541234567', 'office@thaibinh.com'),
('Công Ty Du Lịch Mai An', '998877665', '303 Đường Mai An, Nha Trang', '0581234567', 'sales@maian.com'),
('Công Ty Du Lịch Việt Nam', '443322110', '404 Đường Việt Nam, Phú Quốc', '0771234567', 'contact@vietnamtravel.com'),
('Công Ty Du Lịch Sao Việt', '223344556', '505 Đường Sao Việt, Hội An', '0513123456', 'support@saoviet.com'),
('Công Ty Du Lịch Đồng Nai', '889977665', '606 Đường Đồng Nai, Biên Hòa', '0611234567', 'info@dongnai.com'),
('Công Ty Du Lịch Đông Á', '112233778', '707 Đường Đông Á, Quảng Ninh', '0201234567', 'contact@dongatravel.com');

------------------- nhap du lieu cho tung ban -------------------------




