package org.ng12306.web.ct.service;

import java.util.List;

import org.ng12306.web.ct.entity.Ticket;

public interface ITicketSearchService {
	List<Ticket> retrieveListOfTicketByStarAddrByEndAddrByStarDate(String BeginStation, String ArriveStation, String StartDate);
}
