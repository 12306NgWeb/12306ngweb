package org.ng12306.web.ct.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.ng12306.web.ct.entity.Ticket;
import org.ng12306.web.ct.service.ITicketSearchService;
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

@Controller
@RequestMapping("/")
@SessionAttributes("ticketAttrSession")
public class HomeController {

	private Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private ITicketSearchService ticketSearchService;

	public ITicketSearchService getTicketSearchService() {
		return ticketSearchService;
	}

	public void setTicketSearchService(ITicketSearchService ticketSearchService) {
		this.ticketSearchService = ticketSearchService;
	}

	public HomeController() {
		// TODO Auto-generated constructor stub
	}

	@RequestMapping(value = "/")
	public String showHome() {
		return "home";
	}

	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String showForm(Model model) {
		Ticket ticket = new Ticket();
		model.addAttribute("ticket", ticket);

		return "home";
	}

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

	@RequestMapping(value = "/ticketlist", method = RequestMethod.GET)
	public String showSearch(Model model) {

		return "searchResult";
	}
	/*@RequestMapping(value = "/ticketresult")
	public String showSearchResult() {


		return "searchResult";
	}*/

}
