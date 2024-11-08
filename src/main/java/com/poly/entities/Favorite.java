package com.poly.entities;

import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name="favorite")
public class Favorite {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "UserId")
    private User user;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "VideoId")
    private Video video;

    @Temporal(TemporalType.DATE)
    private Date likedDate;

    public Favorite() {
    }

    public Favorite(Long id, User user, Video video, Date likedDate) {
        this.id = id;
        this.user = user;
        this.video = video;
        this.likedDate = likedDate;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Video getVideo() {
        return video;
    }

    public void setVideo(Video video) {
        this.video = video;
    }

    public Date getLikedDate() {
        return likedDate;
    }

    public void setLikedDate(Date likedDate) {
        this.likedDate = likedDate;
    }

    @Override
    public String toString() {
        return "Id: "+id+"\nUser: "+user.getId()+"\nVideo: "+video.getId()+"\nLikedDate: "+likedDate+"\n";
    }
}
