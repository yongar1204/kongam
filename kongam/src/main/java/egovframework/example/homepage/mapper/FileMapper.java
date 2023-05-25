package egovframework.example.homepage.mapper;



import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper
public interface FileMapper {
    void fileSave(Map<String, Object> fileMap);

	List<Map<String, Object>> getFileList(Long boardIdx);
	
	Map<String, Object> getFiles(Long filesIdx);
	
	void fileDelete(Long fileIdx);
}
