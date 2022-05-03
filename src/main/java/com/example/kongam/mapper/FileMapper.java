package com.example.kongam.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.Map;

@Mapper
public interface FileMapper {
    void fileSave(Map<String, Object> fileMap);
}
