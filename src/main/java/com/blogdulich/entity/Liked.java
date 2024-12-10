package com.blogdulich.entity;

import jakarta.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "Liked")
public class Liked implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Khóa chính tự tăng
    @Column(name = "Like_id")
    private Integer likeId;

    @ManyToOne
    @JoinColumn(name = "User_id", referencedColumnName = "User_id", nullable = false)
    private Account account;

    @ManyToOne
    @JoinColumn(name = "Post_id", referencedColumnName = "Post_id", nullable = false)
    private Posts posts;

    // Getters and Setters
    public Integer getLikeId() {
        return likeId;
    }

    public void setLikeId(Integer likeId) {
        this.likeId = likeId;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public Posts getPost() {
        return posts;
    }

    public void setPost(Posts post) {
        this.posts = post;
    }
}
