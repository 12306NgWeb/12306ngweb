package org.ng12306.web.ct.entity;

import java.io.Serializable;

import org.codehaus.jackson.annotate.JsonAutoDetect;
import org.hibernate.validator.constraints.NotBlank;

/**
 * 车票查询结果实体如(北京-上海)---12306ngWeb
 * @author 李守宏
 * @version 1.0
 * @created 2013年3月25日 19:56:01
 */
@SuppressWarnings("unchecked")
public class Ticket implements Serializable {

	/**
	 * 主键
	 */
	private String id;
	/**
	 * 到达站
	 */
	@NotBlank
	private String arriveStation;
	/**
	 * 出发站
	 */
	@NotBlank
	private String beginStation;
	/**
	 * 历时
	 */
	private String costTime;

	/**
	 * 车次
	 */
	private String lineNo;
	/**
	 * 座位
	 */
	private String seat;
	/**
	 * 余票信息 使用json格式{硬座:n,无座:n,硬卧:n}等
	 */
	private String ticketInfo;

	@NotBlank
	private String startDate;

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	/**
	 * 到达站
	 * @return
	 */
	public String getArriveStation() {
		return arriveStation;
	}

	/**
	 * 到达站
	 * @param arriveStation
	 */
	public void setArriveStation(String arriveStation) {
		this.arriveStation = arriveStation;
	}

	/**
	 * 出发站
	 * @return
	 */
	public String getBeginStation() {
		return beginStation;
	}

	/**
	 * 出发站
	 * @param beginStation
	 */
	public void setBeginStation(String beginStation) {
		this.beginStation = beginStation;
	}

	/**
	 * 历时
	 * @return
	 */
	public String getCostTime() {
		return costTime;
	}

	/**
	 * 历时
	 * @param costTime
	 */
	public void setCostTime(String costTime) {
		this.costTime = costTime;
	}

	/**
	 * 主键
	 * @return
	 */
	public String getId() {
		return id;
	}

	/**
	 * 主键
	 * @param id
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * 车次
	 * @return
	 */
	public String getLineNo() {
		return lineNo;
	}

	/**
	 * 车次
	 * @param lineNo
	 */
	public void setLineNo(String lineNo) {
		this.lineNo = lineNo;
	}

	/**
	 * 座位
	 * @return
	 */
	public String getSeat() {
		return seat;
	}

	/**
	 * 座位
	 * @param seat
	 */
	public void setSeat(String seat) {
		this.seat = seat;
	}

	/**
	 * 余票信息 使用json格式{硬座:n,无座:n,硬卧:n}等
	 * @return
	 */
	public String getTicketInfo() {
		return ticketInfo;
	}

	/**
	 * 余票信息 使用json格式{硬座:n,无座:n,硬卧:n}等
	 * @param ticketInfo
	 */
	public void setTicketInfo(String ticketInfo) {
		this.ticketInfo = ticketInfo;
	}
	/**
	 * 
	 */


}