/*
 * Copyright Notice ====================================================
 * This file contains proprietary information of Hewlett-Packard Co.
 * Copying or reproduction without prior written approval is prohibited.
 * Copyright (c) 2012 All rights reserved. =============================
 */

package org.ng12306.web.ct.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.ng12306.web.ct.entity.Ticket;
import org.ng12306.web.ct.service.ITicketSearchService;
import org.springframework.stereotype.Component;

@Component
public class TicketSearchService implements ITicketSearchService {

	@Override
	public List<Ticket> retrieveListOfTicketByStarAddrByEndAddrByStarDate(String BeginStation, String ArriveStation, String StartDate) {
		List<Ticket> ticketList = new ArrayList<Ticket>();
		Ticket ticket = new Ticket();
		ticket.setBeginStation("上海(17:29)");
		ticket.setArriveStation("北京(18:55)");
		ticket.setCostTime("50");
		ticket.setTicketInfo("???");
		ticket.setLineNo("G7428");
		ticket.setId("1");
		ticket.setTicketInfo("G7428(杭州→上海虹桥)");

		Ticket tickett = new Ticket();
		tickett.setBeginStation("上海(15:29)");
		tickett.setArriveStation("北京(23:11)");
		tickett.setCostTime("50");
		tickett.setTicketInfo("???");
		tickett.setLineNo("G7429");
		tickett.setId("2");
		tickett.setTicketInfo("G7428(上海虹桥→杭州)");
		ticketList.add(ticket);
		ticketList.add(tickett);

		return ticketList;
	}

}
