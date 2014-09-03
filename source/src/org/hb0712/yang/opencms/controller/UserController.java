package org.hb0712.yang.opencms.controller;

import javax.servlet.http.HttpSession;

import org.hb0712.yang.opencms.pojo.User;
import org.hb0712.yang.opencms.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@SessionAttributes("currUser")
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping("/user/login")
	public ModelAndView login(User u, ModelMap model){
		User x = userService.login(u);
		ModelAndView mav = null;
		if(x != null){
			model.addAttribute("currUser", x);
//			mav = new ModelAndView(new RedirectView("../frame.jsp"));
			mav = new ModelAndView(new RedirectView("../directory/channel.do"));
		}
//		return new ModelAndView(new RedirectView("/directory/home.do"));
		return mav;
	}

	@RequestMapping("/user/logout")
	public ModelAndView logout(HttpSession httpSession){
		httpSession.removeAttribute("currUser");
		ModelAndView mv = new ModelAndView(new RedirectView("../login.html"));
		return mv;
	}
}
