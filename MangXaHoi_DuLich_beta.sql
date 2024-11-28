-- Tạo cơ sở dữ liệu cho hệ thống Mạng xã hội Du lịch
CREATE DATABASE MangXaHoi_DuLich_beta -- 
USE MangXaHoi_DuLich_beta -- 
GO

-- Bảng lưu thông tin tài khoản người dùng
CREATE TABLE Account (
    User_id NVARCHAR(50) PRIMARY KEY , -- Khóa chính, tự tăng
    Created_date DATETIME, -- Ngày tạo tài khoản
    Modified_date DATETIME, -- Ngày sửa tài khoản
    is_activated BIT, -- Trạng thái kích hoạt
    is_verified BIT, -- Trạng thái xác minh
    Address NVARCHAR(255), -- Địa chỉ người dùng
    Avatar NVARCHAR(255), -- Đường dẫn ảnh đại diện
    Birthday DATETIME, -- Ngày sinh
    Password NVARCHAR(255), -- Mật khẩu
    Email NVARCHAR(255), -- Email người dùng
    Fullname NVARCHAR(255), -- Họ và tên
    Phone NVARCHAR(15), -- Số điện thoại
    Role NVARCHAR(50), -- Vai trò (Admin, User,...)
    Gender NVARCHAR(50), -- Giới tính
    Provider NVARCHAR(50), -- Nhà cung cấp (Google, Facebook,...)
    Vip BIT -- Trạng thái tài khoản VIP
);

-- Bảng lưu thông tin chi tiết công ty
CREATE TABLE Company_Details (
    Company_id INT PRIMARY KEY IDENTITY, -- Khóa chính, tự tăng
    company_name NVARCHAR(255), -- Tên công ty
    tax_code NVARCHAR(50), -- Mã số thuế
    company_address NVARCHAR(255), -- Địa chỉ công ty
    phone_number NVARCHAR(15), -- Số điện thoại công ty
    email NVARCHAR(255), -- Email công ty
    User_id NVARCHAR(50), -- Khóa ngoại tham chiếu đến bảng Account
    FOREIGN KEY (User_id) REFERENCES Account(User_id)
);

-- Bảng lưu bài viết của người dùng
CREATE TABLE Posts (
    Post_id INT PRIMARY KEY IDENTITY, -- Khóa chính, tự tăng
    Created_date DATETIME, -- Ngày tạo bài viết
    Modified_date DATETIME, -- Ngày sửa bài viết
    isActivated BIT, -- Trạng thái kích hoạt
    Title NVARCHAR(255), -- Tiêu đề bài viết
    Description NVARCHAR(MAX), -- Nội dung bài viết
    Image NVARCHAR(255), -- Đường dẫn hình ảnh
    Status NVARCHAR(50), -- Trạng thái bài viết
    Location NVARCHAR(255), -- Địa điểm bài viết
    User_id NVARCHAR(50), -- Khóa ngoại tham chiếu đến bảng Account
    FOREIGN KEY (User_id) REFERENCES Account(User_id)
);

-- Bảng lưu thông tin cảm xúc và bình luận bài viết
CREATE TABLE Post_Reaction (
    PostReaction_id INT PRIMARY KEY IDENTITY, -- Khóa chính, tự tăng
    Reaction_type NVARCHAR(50), -- Loại phản ứng (Like, Dislike,...)
    Comment_content NVARCHAR(MAX), -- Nội dung bình luận
    User_id NVARCHAR(50), -- Khóa ngoại tham chiếu đến bảng Account
    Post_id INT, -- Khóa ngoại tham chiếu đến bảng Posts
    FOREIGN KEY (User_id) REFERENCES Account(User_id),
    FOREIGN KEY (Post_id) REFERENCES Posts(Post_id)
);

-- Bảng lưu thông tin người dùng đã thích bài viết
CREATE TABLE Liked (
    Like_id INT PRIMARY KEY IDENTITY, -- Khóa chính, tự tăng
    User_id NVARCHAR(50), -- Khóa ngoại tham chiếu đến bảng Account
    Post_id INT, -- Khóa ngoại tham chiếu đến bảng Posts
    FOREIGN KEY (User_id) REFERENCES Account(User_id),
    FOREIGN KEY (Post_id) REFERENCES Posts(Post_id)
);

-- Bảng lưu danh sách yêu thích của người dùng
CREATE TABLE Favorite (
    Favorite_id INT PRIMARY KEY IDENTITY, -- Khóa chính, tự tăng
    Notification_type NVARCHAR(50), -- Loại thông báo
    User_id NVARCHAR(50), -- Khóa ngoại tham chiếu đến bảng Account
    Tour_id INT, -- Khóa ngoại tham chiếu đến bảng Tours
    FOREIGN KEY (User_id) REFERENCES Account(User_id),
    FOREIGN KEY (Tour_id) REFERENCES Tours(Tours_id)
);

-- Bảng lưu thông tin về các tour du lịch
CREATE TABLE Tours (
    Tours_id INT PRIMARY KEY IDENTITY, -- Khóa chính, tự tăng
    Company_id INT, -- Khóa ngoại tham chiếu đến bảng Company_Details
    Created_date DATETIME, -- Ngày tạo tour
    Modified_date DATETIME, -- Ngày sửa tour
    is_activated BIT, -- Trạng thái kích hoạt
    Title NVARCHAR(255), -- Tên tour
    Destination NVARCHAR(255), -- Điểm đến
    Description NVARCHAR(MAX), -- Mô tả chi tiết tour
    Departure NVARCHAR(255), -- Điểm xuất phát
    FOREIGN KEY (Company_id) REFERENCES Company_Details(Company_id)
);

-- Bảng lưu thông tin chi tiết tour
CREATE TABLE Tour_Detail (
    TourDetail_id INT PRIMARY KEY IDENTITY, -- Khóa chính, tự tăng
    isActivated BIT, -- Trạng thái kích hoạt
    Image NVARCHAR(255), -- Ảnh đại diện của tour
    Vehicle NVARCHAR(255), -- Loại phương tiện
    Itinerary NVARCHAR(MAX), -- Lịch trình chi tiết
    Policy NVARCHAR(MAX), -- Chính sách của tour
    Tours_id INT, -- Khóa ngoại tham chiếu đến bảng Tours
    Places_id INT, -- Khóa ngoại tham chiếu đến bảng Places
    FOREIGN KEY (Tours_id) REFERENCES Tours(Tours_id),
    FOREIGN KEY (Places_id) REFERENCES Places(Places_id)
);

-- Bảng lưu thông tin địa điểm
CREATE TABLE Places (
    Places_id INT PRIMARY KEY IDENTITY, -- Khóa chính, tự tăng
    Name NVARCHAR(255), -- Tên địa điểm
    Address NVARCHAR(255), -- Địa chỉ địa điểm
    Type NVARCHAR(50), -- Loại địa điểm (nhà hàng, khách sạn, danh lam thắng cảnh,...)
    Image NVARCHAR(255), -- Đường dẫn ảnh của địa điểm
    Cloudinary_id NVARCHAR(255), -- ID trên Cloudinary (nếu có)
    Rating FLOAT, -- Điểm đánh giá địa điểm
    Description NVARCHAR(MAX) -- Mô tả chi tiết địa điểm
);

-- Bảng lưu thông tin lịch trình tour
CREATE TABLE Schedule (
    Schedule_id INT PRIMARY KEY IDENTITY, -- Khóa chính, tự tăng
    Time NVARCHAR(50), -- Thời gian (sáng, chiều, tối,...)
    Start_date DATETIME, -- Ngày bắt đầu
    End_date DATETIME, -- Ngày kết thúc
    children_price FLOAT, -- Giá vé trẻ em
    adult_price FLOAT, -- Giá vé người lớn
    TourDetail_id INT, -- Khóa ngoại tham chiếu đến bảng Tour_Detail
    FOREIGN KEY (TourDetail_id) REFERENCES Tour_Detail(TourDetail_id)
);

-- Bảng lưu thông tin đặt vé
CREATE TABLE Booking (
    Booking_id INT PRIMARY KEY IDENTITY, -- Khóa chính, tự tăng
    Created_by INT, -- ID người tạo đơn
    Created_at DATETIME, -- Thời gian tạo đơn
    Modified_by INT, -- ID người chỉnh sửa đơn
    Modified_at DATETIME, -- Thời gian chỉnh sửa đơn
    Status NVARCHAR(50), -- Trạng thái đặt vé (Đã đặt, Đã hủy,...)
    Note NVARCHAR(MAX), -- Ghi chú
    QR NVARCHAR(255), -- Mã QR liên quan đến đặt vé
    is_canceled BIT, -- Trạng thái hủy đơn
    TourDetail_id INT, -- Khóa ngoại tham chiếu đến bảng Tour_Detail
    User_id NVARCHAR(50), -- Khóa ngoại tham chiếu đến bảng Account
    Payment_id INT, -- Khóa ngoại tham chiếu đến bảng Payment
    Schedule_id INT, -- Khóa ngoại tham chiếu đến bảng Schedule
    FOREIGN KEY (TourDetail_id) REFERENCES Tour_Detail(TourDetail_id),
    FOREIGN KEY (User_id) REFERENCES Account(User_id),
    FOREIGN KEY (Payment_id) REFERENCES Payment(Payment_id),
    FOREIGN KEY (Schedule_id) REFERENCES Schedule(Schedule_id)
);

-- Bảng lưu thông tin khách du lịch
CREATE TABLE Travelers (
    Travelers_id INT PRIMARY KEY IDENTITY, -- Khóa chính, tự tăng
    Full_name NVARCHAR(255), -- Họ và tên khách du lịch
    Phone NVARCHAR(15), -- Số điện thoại
    Birthday DATETIME, -- Ngày sinh
    Passport NVARCHAR(50), -- Số hộ chiếu
    Gender NVARCHAR(50), -- Giới tính
    Address NVARCHAR(255), -- Địa chỉ
    Booking_id INT, -- Khóa ngoại tham chiếu đến bảng Booking
    FOREIGN KEY (Booking_id) REFERENCES Booking(Booking_id)
);

-- Bảng lưu thông tin thanh toán
CREATE TABLE Payment (
    Payment_id INT PRIMARY KEY IDENTITY, -- Khóa chính, tự tăng
    Created_at DATETIME, -- Thời gian tạo thanh toán
    is_activated BIT, -- Trạng thái kích hoạt
    Name NVARCHAR(255) -- Tên phương thức thanh toán
);

-- Bảng lưu thông báo liên quan đến bài viết
CREATE TABLE PostNotification (
    PostNotification_id INT PRIMARY KEY IDENTITY, -- Khóa chính, tự tăng
    Create_time DATETIME, -- Thời gian tạo thông báo
    Notification_type NVARCHAR(50), -- Loại thông báo
    Content NVARCHAR(MAX), -- Nội dung thông báo
    User_id NVARCHAR(50), -- Khóa ngoại tham chiếu đến bảng Account
    Post_id INT, -- Khóa ngoại tham chiếu đến bảng Posts
    FOREIGN KEY (User_id) REFERENCES Account(User_id),
    FOREIGN KEY (Post_id) REFERENCES Posts(Post_id)
);

-- Bảng lưu thông tin thẻ liên kết bài viết và tour
CREATE TABLE Post_tags (
    Post_tags_id INT PRIMARY KEY IDENTITY, -- Khóa chính, tự tăng
    Tour_id INT, -- Khóa ngoại tham chiếu đến bảng Tours
    Post_id INT, -- Khóa ngoại tham chiếu đến bảng Posts
    FOREIGN KEY (Tour_id) REFERENCES Tours(Tours_id),
    FOREIGN KEY (Post_id) REFERENCES Posts(Post_id)
);

---- Bảng lưu thông tin chia sẻ bài viết
--CREATE TABLE Share (
--    Share_id INT PRIMARY KEY IDENTITY,             -- Khóa chính tự động tăng, không được để trống
--    Share_time DATETIME NOT NULL,                  -- Thời gian chia sẻ, bắt buộc nhập
--    User_id NVARCHAR(50) NOT NULL,                 -- ID người dùng chia sẻ (khóa ngoại), bắt buộc nhập
--    Post_id INT NOT NULL,                          -- ID bài viết được chia sẻ (khóa ngoại), bắt buộc nhập
--    Platform NVARCHAR(50) NOT NULL,                -- Nền tảng chia sẻ (ví dụ: Facebook, Twitter), bắt buộc nhập
--    Note NVARCHAR(MAX) NULL,                       -- Ghi chú hoặc nội dung chia sẻ thêm, có thể để trống
--    FOREIGN KEY (User_id) REFERENCES Account(User_id), -- Tham chiếu đến bảng Account
--    FOREIGN KEY (Post_id) REFERENCES Posts(Post_id)    -- Tham chiếu đến bảng Posts
--);
