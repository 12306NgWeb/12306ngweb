/*
 * Copyright Notice ====================================================
 * This file contains proprietary information of Hewlett-Packard Co.
 * Copying or reproduction without prior written approval is prohibited.
 * Copyright (c) 2012 All rights reserved. =============================
 */

package org.ng12306.web.ct.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jmock.Expectations;
import org.jmock.Mockery;
import org.junit.Before;
import org.junit.Test;
import org.ng12306.web.ct.entity.Ticket;
import org.ng12306.web.ct.service.ITicketSearchService;
import org.springframework.ui.ExtendedModelMap;


public class HomeControllerTest {
	ExtendedModelMap model;

	ITicketSearchService ticketSearchService;
	HomeController c;
	Mockery context;
	HttpServletRequest request;
	HttpSession session;
	@Before
	public void setUp() throws Exception {
		context = new Mockery();
		request = context.mock(HttpServletRequest.class);
		session = context.mock(HttpSession.class);
		/* 
		context = new Mockery() {{
		    setImposteriser(ClassImposteriser.INSTANCE);
		}};
		*/

		ticketSearchService = context.mock(ITicketSearchService.class);
		c = new HomeController();

	}
	@Test
	public void testGetTicketDetailJson() {

		final Ticket t = new Ticket();
		t.setArriveStation("aaa");
		t.setBeginStation("bbbb");
		
		List<Ticket> list = new ArrayList<Ticket>(){
			{
			add(t);
			}
		};
		model = new ExtendedModelMap();
		context.checking(new Expectations() {

			{
				allowing(request).getContextPath();
				will(returnValue("/customerDevice"));

				allowing(request).getSession();
				will(returnValue(session));

				allowing(session).setAttribute(with(any(String.class)), with(any(Object.class)));
				allowing(ticketSearchService).retrieveListOfTicketByStarAddrByEndAddrByStarDate(with(any(String.class)), with(any(String.class)), with(any(String.class)));
			}

		});
		
		//list = c.getTicketDetailJson(t, model, "aaa", request);

	}

}
