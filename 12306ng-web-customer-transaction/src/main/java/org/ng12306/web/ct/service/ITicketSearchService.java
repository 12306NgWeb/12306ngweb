/*
 * Copyright Notice ====================================================
 * This file contains proprietary information of Hewlett-Packard Co.
 * Copying or reproduction without prior written approval is prohibited.
 * Copyright (c) 2012 All rights reserved. =============================
 */

package org.ng12306.web.ct.service;

import java.util.List;

import org.ng12306.web.ct.entity.Ticket;

public interface ITicketSearchService {
	public List<Ticket> retrieveListOfTicketByStarAddrByEndAddrByStarDate(String BeginStation, String ArriveStation, String StartDate);
}
