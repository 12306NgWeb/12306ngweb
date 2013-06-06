package org.ng12306.web.ct.controller;

import javax.servlet.http.HttpServletRequest;

import org.ng12306.web.ct.entity.Passenger;
import org.ng12306.web.ct.service.IMemberProcessService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * <p>
 * The Class define the wrapping handlers for MemberController.
 * <p>
 * @author XG(wolf)<prairielonewolf@gmail.com>
 * @version 1.0
 */
@Controller
@RequestMapping("/member")
public class MemberController {
	
	private Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private IMemberProcessService memberProcessService;
	
	/**
	 * SkipTo register.jsp
	 * @return registerService
	 */
	@RequestMapping("/register")
	public String registerService(){
		return "registerService";
	}
	
	/**
	 * SkipTo register1.jsp
	 * @return register
	 */
	@RequestMapping("/register1")
	public String register1(){
		return "register";
	}
	
	/**
	 * Handle the registration information
	 * @return registersuccess
	 */
	@RequestMapping(value = "/registersuccess",method = RequestMethod.POST)
	public String registerSuccess(@ModelAttribute Passenger passenger,Model model,HttpServletRequest request){
		Passenger pa = memberProcessService.getPassengerInfoByEmail(passenger.getEmail());
		System.out.println("name"+passenger.getName()+"sex"+passenger.getSex());
		if(memberProcessService.getPassengerInfoByEmail(passenger.getEmail()) != null){
			return "register";
		}else{
			memberProcessService.savePassenger(passenger);
			return "registerSuccess";
		}
	}
	/**
	 * Default constructor.
	 */
	public MemberController() {
	}
	


}
