package com.project.Hard.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="login")
public class login {

    @Id
    @Column(name="username")
    private String username;

    @Column(name="password")
    private String password;

    @Column(name="usertype")
    private String userType;
    public login() {
    }

    public login(String username, String password) {
        this.username = username;
        this.password = password;
        this.userType = "user";
    }
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getUserType() {
        return userType;
    }
    public void setUserType(String userType) {
        this.userType = "user";
    }


}
