package org.ng12306.web.ct.controller;

import java.util.ArrayList;
import java.util.List;

import org.jmock.Expectations;
import org.jmock.Mockery;
import org.jmock.integration.junit4.JMock;
import org.jmock.lib.legacy.ClassImposteriser;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.ng12306.web.ct.entity.Ticket;
import org.ng12306.web.ct.service.ISearchTicketService;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.validation.BindingResult;
@RunWith(JMock.class)
public class HomeControllerTest {
	ExtendedModelMap model = new ExtendedModelMap();;

	private ISearchTicketService mockTicketSearchService;
	private HomeController controller;
	private Mockery context;
	private BindingResult bindingResult;
	@Before
	public void setUp() throws Exception {
		context = new Mockery();
		context.setImposteriser(ClassImposteriser.INSTANCE);
		bindingResult = context.mock(BindingResult.class);
		mockTicketSearchService = context.mock(ISearchTicketService.class);
		controller = new HomeController();
		controller.setTicketSearchService(mockTicketSearchService);

	}
	@Test
	public void testGetTicketList() throws Exception {

		final Ticket t = new Ticket();
		t.setArriveStation("aaa");
		t.setBeginStation("bbbb");
		
		final List<Ticket> list = new ArrayList<Ticket>() {
			{
			add(t);
			}
		};
		context.checking(new Expectations() {

			{
				allowing(bindingResult).hasErrors();
				will(returnValue(false));
				allowing(mockTicketSearchService).retrieveListOfTicketByStarAddrByEndAddrByStarDate(with(any(String.class)), with(any(String.class)), with(any(String.class)));
				will(returnValue(list));
			}

		});

		Assert.assertEquals("searchResult", controller.getTicketList(new Ticket(), bindingResult, model));

	}

}
