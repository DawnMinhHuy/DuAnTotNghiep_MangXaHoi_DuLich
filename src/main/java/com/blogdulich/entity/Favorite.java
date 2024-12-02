package com.blogdulich.entity;

import jakarta.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "Favorite")
public class Favorite implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Khóa chính tự tăng
    @Column(name = "Favorite_id")
    private Integer favoriteId;

    @Column(name = "Notification_type")
    private String notificationType;

    @ManyToOne
    @JoinColumn(name = "User_id", referencedColumnName = "User_id", nullable = false)
    private Account account;

    @ManyToOne
    @JoinColumn(name = "Tour_id", referencedColumnName = "Tours_id", nullable = false)
    private Tours tours;

    // Getters and Setters
    public Integer getFavoriteId() {
        return favoriteId;
    }

    public void setFavoriteId(Integer favoriteId) {
        this.favoriteId = favoriteId;
    }

    public String getNotificationType() {
        return notificationType;
    }

    public void setNotificationType(String notificationType) {
        this.notificationType = notificationType;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public Tours getTours() {
        return tours;
    }

    public void setTour(Tours tours) {
        this.tours = tours;
    }
}

