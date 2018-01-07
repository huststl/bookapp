package com.hust18.service;

import com.hust18.domain.Book;

import java.util.List;

public interface BookService {
    /*
    *查找所有图书
    * @return Book对象集合
     */
    List<Book> getAll();
}
