package com.blogdulich.entity;

import jakarta.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "Payment")
public class Payment implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Khóa chính tự tăng
    @Column(name = "Payment_id")
    private Integer paymentId;

    @Column(name = "Created_at")
    @Temporal(TemporalType.TIMESTAMP) // Kiểu dữ liệu Date và thời gian
    private Date createdAt; // Thời gian tạo thanh toán

    @Column(name = "is_activated")
    private Boolean isActivated; // Trạng thái kích hoạt

    @Column(name = "Name")
    private String name; // Tên phương thức thanh toán

    // Getters and Setters
    public Integer getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(Integer paymentId) {
        this.paymentId = paymentId;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Boolean getIsActivated() {
        return isActivated;
    }

    public void setIsActivated(Boolean isActivated) {
        this.isActivated = isActivated;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
