package egovframework.example.homepage.service.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import egovframework.example.homepage.mapper.BoardMapper;
import egovframework.example.homepage.model.Criteria;
import egovframework.example.homepage.service.BoardService;
import egovframework.example.homepage.service.FileService;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService{
	private final BoardMapper boardMapper;
    private final FileService fileService;

    public void create(Map<String, Object> boardMap) throws IOException {
        boardMapper.create(boardMap);
        Long boardIdx = Long.parseLong(String.valueOf(boardMap.get("board_idx")));
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
        List<Map<String, Object>> fileMapList = fileService.getFileList(boardIdx);
        Map<String, Object> pre = boardMapper.pre(boardIdx);
        Map<String, Object> next = boardMapper.next(boardIdx);
        Map<String, Object> boardMap = boardMapper.getDetails(boardIdx);
        boardMap.put("pre", pre);
        boardMap.put("next", next);
        boardMap.put("fileMapList", fileMapList);
        return boardMap;
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

	public void contactUsSave(Map<String, Object> contactUsMap) {
		boardMapper.contactUsSave(contactUsMap);
	}
	
	public List<Map<String, Object>> recentPost(Integer num){
		return boardMapper.recentPost(num);
	}

	public void editPost(Long bIdx, Map<String, Object> editMap) throws IOException {
		editMap.put("boardIdx", bIdx);
		boardMapper.edit(editMap);
		ArrayList<Map<String, Object>> fileMapArr = (ArrayList<Map<String, Object>>) editMap.get("fileList");
        if (fileMapArr != null){
            for (Map<String, Object> fileMap : fileMapArr){
                fileService.fileUpload(fileMap, bIdx);
            }
        }
        ArrayList<Long> fileDeleteArr = (ArrayList<Long>) editMap.get("fileDeleteList");
        if(fileDeleteArr != null) {
        	System.out.println(fileDeleteArr + "delete");
        	for(int i=0; i<fileDeleteArr.size(); i++) {
        		Long fIdx = Long.parseLong(String.valueOf(fileDeleteArr.get(i)));
        		fileService.fileDelete(fIdx);
        	}
        }
	}

	public void delete(Long bIdx) {
		boardMapper.delete(bIdx);
	}
}
