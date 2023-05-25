package egovframework.example.homepage.controller.apiController;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import egovframework.example.homepage.config.CaptchaUtil;
import egovframework.example.homepage.model.Criteria;
import egovframework.example.homepage.service.BoardService;
import egovframework.example.homepage.service.FileService;
import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/board/api")
@RequiredArgsConstructor
public class BoardApiController {
	
	private final BoardService boardService;
	private final FileService fileService;
	
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
        Criteria criteria = new Criteria(pn);
        criteria.setTotalElements(totalElement);
        criteria.setTotalPages((int) Math.ceil(criteria.getTotalElements() / (double) criteria.getRecords()));
        criteria.setLastPage(Math.min(criteria.getTotalPages(), (criteria.getStartPage() + criteria.getDisplayPageNum() - 1)));
        List<Map<String, Object>> pagingList = boardService.getPagingList(ctg, criteria);
        Map<String, Object> pagingMap = new HashMap<>();
        pagingMap.put("paging", criteria);
        pagingMap.put("boardList", pagingList);
        System.out.println(System.getProperty("user.home"));
        
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

//  이미지, 파일 저장 경로 수정 필요!!!!
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
			/* String path = System.getProperty("user.dir") + "/img/"; */
			//String path = "C:/Users/bxsys/eclipse-workspace/kongam_img/";
			//String path = "D:/homepage_data/ckeditor_images/";
            String path = "/ggamit/hp_attfile/hp_board_img/";
            String imgUploadPath = path + uid + "_" + fileName;

            out = new FileOutputStream(imgUploadPath);
            out.write(bytes);
            out.flush();

            printWriter = res.getWriter();
            String callback = req.getParameter("CKEditorFuncNum");
            String fileUrl = "/board/api/imgSubmit.ajax?uid=" + uid + "&fileName=" + fileName;
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

    @GetMapping("/imgSubmit")
    public void ckSubmit(@RequestParam(value="uid") String uid
            , @RequestParam(value="fileName") String fileName
            , HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{

        //서버에 저장된 이미지 경로
    	//String path = "C:/Users/bxsys/eclipse-workspace/kongam_img/";
        //String path = "D:/homepage_data/ckeditor_images/";
    	String path = "/ggamit/hp_attfile/hp_board_img/";
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
    
    @GetMapping("/downLoad")
    public void fileDownload(@RequestParam Long idx, HttpServletResponse response) throws UnsupportedEncodingException {
        Map<String, Object> fileInfo = fileService.getFiles(idx);
        String fileName = (String) fileInfo.get("fileName");

        response.setContentType("application/octet-stream");
        response.setHeader("Content-Transfer-Encoding", "binary");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + URLEncoder.encode((String) fileInfo.get("orgFileName"), "UTF-8") + "\";");
        try {
            OutputStream os = response.getOutputStream();
            FileInputStream fis = new FileInputStream(fileInfo.get("filePath") +"/"+ fileName);

            int count = 0;
            byte[] bytes = new byte[1024];

            while ((count = fis.read(bytes)) != -1 ) {
                os.write(bytes, 0, count);
            }

            fis.close();
            os.close();
        } catch (FileNotFoundException ex) {
            System.out.println("FileNotFoundException");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @PostMapping("/contact")
    public ResponseEntity<String> contactUs(@RequestBody Map<String, Object> contactUsMap, HttpServletRequest request, HttpServletResponse response){
    	String getAnswer = (String)request.getSession().getAttribute("captcha");
    	String answer = (String) contactUsMap.get("answer");
    	if(getAnswer.equals(answer)) {
    		boardService.contactUsSave(contactUsMap);
    		return ResponseEntity.ok().build();
    	} else {
			/* return ResponseEntity.badRequest().body("error"); */
    		return ResponseEntity.status(HttpStatus.OK).body("false");
    	}
    }
    
    @RequestMapping(value = "captchaImg.do")
    public void captchaImg(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	new CaptchaUtil().captchaImg(request, response);
    }
    
    @RequestMapping(value = "captchaAudio.do")
    public void captchaAudio(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	new CaptchaUtil().captchaAudio(request, response);
    }
    
    
//test
    @RequestMapping(value = "test.do", method = RequestMethod.POST)
    public void test(@RequestPart(value = "text",required = false) Map<String, Object> map ,@RequestPart(value = "files",required = false) List<MultipartFile> img) {
    	System.out.println("img : " + img.get(1).getOriginalFilename());
    	System.out.println("img : " + img.get(2).getOriginalFilename());
		img.forEach(e->System.out.println(e.getOriginalFilename()));
    	//System.out.println(map);
    }
    
    @RequestMapping(value = "test2.do", method = RequestMethod.POST)
    public void test2(MultipartHttpServletRequest multireq) {
    	System.out.println(multireq.getParameter("fileone"));
    	System.out.println(multireq.getParameter("files"));
    	System.out.println(multireq.getAttribute("text"));
    	System.out.println(multireq.getFiles("files").get(1).getOriginalFilename());
    	System.out.println(multireq.getParameter("text"));
    }
}
