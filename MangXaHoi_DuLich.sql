CREATE DATABASE MangXaHoi_DuLich_beta
USE MangXaHoi_DuLich_beta

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

CREATE TABLE Hotel (  -- Bảng lưu thông tin khách sạn
    Hotel_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của khách sạn
    Name NVARCHAR(255),  -- Tên khách sạn
    Address NVARCHAR(255),  -- Địa chỉ khách sạn
    Rating FLOAT,  -- Đánh giá trung bình của khách sạn
    Room INT,  -- Số lượng phòng của khách sạn
    Type NVARCHAR(50),  -- Loại hình khách sạn (ví dụ: resort, motel, v.v.)
    Website NVARCHAR(255)  -- Đường dẫn website của khách sạn
);

CREATE TABLE Restaurant (  -- Bảng lưu thông tin nhà hàng
    Restaurant_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của nhà hàng
    Name NVARCHAR(255),  -- Tên nhà hàng
    Address NVARCHAR(255),  -- Địa chỉ nhà hàng
    Type NVARCHAR(50),  -- Loại hình nhà hàng (ví dụ: Á, Âu, v.v.)
    Website NVARCHAR(255)  -- Đường dẫn website của nhà hàng
);

CREATE TABLE Vehicle (  -- Bảng lưu thông tin phương tiện di chuyển
    Vehicle_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của phương tiện
    Name NVARCHAR(255),  -- Tên phương tiện
    Type NVARCHAR(50)  -- Loại phương tiện (xe bus, xe du lịch, v.v.)
);

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

CREATE TABLE BookingNotification (  -- Bảng lưu thông báo về đặt tour
    BookingNotification_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của thông báo
    Create_time DATETIME,  -- Thời gian tạo thông báo
    Notification_type NVARCHAR(50),  -- Loại thông báo (ví dụ: xác nhận, hủy, v.v.)
    Booking_id INT,  -- ID của đặt tour
    FOREIGN KEY (Booking_id) REFERENCES Booking(Booking_id)  -- Liên kết với bảng Booking
);

CREATE TABLE BookingCancel (  -- Bảng lưu lý do hủy đặt tour
    BookingCancel_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của hủy đặt tour
    Cancel_reason NVARCHAR(255),  -- Lý do hủy đặt tour
    Booking_id INT,  -- ID của đặt tour đã hủy
    Date DATETIME,  -- Ngày hủy đặt tour
    FOREIGN KEY (Booking_id) REFERENCES Booking(Booking_id)  -- Liên kết với bảng Booking
);

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

CREATE TABLE PostNotification (  -- Bảng thông báo về bài đăng
    Notification_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của thông báo
    Create_time DATETIME,  -- Thời gian tạo thông báo
    Notification_type NVARCHAR(50),  -- Loại thông báo (ví dụ: bình luận, thích, v.v.)
    Account_id INT,  -- ID tài khoản liên quan
    Post_id INT,  -- ID bài đăng liên quan
    FOREIGN KEY (Account_id) REFERENCES Account(User_id),  -- Liên kết với bảng Account
    FOREIGN KEY (Post_id) REFERENCES Post(Post_id)  -- Liên kết với bảng Post
);

CREATE TABLE PostReaction (  -- Bảng lưu phản hồi trên bài đăng
    Reaction_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của phản hồi
    Reaction_type NVARCHAR(50),  -- Loại phản hồi (ví dụ: thích, không thích, v.v.)
    Comment_content NVARCHAR(MAX),  -- Nội dung bình luận phản hồi
    User_id INT,  -- ID người thực hiện phản hồi
    Post_id INT,  -- ID bài đăng được phản hồi
    FOREIGN KEY (User_id) REFERENCES Account(User_id),  -- Liên kết với bảng Account
    FOREIGN KEY (Post_id) REFERENCES Post(Post_id)  -- Liên kết với bảng Post
);

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

CREATE TABLE Liked (  -- Bảng lưu lượt thích bài đăng
    Like_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của lượt thích
    User_id INT,  -- ID người dùng thích bài đăng
    Post_id INT,  -- ID bài đăng được thích
    FOREIGN KEY (User_id) REFERENCES Account(User_id),  -- Liên kết với bảng Account
    FOREIGN KEY (Post_id) REFERENCES Post(Post_id)  -- Liên kết với bảng Post
);

CREATE TABLE Follow (  -- Bảng lưu thông tin người theo dõi
    Follow_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của lượt theo dõi
    Follower_id INT,  -- ID người theo dõi
    Followee_id INT,  -- ID người được theo dõi
    FOREIGN KEY (Follower_id) REFERENCES Account(User_id),  -- Liên kết với bảng Account
    FOREIGN KEY (Followee_id) REFERENCES Account(User_id)  -- Liên kết với bảng Account
);

CREATE TABLE Favorite (  -- Bảng lưu thông tin tour yêu thích
    Favorite_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của tour yêu thích
    Notification_type NVARCHAR(50),  -- Loại thông báo yêu thích
    User_id INT,  -- ID người dùng yêu thích tour
    Tour_id INT,  -- ID tour yêu thích
    FOREIGN KEY (User_id) REFERENCES Account(User_id),  -- Liên kết với bảng Account
    FOREIGN KEY (Tour_id) REFERENCES Tour(Tour_id)  -- Liên kết với bảng Tour
);

CREATE TABLE Voucher (  -- Bảng lưu thông tin voucher
    Voucher_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của voucher
    Percents FLOAT,  -- Phần trăm giảm giá
    Quantity INT,  -- Số lượng voucher có sẵn
    Time_start DATETIME,  -- Thời gian bắt đầu có hiệu lực
    Time_end DATETIME,  -- Thời gian hết hạn
    is_activated BIT,  -- Trạng thái kích hoạt voucher
    Created_by INT,  -- ID người tạo voucher
    FOREIGN KEY (Created_by) REFERENCES Account(User_id)  -- Liên kết với bảng Account
);

CREATE TABLE Payment (  -- Bảng lưu phương thức thanh toán
    Payment_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của phương thức thanh toán
    Name NVARCHAR(255),  -- Tên phương thức thanh toán
    is_activated BIT,  -- Trạng thái kích hoạt phương thức thanh toán
    Created_at DATETIME  -- Ngày tạo phương thức thanh toán
);

CREATE TABLE Token (  -- Bảng lưu thông tin token xác thực
    Token_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của token
    Expired DATETIME,  -- Thời gian hết hạn của token
    Revised DATETIME,  -- Thời gian cập nhật token
    Token NVARCHAR(255),  -- Giá trị token
    Account_id INT,  -- ID tài khoản liên kết với token
    FOREIGN KEY (Account_id) REFERENCES Account(User_id)  -- Liên kết với bảng Account
);

CREATE TABLE TourGuide (  -- Bảng lưu thông tin hướng dẫn viên du lịch
    TourGuide_id INT PRIMARY KEY IDENTITY,  -- ID tự động tăng của hướng dẫn viên
    Full_name NVARCHAR(255),  -- Họ tên hướng dẫn viên
    Gender NVARCHAR(10),  -- Giới tính hướng dẫn viên
    Avatar NVARCHAR(255),  -- Ảnh đại diện của hướng dẫn viên
    Cloudinary_id NVARCHAR(255),  -- ID ảnh trên Cloudinary
    Tour_id INT,  -- ID tour liên kết
    FOREIGN KEY (Tour_id) REFERENCES Tour(Tour_id)  -- Liên kết với bảng Tour
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
