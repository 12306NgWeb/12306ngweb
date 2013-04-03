package org.ng12306.web.ct.entity;

/**
 * 座位实体---12306ngWeb
 * @author 李守宏
 * @version 1.0
 * @created 2013年3月25日 19:53:17
 */
public class Seat {

	/**
	 * 主键
	 */
	private String id;
	/**
	 * 车厢
	 */
	private String carID;

	/**
	 * 座位号
	 */
	private String seatNo;

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
	 * 车厢
	 * @return
	 */

	public String getCarID() {
		return carID;
	}

	/**
	 * 车厢
	 * @param carID
	 */
	public void setCarID(String carID) {
		this.carID = carID;
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
}