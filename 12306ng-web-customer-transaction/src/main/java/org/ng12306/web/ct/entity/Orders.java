package org.ng12306.web.ct.entity;

import java.util.Date;

/**
 * 订单实体类--12306ngWeb
 * @author 李守宏
 * @version 1.0
 * @created 2013年3月25日 19:31:31
 */
public class Orders {

	/**
	 * 主键
	 */
	private String id;

	/**
	 * 到达时间
	 */
	private String arriveTime;
	/**
	 * 出发站
	 */
	private String beginStation;
	/**
	 * 发车时间
	 */
	private String beginTime;
	/**
	 * 车厢号码
	 */
	private String carNo;
	/**
	 * 历时
	 */
	private String costTime;
	/**
	 * 购票时间
	 */
	private Date createDate;
	/**
	 * 目的站
	 */
	private String endStation;
	/**
	 * 车费
	 */
	private String fare;

	/**
	 * 车次
	 */
	private String lineNo;
	/**
	 * 客票类型(成人,儿童,学生)
	 */
	private String orderType;
	/**
	 * 旅客编号
	 */
	private String passengerId;
	/**
	 * 旅客证件号码
	 */
	private String passengerIdNo;
	/**
	 * 旅客证件类型
	 */
	private String passengerIdType;
	/**
	 * 旅客姓名
	 */
	private String passengerName;
	/**
	 * 旅客电话号码
	 */
	private String passengerPhone;
	/**
	 * 座位号
	 */
	private String seatNo;
	/**
	 * 车票类型(软卧,硬卧,硬座,无座)
	 */
	private String ticketType;
	/**
	 *乘车日期
	 */
	private Date travelDate;

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
	 * 到达时间
	 * @return
	 */
	public String getArriveTime() {
		return arriveTime;
	}

	/**
	 * 到达时间
	 * @param arriveTime
	 */
	public void setArriveTime(String arriveTime) {
		this.arriveTime = arriveTime;
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
	 * 发车时间
	 * @return
	 */
	public String getBeginTime() {
		return beginTime;
	}

	/**
	 * 发车时间
	 * @param beginTime
	 */
	public void setBeginTime(String beginTime) {
		this.beginTime = beginTime;
	}

	/**
	 * 车厢号码
	 * @return
	 */
	public String getCarNo() {
		return carNo;
	}

	/**
	 * 车厢号码
	 * @param carNo
	 */
	public void setCarNo(String carNo) {
		this.carNo = carNo;
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
	 * 购票时间
	 * @return
	 */
	public Date getCreateDate() {
		return createDate;
	}

	/**
	 * 购票时间
	 * @param createDate
	 */
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	/**
	 * 目的站
	 * @return
	 */
	public String getEndStation() {
		return endStation;
	}

	/**
	 * 目的站
	 * @param endStation
	 */
	public void setEndStation(String endStation) {
		this.endStation = endStation;
	}

	/**
	 * 车费
	 * @return
	 */
	public String getFare() {
		return fare;
	}

	/**
	 * 车费
	 * @param fare
	 */
	public void setFare(String fare) {
		this.fare = fare;
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
	 * 客票类型(成人,儿童,学生)
	 * @return
	 */
	public String getOrderType() {
		return orderType;
	}

	/**客票类型(成人,儿童,学生)
	 * 
	 * @param orderType
	 */
	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}

	/**
	 * 旅客编号
	 * @return
	 */
	public String getPassengerId() {
		return passengerId;
	}

	/**
	 * 旅客编号
	 * @param passengerId
	 */
	public void setPassengerId(String passengerId) {
		this.passengerId = passengerId;
	}

	/**
	 * 旅客证件号码
	 * @return
	 */
	public String getPassengerIdNo() {
		return passengerIdNo;
	}

	/**
	 * 旅客证件号码
	 * @param passengerIdNo
	 */
	public void setPassengerIdNo(String passengerIdNo) {
		this.passengerIdNo = passengerIdNo;
	}

	/**
	 * 旅客证件类型
	 * @return
	 */
	public String getPassengerIdType() {
		return passengerIdType;
	}

	/**
	 * 旅客证件类型
	 * @param passengerIdType
	 */
	public void setPassengerIdType(String passengerIdType) {
		this.passengerIdType = passengerIdType;
	}

	/**
	 * 旅客姓名
	 * @return
	 */
	public String getPassengerName() {
		return passengerName;
	}

	/**
	 * 旅客姓名
	 * @param passengerName
	 */
	public void setPassengerName(String passengerName) {
		this.passengerName = passengerName;
	}

	/**
	 * 旅客电话号码
	 * @return
	 */
	public String getPassengerPhone() {
		return passengerPhone;
	}

	/**
	 * 旅客电话号码
	 * @param passengerPhone
	 */
	public void setPassengerPhone(String passengerPhone) {
		this.passengerPhone = passengerPhone;
	}

	/**
	 * 座位号
	 * @return
	 */
	public String getSeatNo() {
		return seatNo;
	}

	/**
	 * 座位号
	 * @param seatNo
	 */
	public void setSeatNo(String seatNo) {
		this.seatNo = seatNo;
	}

	/**
	 * 车票类型(软卧,硬卧,硬座,无座)
	 * @return
	 */
	public String getTicketType() {
		return ticketType;
	}

	/**
	 * 车票类型(软卧,硬卧,硬座,无座)
	 * @param ticketType
	 */
	public void setTicketType(String ticketType) {
		this.ticketType = ticketType;
	}

	/**
	 * 乘车日期
	 * @return
	 */
	public Date getTravelDate() {
		return travelDate;
	}

	/**
	 * 乘车日期
	 * @param travelDate
	 */
	public void setTravelDate(Date travelDate) {
		this.travelDate = travelDate;
	}

}