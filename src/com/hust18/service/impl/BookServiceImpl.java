package com.hust18.service.impl;

import com.hust18.domain.Book;
import com.hust18.mapper.BookMapper;
import com.hust18.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("bookService")
public class BookServiceImpl implements BookService{
    @Autowired
    BookMapper bookMapper;
    @Override
    public List<Book> getAll() {
        return bookMapper.findAll();
    }
}
