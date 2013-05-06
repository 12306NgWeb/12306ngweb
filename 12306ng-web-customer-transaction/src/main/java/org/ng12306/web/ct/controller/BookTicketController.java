package org.ng12306.web.ct.controller;

import javax.servlet.http.HttpServletRequest;

import org.ng12306.web.ct.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/book")
public class BookTicketController {

	@RequestMapping("/{id}")
	public String bookTicket(@PathVariable String id, HttpServletRequest request, Model model) {
		User user = (User) request.getSession().getAttribute("loginUserProfile");
		if (user.getUserName() == "Anonymous") {
			request.getSession().setAttribute("ticketId", id);

			return "login";
		}

		return "bookTicket";
	}

}
