package org.ng12306.web.ct.service;

import java.util.List;

import org.ng12306.web.ct.entity.Passenger;

// TODO: Auto-generated Javadoc
/**
 * <p>
 * The Interface IMemberProcessService.
 * <p>
 * @author huayong
 * @version 1.0
 */
public interface IMemberProcessService {


	/**
	 * Gets the passengers list by user id.
	 *
	 * @param userID the user id
	 * @return the passengers list by user id
	 */
	List<Passenger> getPassengersListByUserID(String userID);

	/**
	 * Gets the passenger info by email.
	 *
	 * @param Email the email
	 * @return the passenger info by email
	 */
	Passenger getPassengerInfoByEmail(String Email);

	/**
	 * Save passenger.
	 *
	 * @param passenger the passenger
	 */
	void savePassenger(Passenger passenger);

	/**
	 * Update passenger.
	 *
	 * @param passenger the passenger
	 */
	void updatePassenger(Passenger passenger);

	/**
	 * Delete passenger.
	 *
	 * @param passenger the passenger
	 */
	void deletePassenger(Passenger passenger);
}
