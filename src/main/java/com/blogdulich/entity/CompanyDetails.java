package com.blogdulich.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@SuppressWarnings("serial")
@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "CompanyDetails")
public class CompanyDetails {
	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    Long companyId;

	    @NotBlank(message = "Tên công ty không được để trống")
	    String companyName;

	    @NotBlank(message = "Mã số thuế không được để trống")
	    String taxCode;

	    @NotBlank(message = "Địa chỉ công ty không được để trống")
	    String companyAddress;

	    @NotBlank(message = "Tên chủ sở hữu không được để trống")
	    String ownerName;

	    @Size(min = 10, max = 10, message = "Số điện thoại phải có đúng 10 chữ số")
	    @Pattern(regexp = "\\d{10}", message = "Số điện thoại phải gồm 10 chữ số")
	    String phoneNumber;

	    @NotBlank(message = "Loại hình kinh doanh không được để trống")
	    String businessType;

	    @NotBlank(message = "Người quản lý không được để trống")
	    String managedBy;
	
	}

