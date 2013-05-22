package org.ng12306.web.ct.service;

import java.util.List;

import org.ng12306.web.ct.entity.Passenger;
import org.ng12306.web.ct.entity.Ticket;

import com.googlecode.ehcache.annotations.Cacheable;



public interface ITicketSearchService {
	@Cacheable(keyGeneratorName = "ngwebCacheKeyGenerator", cacheNull = false, cacheName = "ticketSearchCache", cacheableInteceptorName = "cacheableSwitchIntercepter")
	List<Ticket> retrieveListOfTicketByStarAddrByEndAddrByStarDate(String BeginStation, String ArriveStation, String StartDate);
	Ticket getTicketById(String id);
	List<Passenger> getPassengerList(String userID);
	
}
