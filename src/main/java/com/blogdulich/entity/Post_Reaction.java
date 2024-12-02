package com.blogdulich.entity;

import jakarta.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "Post_Reaction")
public class Post_Reaction implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Khóa chính tự tăng
    @Column(name = "PostReaction_id")
    private Integer postReactionId;

    @Column(name = "Reaction_type", length = 50)
    private String reactionType;

    @Column(name = "Comment_content", columnDefinition = "NVARCHAR(MAX)")
    private String commentContent;

    @ManyToOne
    @JoinColumn(name = "User_id", referencedColumnName = "User_id")
    private Account account;

    @ManyToOne
    @JoinColumn(name = "Post_id", referencedColumnName = "Post_id")
    private Posts posts;

    // Getters and Setters
    public Integer getPostReactionId() {
        return postReactionId;
    }

    public void setPostReactionId(Integer postReactionId) {
        this.postReactionId = postReactionId;
    }

    public String getReactionType() {
        return reactionType;
    }

    public void setReactionType(String reactionType) {
        this.reactionType = reactionType;
    }

    public String getCommentContent() {
        return commentContent;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent;
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

	public void setPost(Posts posts) {
		this.posts = posts;
	}

  
}
