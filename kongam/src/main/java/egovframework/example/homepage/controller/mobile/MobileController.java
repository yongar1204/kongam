package egovframework.example.homepage.controller.mobile;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class MobileController {

	@GetMapping("/mobile/companies/index")
	public String companiesIntro() {
		return "/homepage/mobile/sub0101";
	}
	
	@GetMapping("/mobile/companies/history")
	public String conpaniesHistory() {
		return "/homepage/mobile/sub0102";
	}
	
	@GetMapping("/mobile/companies/org")
	public String conpaniesOrg() {
		return "/homepage/mobile/sub0103";
	}
	
	@GetMapping("/mobile/companies/location")
	public String conpaniesLocation() {
		return "/homepage/mobile/sub0104";
	}
	
	@GetMapping("/mobile/board/list/notice")
	public String noticeBoardList() {
		return "/homepage/mobile/sub04";
	}
	
	@GetMapping("/mobile/board/list/news")
	public String newsBoardList() {
		return "/homepage/mobile/sub04";
	}
	
	@GetMapping("/mobile/board/list/activity")
	public String activityBoardList() {
		return "/homepage/mobile/sub04";
	}
	
	@GetMapping("/mobile/recruits/index")
	public String recruits() {
		return "/homepage/mobile/sub0501";
	}
	
	@GetMapping("/mobile/recruits/benefits")
	public String recruitsBenefits() {
		return "/homepage/mobile/sub0502";
	}
	
	@GetMapping("/mobile/recruits/board")
	public String recruitsBoard() {
		return "/homepage/mobile/sub0503";
	}
	
	@GetMapping("/mobile/bigdata")
	public String bigData() {
		return "/homepage/mobile/sub0801";
	}
	
	@GetMapping("/mobile/platform")
	public String Platform() {
		return "homepage/mobile/sub0802";
	}
	
	@GetMapping("/mobile/gis")
	public String gis() {
		return "homepage/mobile/sub0803";
	}
	
	@GetMapping("/mobile/privacy")
	public String privacy() {
		return "homepage/mobile/sub0902";
	}
	
	@GetMapping("/mobile/board/{boardIdx}")
    public String boardDetails(@PathVariable Long boardIdx){
        return "/homepage/mobile/mobileBoardDetails";
    } 
	
	@GetMapping("/mobile/recruits/{boardIdx}")
	public String recruitsBoardDetails(@PathVariable Long boardIdx) {
		return "/homepage/mobile/mobileRecruitsDetails";
	}
}
