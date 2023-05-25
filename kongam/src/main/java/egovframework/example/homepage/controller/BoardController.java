package egovframework.example.homepage.controller;

import org.springframework.mobile.device.Device;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.homepage.service.BoardService;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/board")
@RequiredArgsConstructor
public class BoardController {
	private final BoardService boardService;
	
	
	@GetMapping("/list")
	public String boardList() {
		return "/homepage/sub04";
	}
	
	@GetMapping("/list/notice")
	public String noticeBoardList() {
		return "/homepage/sub04";
	}
	
	@GetMapping("/list/news")
	public String newsBoardList() {
		return "/homepage/sub04";
	}
	
	@GetMapping("/list/activity")
	public String activityBoardList() {
		return "/homepage/sub04";
	}
	
	@GetMapping("/{boardIdx}")
    public String boardDetails(@PathVariable Long boardIdx){
        return "/homepage/boardDetails";
    }
	
	@GetMapping("/recruits/{boardIdx}")
	public String recruitsBoardDetails(@PathVariable Long boardIdx) {
		return "/homepage/recruitsDetails";
	}
	
}
