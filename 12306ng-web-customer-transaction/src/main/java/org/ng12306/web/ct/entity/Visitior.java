package org.ng12306.web.ct.entity;

import org.ng12306.web.ct.service.ITicketSearchService;

// TODO: Auto-generated Javadoc
/**
 * The Class Visitior.
 */
public class Visitior {

	/** 游客类 有浏览票的方法. */
	ITicketSearchService ticketSearchService;//查询票接口

	/** The ticket. */
	private Ticket ticket;//查询票

	/**
	 * 通过get/set方法来设定接口，取出接口中的方法.
	 *
	 * @param name the name
	 * @param password the password
	 */

	public void regist(String name,String password){
		/**
		 * 游客独有的注册功能
		 * 若是注册，则实例化出一个USER对象，将数据转移
		 * 到USER对象中
		 */
	}

	/**
	 * Gets the ticket search service.
	 *
	 * @return the ticket search service
	 */
	public ITicketSearchService getTicketSearchService() {
		return ticketSearchService;
	}

	/**
	 * Sets the ticket search service.
	 *
	 * @param ticketSearchService the new ticket search service
	 */
	public void setTicketSearchService(ITicketSearchService ticketSearchService) {
		this.ticketSearchService = ticketSearchService;
	}

	/**
	 * Gets the ticket.
	 *
	 * @return the ticket
	 */
	public Ticket getTicket() {
		return ticket;
	}

	/**
	 * Sets the ticket.
	 *
	 * @param ticket the new ticket
	 */
	public void setTicket(Ticket ticket) {
		this.ticket = ticket;
	}
	
	
}
