package osf.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@Autowired
	HttpSession session;

	@RequestMapping("/")
	public String home() {
		return "index";
	}
	@RequestMapping("notice")
	public String notice() {
		
		return "notice/notice_list?page=1";
	}
	
}
