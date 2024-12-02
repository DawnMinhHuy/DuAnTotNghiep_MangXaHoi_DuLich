package com.blogdulich.entity;

import jakarta.persistence.*;

import java.io.Serializable;

@Entity
@Table(name = "Post_tags")
public class Post_tags implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Khóa chính tự tăng
    @Column(name = "Post_tags_id")
    private Integer postTagsId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "Tour_id", referencedColumnName = "Tours_id", nullable = false)
    private Tours tour; // Khóa ngoại tham chiếu đến bảng Tours

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "Post_id", referencedColumnName = "Post_id", nullable = false)
    private Posts post; // Khóa ngoại tham chiếu đến bảng Posts

    // Getters and Setters
    public Integer getPostTagsId() {
        return postTagsId;
    }

    public void setPostTagsId(Integer postTagsId) {
        this.postTagsId = postTagsId;
    }

    public Tours getTour() {
        return tour;
    }

    public void setTour(Tours tour) {
        this.tour = tour;
    }

    public Posts getPost() {
        return post;
    }

    public void setPost(Posts post) {
        this.post = post;
    }
}

