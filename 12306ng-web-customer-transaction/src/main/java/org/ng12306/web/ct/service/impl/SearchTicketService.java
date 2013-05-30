package org.ng12306.web.ct.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.ng12306.web.ct.entity.Passenger;
import org.ng12306.web.ct.entity.Ticket;
import org.ng12306.web.ct.service.ISearchTicketService;
import org.springframework.stereotype.Service;

@Service
public class SearchTicketService implements ISearchTicketService {

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
	public Ticket getTicketById(String id){
		Ticket tickett = new Ticket();
		tickett.setBeginStation("上海(15:29)");
		tickett.setArriveStation("北京(23:11)");
		tickett.setCostTime("50");
		tickett.setTicketInfo("???");
		tickett.setLineNo("G7429");
		tickett.setId("2");
		tickett.setTicketInfo("G7428(上海虹桥→杭州)");
		
		return tickett;
	}
	@Override
	public List<Passenger> getPassengerList(String userID) {
		List <Passenger> list  = new ArrayList<Passenger>();
		Passenger p = new Passenger();
		p.setEmail("aaa@126.com");
		list.add(p);
		
		return list;
	}

}
