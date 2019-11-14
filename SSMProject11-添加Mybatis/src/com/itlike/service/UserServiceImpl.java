package com.itlike.service;

import com.itlike.domain.User;
import com.itlike.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("UserService")
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;


    @Override
    public void updateUser(User user) {
        System.out.println(user);
        userMapper.updateUser(user);
    }
    @Override
    public void saveUser(User user) {
        System.out.println("来到了业务层 保存 customer"+user);
        /*调用dao层*/
        userMapper.insertUser(user);

    }
    public User findUser(String utel){
       return userMapper.findUser(utel);
    }

    @Override
    public List<User> findAllUser() {
        return userMapper.findAllUser();
    }

    @Override
    public void deleteUser(Integer uid) {
        userMapper.deleteUser(uid);
    }



}
