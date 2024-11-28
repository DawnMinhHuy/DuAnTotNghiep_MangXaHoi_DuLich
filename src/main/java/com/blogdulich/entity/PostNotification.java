package com.blogdulich.entity;

import jakarta.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "PostNotification")
public class PostNotification implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Khóa chính tự tăng
    @Column(name = "PostNotification_id")
    private Integer postNotificationId;

    @Column(name = "Create_time")
    @Temporal(TemporalType.TIMESTAMP) // Kiểu dữ liệu Date và thời gian
    private Date createTime; // Thời gian tạo thông báo

    @Column(name = "Notification_type")
    private String notificationType; // Loại thông báo

    @Column(name = "Content")
    private String content; // Nội dung thông báo

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "User_id", referencedColumnName = "User_id", nullable = false)
    private Account user; // Khóa ngoại tham chiếu đến bảng Account

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "Post_id", referencedColumnName = "Post_id", nullable = false)
    private Posts post; // Khóa ngoại tham chiếu đến bảng Posts

    // Getters and Setters
    public Integer getPostNotificationId() {
        return postNotificationId;
    }

    public void setPostNotificationId(Integer postNotificationId) {
        this.postNotificationId = postNotificationId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getNotificationType() {
        return notificationType;
    }

    public void setNotificationType(String notificationType) {
        this.notificationType = notificationType;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Account getUser() {
        return user;
    }

    public void setUser(Account user) {
        this.user = user;
    }

    public Posts getPost() {
        return post;
    }

    public void setPost(Posts post) {
        this.post = post;
    }
}
