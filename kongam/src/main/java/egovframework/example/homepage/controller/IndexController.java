package egovframework.example.homepage.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.homepage.service.BoardService;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class IndexController {
	private final BoardService boardService;
	@GetMapping({"/", "/index"})
	public String indexPage(HttpServletRequest request, Model model) throws IOException {
		Device device = DeviceUtils.getCurrentDevice(request);
		if (device.isMobile()) {
	           System.out.println("Hello mobile user!");
	        } else if (device.isTablet()) {
	        	System.out.println("Hello tablet user!");
	        } else {
	        	System.out.println("Hello desktop user!");       
	        }
		if (device.isMobile() || device.isTablet()) {
			model.addAttribute("recentPost", boardService.recentPost(2));
			return "/homepage/mobile/mobile-main";
		} else {
			model.addAttribute("recentPost", boardService.recentPost(4));
			return "/homepage/mainPage";
		}
//		model.addAttribute("recentPost", boardService.recentPost());
//		return "/homepage/mainPage";
	}
}
