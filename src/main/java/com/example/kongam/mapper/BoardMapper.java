package com.example.kongam.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface BoardMapper {

    void create(Map<String, Object> boardMap);

    List<Map<String, Object>> getList(String ctg);

    List<Map<String, Object>> getPagingList(Map<String, Object> map);

    List<Map<String, Object>> getCategoryList();

    Map<String, Object> getDetails(Long boardIdx);

    void hitUp(Long boardIdx);
}
