package com.hust18.service;

import com.hust18.domain.User;

/*
User服务层接口
 */
public interface UserService {
    /**
     * 判断用户登录
     * @param  loginname
     * @param  password
     * @return 找到返回User对象，没有返回null
     */
    User login(String loginname,String password);

}
