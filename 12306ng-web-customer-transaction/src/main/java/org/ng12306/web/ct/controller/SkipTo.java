package org.ng12306.web.ct.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class SkipTo {
	
	@RequestMapping("/home")
	public String skipToHome() {
		return "home";
	}
	
	@RequestMapping("/search")
	public String skipToSearch(){
		return "search";
	}
	
	@RequestMapping("/bookticket")
	public String skipToBookTicket(){
		return "bookTicket";
	}
	
	@RequestMapping("/returnticket")
	public String skipToReturnTicket(){
		return "returnticket";
	}
	
	@RequestMapping("/help")
	public String skipToHelp(){
		return "help";
	}
	
	@RequestMapping("/feedback")
	public String skipToFeedBack(){
		return "feedback";
	}
	@RequestMapping("/register")
	public String skipToRegister(){
		return "register";
	}
	
	@RequestMapping("/login")
	public String skipToLogin(){
		return "login";
	}
}
