/*
 * Copyright Notice ====================================================
 * This file contains proprietary information of Hewlett-Packard Co.
 * Copying or reproduction without prior written approval is prohibited.
 * Copyright (c) 2012 All rights reserved. =============================
 */

package org.ng12306.web.ct.service;

import java.util.List;

import org.ng12306.web.ct.entity.Passenger;

public interface IUserProcessService {


	List<Passenger> getPassengersListByUserID(String userID);

	Passenger getPassengerInfoByEmail(String Email);

	void savePassenger(Passenger passenger);

	void updatePassenger(Passenger passenger);

	void deletePassenger(Passenger passenger);
}
