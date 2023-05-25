package egovframework.example.homepage.service.impl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Base64;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.stereotype.Service;

import egovframework.example.homepage.mapper.FileMapper;
import egovframework.example.homepage.service.FileService;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class FileServiceImpl implements FileService{
	
	private final FileMapper fileMapper;
	
    public void fileUpload(Map<String, Object> fileMap, Long boardIdx) throws IOException {
        String fileName = (String) fileMap.get("fileName");
        UUID uuid = UUID.randomUUID();
        String uuidFileName = uuid + "_" + fileName;
        //String filePath = "D:/homepage_data/files/";
        //String filePath = "C:/Users/BXSystem/eclipse-workspace/kongam_files/";
        String filePath = "/ggamit/hp_attfile/hp_board_files/";
        File file = new File(filePath, uuidFileName);
        String fileData = (String) fileMap.get("fileData");
        Base64.Decoder decoder = Base64.getDecoder();
        byte[] decodedBytes = decoder.decode(fileData.split(",")[1]);
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        fileOutputStream.write(decodedBytes);
        fileOutputStream.close();
        fileMap.remove("fileData");
        fileMap.put("boardIdx", boardIdx);
        fileMap.put("filePath", filePath);
        fileMap.put("uuidFileName", uuidFileName);
        System.out.println(fileMap.get("fileName"));
        fileMapper.fileSave(fileMap);
    }
    
    public List<Map<String, Object>> getFileList(Long boardIdx){
    	return fileMapper.getFileList(boardIdx);
    }
    
    public Map<String, Object> getFiles(Long filesIdx){
    	return fileMapper.getFiles(filesIdx);
    }

	public void fileDelete(Long fileIdx) {
		Map<String, Object> fileMap = fileMapper.getFiles(fileIdx);
		File file = new File((String)fileMap.get("filePath") + (String)fileMap.get("fileName"));
		System.out.println((String)fileMap.get("filePath") + (String)fileMap.get("fileName"));
		if (file.exists()) {
			file.delete();
		} else {
			System.out.println("파일이 존재하지 않습니다.");
		}
		fileMapper.fileDelete(fileIdx);
	}
}
