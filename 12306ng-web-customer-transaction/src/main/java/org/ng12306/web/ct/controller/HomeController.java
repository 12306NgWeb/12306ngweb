package org.ng12306.web.ct.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.ng12306.web.ct.entity.Ticket;
import org.ng12306.web.ct.entity.User;
import org.ng12306.web.ct.service.ISearchTicketService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 * <p>
 * The Class HomeController.
 * <p>
 * @author huayong
 * @version 1.0
 */
@Controller
@RequestMapping("/home")
@SessionAttributes("ticketAttrSession")
public class HomeController {

	/** The logger. */
	private Logger logger = LoggerFactory.getLogger(HomeController.class);

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
	 * Instantiates a new home controller.
	 */
	public HomeController() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * Show home.
	 *
	 * @return the string
	 */
	@RequestMapping(value = "/")
	public String showHome() {
		return "home";
	}

	/**
	 * Show form.
	 *
	 * @param model the model
	 * @return the string
	 */
	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String showForm(Model model) {
		Ticket ticket = new Ticket();
		model.addAttribute("ticket", ticket);

		return "home";
	}

	/**
	 * Gets the ticket list.
	 *
	 * @param ticket the ticket
	 * @param result the result
	 * @param model the model
	 * @return the ticket list
	 */
	@RequestMapping(value = "/ticketlist", method = RequestMethod.POST)
	public String getTicketList(@Valid @ModelAttribute("ticket") Ticket ticket, BindingResult result, ModelMap model) {
		if (result.hasErrors()) {
			return "home";

		} else {
		logger.info("BeginStation:" + ticket.getBeginStation() + "ArriveStation:" + ticket.getArriveStation() + "Ticket ID:" + ticket.getId());

		List<Ticket> ticketInfos = new ArrayList<Ticket>();

		//TODO remove these variables
		String BeginStation = ticket.getBeginStation();
		String ArriveStation = ticket.getArriveStation();
		String StartDate = ticket.getStartDate();
		ticketInfos = ticketSearchService.retrieveListOfTicketByStarAddrByEndAddrByStarDate(BeginStation, ArriveStation, StartDate);

		logger.info("Number of tickets returned by the ticketSearchService:" + ((null != ticketInfos) ? ticketInfos.size() : null));

		model.addAttribute("ticketlist", ticketInfos);
		//CommonUtils.saveLastSearchInfo(request, DEVICE_SEARCH_NAME, DEVICE_SEARCH_ADDRESS);

		return "searchResult";
		}

	}

	/**
	 * Show search.
	 *
	 * @param model the model
	 * @return the string
	 */
	@RequestMapping(value = "/ticketlist", method = RequestMethod.GET)
	public String showSearch(Model model) {

		return "searchResult";
	}

	/**
	 * Login app.
	 *
	 * @param user the user
	 * @param model the model
	 * @param request the request
	 * @return the string
	 */
	@RequestMapping(value = "/login" ,method = RequestMethod.POST)
	public String loginApp(@ModelAttribute User user, Model model, HttpServletRequest request) {
		if (user.getUserName().equals("Michael") && user.getPassword().equals("123") && user.getAssociatedTicketId() != null) {

			request.getSession().setAttribute("loginUserProfile", user);
			model.addAttribute("user", user);
			return "bookTicket";

		} else if (user.getUserName() == "Michael" && user.getPassword() == "123" && user.getAssociatedTicketId() == null) {

			request.getSession().setAttribute("loginUserProfile", user);
			model.addAttribute("user", user);
			return "searchResult";

		} else {
			
			return "login";
		}

	}

	/**
	 * Show login.
	 *
	 * @return the string
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLogin() {


		return "login";
	}
}
