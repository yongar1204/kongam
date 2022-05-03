package com.example.kongam.service;

import com.example.kongam.mapper.BoardMapper;
import com.example.kongam.model.Criteria;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class BoardService {
    private final BoardMapper boardMapper;
    private final FileService fileService;

    public void create(Map<String, Object> boardMap) throws IOException {
        boardMapper.create(boardMap);
        Long boardIdx = Long.parseLong(String.valueOf(boardMap.get("board_idx")));
        System.out.println(boardIdx);
        ArrayList<Map<String, Object>> fileMapArr = (ArrayList<Map<String, Object>>) boardMap.get("fileList");
        if (fileMapArr != null){
            for (Map<String, Object> fileMap : fileMapArr){
                fileService.fileUpload(fileMap, boardIdx);
            }
        }
    }

    public List<Map<String, Object>> getList(String ctg) {
        return boardMapper.getList(ctg);
    }

    public Map<String, Object> getDetails(Long boardIdx) {
        boardMapper.hitUp(boardIdx);
        return boardMapper.getDetails(boardIdx);
    }

    public List<Map<String, Object>> getCategoryList(){
        return boardMapper.getCategoryList();
    }

    public List<Map<String, Object>> getPagingList(String ctg, Criteria criteria) {
        Map<String, Object> map = new HashMap<>();
        map.put("ctg",ctg);
        map.put("records", criteria.getRecords());
        map.put("startPageNum", criteria.getStartPageNum());
        return boardMapper.getPagingList(map);
    }
}
