package com.hust18.controller;

import com.hust18.domain.Book;
import com.hust18.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class BookController {
    /**
     * 自动注入BookService
     */
    @Autowired
    @Qualifier("bookService")
    BookService bookService;

    /**
     * 处理main请求
     */
    @RequestMapping(value = "/main")
    public String main(Model model){
        //获取所有图书集合
        List<Book> book_List = bookService.getAll();
        //将图书集合添加到model当中
        model.addAttribute("book_list",book_List);
        //跳转到main页面
        return "main";
    }

}
