package com.hust18.mapper;

import com.hust18.domain.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface UserMapper {
    /**
     * 根据登录名和密码查询用户
     *
     * @return 找到返回User对象，没有找到返回null
     */
    @Select("select * from tb_user where loginname = #{loginname} and password = #{password}")
    User findWithLoginnameAndPassword(@Param("loginname")String loginname,
                                      @Param("password")String password);
}
