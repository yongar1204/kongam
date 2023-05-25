package egovframework.example.homepage.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

public interface FileService {

	void fileUpload(Map<String, Object> fileMap, Long boardIdx) throws IOException;
	
	List<Map<String, Object>> getFileList(Long boardIdx);

	Map<String, Object> getFiles(Long filesIdx);
	
	void fileDelete(Long fileIdx);
}
