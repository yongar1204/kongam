package com.example.kongam.controller.ApiController;

import com.example.kongam.model.Criteria;
import com.example.kongam.service.BoardService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.*;

@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class BoardApiController {
    private final BoardService boardService;

    @GetMapping("/{ctg}/all")
    public List<Map<String, Object>> getBoardList(@PathVariable String ctg){
        return boardService.getList(ctg);
    }

    @GetMapping({"/{ctg}", "/{ctg}/{pn}"})
    public Map<String, Object> getBoardPagingList(@PathVariable String ctg,
                                                  @PathVariable(required = false) Integer pn){
        if (pn == null){
            pn=1;
        }
        List<Map<String, Object>> findAll = boardService.getList(ctg);
        int totalElement = findAll.size();
        System.out.println(totalElement);
        Criteria criteria = new Criteria(pn);
        criteria.setTotalElements(totalElement);
        criteria.setTotalPages((int) Math.ceil(criteria.getTotalElements() / (double) criteria.getRecords()));
        criteria.setLastPage(Math.min(criteria.getTotalPages(), (criteria.getStartPage() + criteria.getDisplayPageNum() - 1)));
        List<Map<String, Object>> pagingList = boardService.getPagingList(ctg, criteria);
        Map<String, Object> pagingMap = new HashMap<>();
        pagingMap.put("paging", criteria);
        pagingMap.put("boardList", pagingList);
        System.out.println(pagingList);
        return pagingMap;
    }

    @GetMapping("/details/{boardIdx}")
    public Map<String, Object> boardMap(@PathVariable Long boardIdx){
        Map<String, Object> boardMap = boardService.getDetails(boardIdx);
        return boardMap;
    }

    @PostMapping
    public void submit(@RequestBody Map<String, Object> boardMap) throws IOException {
        boardMap.put("board_idx", null);
        boardService.create(boardMap);
    }

    @PostMapping("/imgUpload")
    public void saveImage(HttpServletRequest req, HttpServletResponse res, MultipartFile upload){
        UUID uid = UUID.randomUUID();
        OutputStream out = null;
        PrintWriter printWriter = null;

        res.setCharacterEncoding("utf-8");
        res.setContentType("text/html;charset=utf-8");

        try{
            String fileName = upload.getOriginalFilename();
            byte[] bytes = upload.getBytes();
            String path = System.getProperty("user.dir") + "/img/"; // Users/yongar1204/Desktop/인텔리제이/kongam/img/
            String imgUploadPath = path + uid + "_" + fileName;

            out = new FileOutputStream(imgUploadPath);
            out.write(bytes);
            out.flush();

            printWriter = res.getWriter();
            String callback = req.getParameter("CKEditorFuncNum");
            String fileUrl = "/api/imgSubmit?uid=" + uid + "&fileName=" + fileName;
//            printWriter.println("<script type='text/javascript'>"
//                    + "window.parent.CKEDITOR.tools.callFunction("
//                    + callback+",'"+ fileUrl+"','이미지를 업로드하였습니다.')"
//                    +"</script>");
            printWriter.println("{\"filename\" : \"" + fileName + "\", \"uploaded\" : 1, \"url\":\"" + fileUrl + "\"}");
            printWriter.flush();

        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if(out != null){out.close();}
                if (printWriter != null){printWriter.close();}
            } catch (IOException e){e.printStackTrace();}
        }
        return;
    }

    @GetMapping(value="/imgSubmit")
    public void ckSubmit(@RequestParam(value="uid") String uid
            , @RequestParam(value="fileName") String fileName
            , HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{

        //서버에 저장된 이미지 경로
        String path = System.getProperty("user.dir") + "/img/";	// 저장된 이미지 경로
        System.out.println("path:"+path);
        String sDirPath = path + uid + "_" + fileName;

        File imgFile = new File(sDirPath);

        //사진 이미지 찾지 못하는 경우 예외처리로 빈 이미지 파일을 설정한다.
        if(imgFile.isFile()){
            byte[] buf = new byte[1024];
            int readByte = 0;
            int length = 0;
            byte[] imgBuf = null;

            FileInputStream fileInputStream = null;
            ByteArrayOutputStream outputStream = null;
            ServletOutputStream out = null;

            try{
                fileInputStream = new FileInputStream(imgFile);
                outputStream = new ByteArrayOutputStream();
                out = response.getOutputStream();

                while((readByte = fileInputStream.read(buf)) != -1){
                    outputStream.write(buf, 0, readByte);
                }

                imgBuf = outputStream.toByteArray();
                length = imgBuf.length;
                out.write(imgBuf, 0, length);
                out.flush();

            }catch(IOException e){
                e.printStackTrace();
            }finally {
                outputStream.close();
                fileInputStream.close();
                out.close();
            }
        }
    }

    @PostMapping("/contact")
    public void contactUs(@RequestBody Map<String, Object> contactUsMap){
        System.out.println(contactUsMap.get("title"));
    }
}
