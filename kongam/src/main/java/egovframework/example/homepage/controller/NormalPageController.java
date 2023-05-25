package egovframework.example.homepage.controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class NormalPageController {
	
	@GetMapping("/companies/index")
	public String companiesIntro() {
		return "/homepage/sub0101";
	}
	@GetMapping("/companies/history")
	public String conpaniesHistory() {
		return "/homepage/sub0102";
	}
	@GetMapping("/companies/org")
	public String conpaniesOrg() {
		return "/homepage/sub0103";
	}
	@GetMapping("/companies/location")
	public String conpaniesLocation() {
		return "/homepage/sub0104";
	}
	
//	solution page
	@GetMapping("/solutions/intous")
	public String solutionIntous() {
		return "/homepage/sub0604";
	}
	@GetMapping("/solutions/intous/qm-mm")
	public String solutionIntousQM_MM() {
		return "/homepage/sub0601";
	}
	@GetMapping("/solutions/intous/esb")
	public String solutionIntousESB() {
		return "/homepage/sub0602";
	}
	@GetMapping("/solutions/intous/etl")
	public String solutionIntousETL() {
		return "/homepage/sub0603";
	}
	
//	business page
	@GetMapping("/business/ai")
	public String businessAI() {
		return "/homepage/sub0701";
	}
	@GetMapping("/business/ar")
	public String businessAR() {
		return "/homepage/sub0702";
	}
	@GetMapping("/business/archive")
	public String business() {
		return "/homepage/sub0703";
	}
	@GetMapping("/business/sm-si")
	public String businessSM_SI() {
		return "/homepage/sub0704";
	}
	
//	recruits page
	@GetMapping("/recruits/index")
	public String recruits() {
		return "/homepage/sub0501";
	}
	@GetMapping("/recruits/benefits")
	public String recruitsBenefits() {
		return "/homepage/sub0502";
	}
	@GetMapping("/recruits/board")
	public String recruitsBoard() {
		return "/homepage/sub0503";
	}
	
	//solution
	@GetMapping("/bigdata")
	public String bigData() {
		return "/homepage/sub0801";
	}
	
	@GetMapping("/platform")
	public String Platform() {
		return "homepage/sub0802";
	}
	
	@GetMapping("/gis")
	public String gis() {
		return "homepage/sub0803";
	}
	
	@GetMapping("/privacy")
	public String privacy() {
		return "homepage/sub0902";
	}
	
	
	//intous ppt down
	@GetMapping("/intousppt/downLoad")
    public void fileDownload(HttpServletResponse response) throws UnsupportedEncodingException {
        String fileName = "intous.pdf";

        response.setContentType("application/octet-stream");
        response.setHeader("Content-Transfer-Encoding", "binary");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + URLEncoder.encode((String) fileName, "UTF-8") + "\";");
        try {
            OutputStream os = response.getOutputStream();
            //FileInputStream fis = new FileInputStream("D:/homepage_data/"+ fileName);
            //FileInputStream fis = new FileInputStream("C:/Users/BXSystem/Desktop/homepage/"+ fileName);
            FileInputStream fis = new FileInputStream("/ggamit/hp_attfile/"+ fileName);
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
	
	
	@GetMapping("/test")
	public String testPage() {
		return "test/test";
	}
}
