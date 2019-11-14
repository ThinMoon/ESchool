package com.itlike.domain;

public class User {
    private Integer u_id;
    private String u_tel;
    private String username;
    private String password;
    private String rel_name;
    private String shengfenz;

    @Override
    public String toString() {
        return "User{" +
                "u_id=" + u_id +
                ", u_tel='" + u_tel + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", rel_name='" + rel_name + '\'' +
                ", shengfenz='" + shengfenz + '\'' +
                '}';
    }

    public Integer getU_id() {
        return u_id;
    }

    public void setU_id(Integer u_id) {
        this.u_id = u_id;
    }

    public String getU_tel() {
        return u_tel;
    }

    public void setU_tel(String u_tel) {
        this.u_tel = u_tel;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRel_name() {
        return rel_name;
    }

    public void setRel_name(String rel_name) {
        this.rel_name = rel_name;
    }

    public String getShengfenz() {
        return shengfenz;
    }

    public void setShengfenz(String shengfenz) {
        this.shengfenz = shengfenz;
    }
}
