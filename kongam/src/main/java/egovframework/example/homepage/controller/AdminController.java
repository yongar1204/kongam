package egovframework.example.homepage.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.example.homepage.model.Criteria;
import egovframework.example.homepage.model.UserDto;
import egovframework.example.homepage.service.AccountService;
import egovframework.example.homepage.service.BoardService;
import egovframework.example.homepage.service.FileService;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminController {
	private final BoardService boardService;
	private final FileService fileService;
	private final AccountService accountService;
	private final PasswordEncoder passwordEncoder;
	
	@GetMapping("/board/form")
	public String createForm(Model model) {
		model.addAttribute("categories",boardService.getCategoryList());
		return "/homepage/admin/boardForm";
	}
	
	@GetMapping("/board/editform/{boardIdx}")
	public String editForm(Model model, @PathVariable Long boardIdx) {
		Map<String, Object> boardMap = boardService.getDetails(boardIdx);
		List<Map<String, Object>> fileMapList = fileService.getFileList(boardIdx);
		model.addAttribute("post", boardMap);
		model.addAttribute("categories", boardService.getCategoryList());
		model.addAttribute("fileMapList", fileMapList);
		return "/homepage/admin/boardEditForm";
	}
	
	@PostMapping("board/delete/{bIdx}")
	public @ResponseBody void deletePost(@PathVariable Long bIdx) {
		boardService.delete(bIdx);
	}
	
	@PostMapping("/board/edit/{bIdx}")
	public @ResponseBody void editPost(@RequestBody Map<String, Object> editMap,
										@PathVariable Long bIdx) throws IOException {
		boardService.editPost(bIdx, editMap);
	}
	
	@PostMapping("/file/delete/{fileIdx}")
	public @ResponseBody void fileDelete(@PathVariable Long fileIdx) {
		fileService.fileDelete(fileIdx);
	}
	
	@GetMapping("/login")
	public String loginForm(
			@RequestParam(value = "error", required = false) String error,
            Model model
            ) {
		if (error != null) {
			model.addAttribute("exception", "아이디 또는 비밀번호가 맞지 않습니다.");
		}
		return "/homepage/login";
	}
	
	@GetMapping("/account/register")
	public String register() {
		return "/homepage/register";
	}
	
	@PostMapping("/register")
	public String register(UserDto userDto) {
		Map<String, Object> map = new HashMap<>();
		map.put("userId", userDto.getUserId());
		map.put("password", passwordEncoder.encode(userDto.getPassword()));
		map.put("userIdx", null);
		accountService.save(map);
		return "/homepage/login";
	}
	
	@GetMapping({"/board/list/{ctg}/{pn}", "/board/list/{ctg}", "/board/list"})
	public String boardList(Model model, 
							@PathVariable(required = false) String ctg,
							@PathVariable(required = false) Integer pn, Authentication authentication) {
		if (pn == null){
            pn=1;
        }
		if (ctg == null) {
			ctg="NOTICE";
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
        pagingMap.put("category", ctg);
        model.addAttribute("pagingMap", pagingMap);
		return "/homepage/admin/adminBoardList";
	}
	
	@GetMapping({"/contactus/list/{pn}", "/contactus/list"})
	public String contactUsList(Model model, 
							@PathVariable(required = false) Integer pn) {
		if (pn == null){
            pn=1;
        }
        List<Map<String, Object>> findAll = boardService.getList("CONTACT_US");
        int totalElement = findAll.size();
        Criteria criteria = new Criteria(pn);
        criteria.setTotalElements(totalElement);
        criteria.setTotalPages((int) Math.ceil(criteria.getTotalElements() / (double) criteria.getRecords()));
        criteria.setLastPage(Math.min(criteria.getTotalPages(), (criteria.getStartPage() + criteria.getDisplayPageNum() - 1)));
        List<Map<String, Object>> pagingList = boardService.getPagingList("CONTACT_US", criteria);
        Map<String, Object> pagingMap = new HashMap<>();
        pagingMap.put("paging", criteria);
        pagingMap.put("boardList", pagingList);
        pagingMap.put("category", "CONTACT_US");
        model.addAttribute("pagingMap", pagingMap);
		return "/homepage/admin/adminContactUsList";
	}
	
	@GetMapping("/contactus/{Idx}")
	public String contactUsDetails(Model model, @PathVariable Long Idx) {
		Map<String, Object> contactUs = boardService.getDetails(Idx);
		model.addAttribute("contactUs", contactUs);
		return "homepage/admin/contactusDetails";
	}
	
}
