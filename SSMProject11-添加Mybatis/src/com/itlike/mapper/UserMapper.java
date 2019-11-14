package com.itlike.mapper;

import com.itlike.domain.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    public void insertUser(User user);

    public User findUser(String utel);

    List<User> findAllUser();

    void deleteUser(Integer uid);


   public void updateUser( User user);

}
