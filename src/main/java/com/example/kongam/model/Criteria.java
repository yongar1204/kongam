package com.example.kongam.model;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {

    private int pageNum;
    private int records;
    private int displayPageNum;
    private int endPage;
    private int startPage;
    private int totalElements;
    private int totalPages;
    private int lastPage;
    private int startPageNum;
    private String searchText;

    public Criteria(int pn){
        this.pageNum = pn;
        this.records = 5;
        this.displayPageNum = 5;
        this.endPage = (int) Math.ceil(pageNum / (double)getDisplayPageNum()) * getDisplayPageNum();
        this.startPage = (endPage - getDisplayPageNum()) + 1;
        this.startPageNum = (getPageNum()-1) * getRecords();
    }

}
