package com.hust18.service.impl;

import com.hust18.domain.User;
import com.hust18.mapper.UserMapper;
import com.hust18.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService{

    @Autowired
    private UserMapper userMapper;
    @Override
    public User login(String loginname, String password) {
        return userMapper.findWithLoginnameAndPassword(loginname,password);
    }
}
