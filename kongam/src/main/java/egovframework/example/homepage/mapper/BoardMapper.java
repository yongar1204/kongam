package egovframework.example.homepage.mapper;



import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper
public interface BoardMapper {

    void create(Map<String, Object> boardMap);

    List<Map<String, Object>> getList(String ctg);

    List<Map<String, Object>> getPagingList(Map<String, Object> map);

    List<Map<String, Object>> getCategoryList();

    Map<String, Object> getDetails(Long boardIdx);

    void hitUp(Long boardIdx);

	void contactUsSave(Map<String, Object> contactUsMap);

	Map<String, Object> pre(Long boardIdx);

	Map<String, Object> next(Long boardIdx);

	List<Map<String, Object>> recentPost(Integer num);

	void edit(Map<String, Object> editMap);

	void delete(Long bIdx);
}
