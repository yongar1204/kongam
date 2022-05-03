package com.example.kongam.service;

import com.example.kongam.mapper.FileMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Base64;
import java.util.Map;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class FileService {
    private final FileMapper fileMapper;
    public void fileUpload(Map<String, Object> fileMap, Long boardIdx) throws IOException {
        String fileName = (String) fileMap.get("fileName");
        UUID uuid = UUID.randomUUID();
        String uuidFileName = uuid + "_" + fileName;
        String filePath = System.getProperty("user.dir") + "/files/";
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
}
