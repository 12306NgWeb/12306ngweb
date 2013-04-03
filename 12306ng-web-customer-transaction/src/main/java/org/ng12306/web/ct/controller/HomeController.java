package org.ng12306.web.ct.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomeController {

	@RequestMapping(value="/")
	public String showHome(Model model) {
		return "home";
	}
}
