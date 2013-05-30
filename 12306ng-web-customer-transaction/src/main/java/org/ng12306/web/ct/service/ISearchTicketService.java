package org.ng12306.web.ct.service;

import java.util.List;

import org.ng12306.web.ct.entity.Passenger;
import org.ng12306.web.ct.entity.Ticket;

import com.googlecode.ehcache.annotations.Cacheable;

// TODO: Auto-generated Javadoc
/**
 * The Interface ITicketSearchService.
 */
public interface ISearchTicketService {

	/**
	 * Retrieve list of ticket by star addr by end addr by star date.
	 *
	 * @param BeginStation the begin station
	 * @param ArriveStation the arrive station
	 * @param StartDate the start date
	 * @return the list
	 */
	@Cacheable(keyGeneratorName = "ngwebCacheKeyGenerator", cacheNull = false, cacheName = "ticketSearchCache", cacheableInteceptorName = "cacheableSwitchIntercepter")
	List<Ticket> retrieveListOfTicketByStarAddrByEndAddrByStarDate(String BeginStation, String ArriveStation, String StartDate);

	/**
	 * Gets the ticket by id.
	 *
	 * @param id the id
	 * @return the ticket by id
	 */
	Ticket getTicketById(String id);

	/**
	 * Gets the passenger list.
	 *
	 * @param userID the user id
	 * @return the passenger list
	 */
	List<Passenger> getPassengerList(String userID);
	
}
