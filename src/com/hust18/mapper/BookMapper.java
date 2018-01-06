package com.hust18.mapper;

import com.hust18.domain.Book;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface BookMapper {
    /*
    *查询所有图书
    * @return 图书对象集合
     */
    @Select("select * from tb_book")
    List<Book> findAll();
}
