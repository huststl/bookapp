package com.hust18.controller;

import javax.servlet.http.HttpSession;

import com.hust18.domain.User;
import com.hust18.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class UserController {
    @Autowired
    @Qualifier("userService")
    UserService userService;

    /**
     * 处理/login请求
     */
    @RequestMapping(value="/login")
    public ModelAndView login(
            String loginname,String password,ModelAndView mv,HttpSession session
    ){
        User user = userService.login(loginname,password);
        if(user!=null){
            //登录成功，将user对象设置到HttpSession作用范围域
            session.setAttribute("user",user);
            //转发到main请求
            mv.setView(new RedirectView("/bookapp/main"));

        }else {
            //登录失败,设置失败信息,并跳转到登录页面
            mv.addObject("message","登录名或密码错误,请重新输入");
            mv.setViewName("loginForm");
        }
        return mv;
    }
}
