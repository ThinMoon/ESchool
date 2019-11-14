package com.itlike.service;

import com.itlike.domain.User;

import java.util.List;

public interface UserService {
    public void saveUser(User user);


    public  User findUser(String utel);


    List<User> findAllUser();

    void deleteUser(Integer uid);


    void updateUser(User user);

}
