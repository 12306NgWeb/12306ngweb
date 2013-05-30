package org.ng12306.web.ct.controller;

import javax.servlet.http.HttpServletRequest;

import org.ng12306.web.ct.entity.Ticket;
import org.ng12306.web.ct.entity.User;
import org.ng12306.web.ct.service.ISearchTicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

// TODO: Auto-generated Javadoc
/**
 * <p>
 * The Class BookTicketController..
 * <p>
 * @author huayong (Michael)<hyxiaodili@gmail.com>
 * @version 1.0
 */
@Controller
@RequestMapping("/book")
public class BookTicketController {

	/** The ticket search service. */
	@Autowired
	private ISearchTicketService ticketSearchService;

	/**
	 * Gets the ticket search service.
	 *
	 * @return the ticket search service
	 */
	public ISearchTicketService getTicketSearchService() {
		return ticketSearchService;
	}

	/**
	 * Sets the ticket search service.
	 *
	 * @param ticketSearchService the new ticket search service
	 */
	public void setTicketSearchService(ISearchTicketService ticketSearchService) {
		this.ticketSearchService = ticketSearchService;
	}

	/**
	 * Book ticket.
	 *
	 * @param id the id
	 * @param request the request
	 * @param model the model
	 * @return the string
	 */
	@RequestMapping("/{id}")
	public String bookTicket(@PathVariable String id, HttpServletRequest request, Model model) {
		User user = (User) request.getSession().getAttribute("loginUserProfile");
		if (user.getUserName() == "Anonymous") {
//			request.getSession().setAttribute("ticketId", id);
			return "login";
		}
		Ticket tic = ticketSearchService.getTicketById(id);
		model.addAttribute("ticket", tic);
		return "bookTicket";
	}

}
