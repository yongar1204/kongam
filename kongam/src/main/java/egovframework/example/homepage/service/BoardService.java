package egovframework.example.homepage.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import egovframework.example.homepage.model.Criteria;

public interface BoardService {

	List<Map<String, Object>> getList(String ctg);

	List<Map<String, Object>> getPagingList(String ctg, Criteria criteria);

	Map<String, Object> getDetails(Long boardIdx);

	void create(Map<String, Object> boardMap) throws IOException;

	List<Map<String, Object>> getCategoryList();

	void contactUsSave(Map<String, Object> contactUsMap);
	
	List<Map<String, Object>> recentPost(Integer num);

	void editPost(Long bIdx, Map<String, Object> editMap) throws IOException;

	void delete(Long bIdx);
}
