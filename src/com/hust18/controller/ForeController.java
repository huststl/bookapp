package com.hust18.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ForeController {
    @RequestMapping(value = "/{formName}")
    public String loginForm(@PathVariable String formName){
        //动态跳转页面
        return formName;
    }
}
