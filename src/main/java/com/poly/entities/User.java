package com.poly.entities;

import jakarta.persistence.*;

import java.util.List;

@NamedQueries({
        @NamedQuery(name = "User.filterByName", query = "select o from User o where o.fullname like :name"),
        @NamedQuery(name = "User.filterByRole", query = "select o from User o where o.admin =:role"),
        @NamedQuery(name = "User.filterByName&Role", query = "select o from User o where o.fullname like :name and o.admin =:role")
})
@Entity
@Table(name = "user")
public class User {

    @Id
    @Column(name = "Id")
    private String id;

    @Column(name = "Password")
    private String password;

    @Column(name = "Fullname")
    private String fullname;

    @Column(name = "Email")
    private String email;

    @Column(name = "Admin")
    private Boolean admin;

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    private List<Favorite> favorites;

    public static User getUserDefaultPassword() {
        User user = new User();
        user.setPassword("1234");
        return user;
    }

    public User() {
        admin = false;
    }

    public User(String id, String password, String fullname, String email, boolean admin, List<Favorite> favorites) {
        this.id = id;
        this.password = password;
        this.fullname = fullname;
        this.email = email;
        this.admin = admin;
        this.favorites = favorites;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isAdmin() {
        return admin;
    }

    public void setAdmin(boolean admin) {
        this.admin = admin;
    }

    public String toString() {
        return new StringBuilder("Id: ").append(id).append("\n")
                .append("Password: ").append(password).append("\n")
                .append("Fullname: ").append(fullname).append("\n")
                .append("Email: ").append(email).append("\n")
                .append("isAdmin: ").append(admin).toString();
    }

    public List<Favorite> getFavorites() {
        return favorites;
    }

    public void setFavorites(List<Favorite> favorites) {
        this.favorites = favorites;
    }
}
