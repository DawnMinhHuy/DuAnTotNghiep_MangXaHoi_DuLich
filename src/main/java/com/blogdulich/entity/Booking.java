package com.blogdulich.entity;

import jakarta.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "Booking")
public class Booking implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Khóa chính tự tăng
    @Column(name = "Booking_id")
    private Integer bookingId;

    @Column(name = "Created_by")
    private Integer createdBy; // ID người tạo đơn

    @Column(name = "Created_at")
    @Temporal(TemporalType.TIMESTAMP) // Chỉ định kiểu ngày tháng
    private Date createdAt; // Thời gian tạo đơn

    @Column(name = "Modified_by")
    private Integer modifiedBy; // ID người chỉnh sửa đơn

    @Column(name = "Modified_at")
    @Temporal(TemporalType.TIMESTAMP) // Chỉ định kiểu ngày tháng
    private Date modifiedAt; // Thời gian chỉnh sửa đơn

    @Column(name = "Status")
    private String status; // Trạng thái đặt vé (Đã đặt, Đã hủy,...)

    @Column(name = "Note")
    private String note; // Ghi chú

    @Column(name = "QR")
    private String qr; // Mã QR liên quan đến đặt vé

    @Column(name = "is_canceled")
    private Boolean isCanceled; // Trạng thái hủy đơn

    @ManyToOne
    @JoinColumn(name = "TourDetail_id", referencedColumnName = "TourDetail_id", nullable = false)
    private Tour_Detail tourDetail; // Quan hệ nhiều đến 1 với bảng Tour_Detail

    @ManyToOne
    @JoinColumn(name = "User_id", referencedColumnName = "User_id", nullable = false)
    private Account account; // Quan hệ nhiều đến 1 với bảng Account

    @ManyToOne
    @JoinColumn(name = "Payment_id", referencedColumnName = "Payment_id", nullable = false)
    private Payment payment; // Quan hệ nhiều đến 1 với bảng Payment

    @ManyToOne
    @JoinColumn(name = "Schedule_id", referencedColumnName = "Schedule_id", nullable = false)
    private Schedule schedule; // Quan hệ nhiều đến 1 với bảng Schedule

    // Getters and Setters
    public Integer getBookingId() {
        return bookingId;
    }

    public void setBookingId(Integer bookingId) {
        this.bookingId = bookingId;
    }

    public Integer getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(Integer createdBy) {
        this.createdBy = createdBy;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Integer getModifiedBy() {
        return modifiedBy;
    }

    public void setModifiedBy(Integer modifiedBy) {
        this.modifiedBy = modifiedBy;
    }

    public Date getModifiedAt() {
        return modifiedAt;
    }

    public void setModifiedAt(Date modifiedAt) {
        this.modifiedAt = modifiedAt;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getQr() {
        return qr;
    }

    public void setQr(String qr) {
        this.qr = qr;
    }

    public Boolean getIsCanceled() {
        return isCanceled;
    }

    public void setIsCanceled(Boolean isCanceled) {
        this.isCanceled = isCanceled;
    }

    public Tour_Detail getTourDetail() {
        return tourDetail;
    }

    public void setTourDetail(Tour_Detail tourDetail) {
        this.tourDetail = tourDetail;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public Payment getPayment() {
        return payment;
    }

    public void setPayment(Payment payment) {
        this.payment = payment;
    }

    public Schedule getSchedule() {
        return schedule;
    }

    public void setSchedule(Schedule schedule) {
        this.schedule = schedule;
    }
}
