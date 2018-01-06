package com.hust18.domain;

import java.io.Serializable;
import java.util.Date;

public class Book implements Serializable{
    private Integer id;
    private String name;
    private String author;
    private Date publicationdate;//出版时间
    private String publication;//出版社
    private Double price;//价格
    private String image;
    private String remark;//评论

    public Book() {
    }

    public Book(Integer id, String name, String author, Date publicationdate, String publication, Double price, String image, String remark) {
        this.id = id;
        this.name = name;
        this.author = author;
        this.publicationdate = publicationdate;
        this.publication = publication;
        this.price = price;
        this.image = image;
        this.remark = remark;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getPublicationdate() {
        return publicationdate;
    }

    public void setPublicationdate(Date publicationdate) {
        this.publicationdate = publicationdate;
    }

    public String getPublication() {
        return publication;
    }

    public void setPublication(String publication) {
        this.publication = publication;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
