package com.poly.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

import java.util.Date;
import java.util.List;

@Entity
@Table(name = "video")
public class Video {

    public static Video newVideo(){
        return new Video(new Date(), 0, true);
    }

    @Id
    private String id;

    private String title;
    private String poster;
    private String ytCode;
    private String description;
    private Date postedDate;
    private Integer likes;
    private Boolean active;

    @OneToMany(mappedBy = "video")
    private List<Favorite> favorites;

    public Video() {
    }

    public Video(String id, String title, String poster, String ytCode, String description, Date postedDate, Integer likes, Boolean active, List<Favorite> favorites) {
        this.id = id;
        this.title = title;
        this.poster = poster;
        this.ytCode = ytCode;
        this.description = description;
        this.postedDate = postedDate;
        this.likes = likes;
        this.active = active;
        this.favorites = favorites;
    }

    public Video(Date postedDate, Integer likes, Boolean active) {
        this.postedDate = postedDate;
        this.likes = likes;
        this.active = active;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPoster() {
        return poster;
    }

    public void setPoster(String poster) {
        this.poster = poster;
    }

    public String getYtCode() {
        return ytCode;
    }

    public void setYtCode(String ytCode) {
        this.ytCode = ytCode;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getPostedDate() {
        return postedDate;
    }

    public void setPostedDate(Date postedDate) {
        this.postedDate = postedDate;
    }

    public Integer getLikes() {
        return likes;
    }

    public void setLikes(Integer likes) {
        this.likes = likes;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

    public List<Favorite> getFavorites() {
        return favorites;
    }

    public void setFavorites(List<Favorite> favorites) {
        this.favorites = favorites;
    }

    @Override
    public String toString() {
        return "Id: " + id + "\n" +
                "Title: " + title + "\n" +
                "Poster: " + poster + "\n" +
                "YtCode: " + ytCode + "\n" +
                "Description: " + description + "\n" +
                "PostedDate: " + postedDate + "\n" +
                "Likes: " + likes + "\n" +
                "Active: " + active + "\n";
    }

}
