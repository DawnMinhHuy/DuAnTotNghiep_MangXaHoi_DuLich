package com.blogdulich.entity;

import java.util.Date;



import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "Accounts")
public class Account {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long user_id;
	@Temporal(TemporalType.DATE)
	@NotNull(message = "Ngày tạo không được để trống")
	Date created_date = new Date();
	@NotNull(message = "Trạng thái hoạt động không được để trống")
	Boolean isActived;
	@NotBlank(message = "Tên đầy đủ không được để trống")
	String fullname;
	@NotBlank(message = "Địa chỉ email không được để trống")
	@Email(message = "Địa chỉ email không hợp lệ")
	String email;
	@Size(min = 8, max = 16, message = "Mật khẩu phải từ 8 đến 16 ký tự")
	String password;
	@NotBlank(message = "Số điện thoại nhập bắt buộc là 100 số")
	String phone;
	@NotNull(message = "Ngày sinh không được để trống")
	Date birthday;
	@NotBlank(message = "Địa chỉ không được để trống")
	String address;
	@NotBlank(message = "Ảnh đại diện được để trống")
	String avatar;
	@Enumerated(EnumType.ORDINAL)
	Role role = Role.User;
	@Enumerated(EnumType.ORDINAL)
	Gender gender = Gender.Male;
}