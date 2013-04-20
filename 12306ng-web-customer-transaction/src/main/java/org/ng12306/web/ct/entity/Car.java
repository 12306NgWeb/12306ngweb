package org.ng12306.web.ct.entity;

/**
 * 车厢实体类--12306ngWeb
 * @author 李守宏
 * @version 1.0
 * @created 2013年3月25日 19:27:44
 */
public class Car {

	/**
	 * 主键
	 */
	private String id;
	/**
	 * 车厢编号
	 */
	private String carNo;
	/**
	 * 车厢类型
	 */
	private String carType;
	/**
	 *列车主键
	 */
	private String trainID;

	/**
	 * 车厢编号
	 * @return
	 */
	public String getCarNo() {
		return carNo;
	}

	/**
	 * 车厢编号
	 * @param carNo
	 */
	public void setCarNo(String carNo) {
		this.carNo = carNo;
	}

	/**
	 * 车厢类型
	 * @return
	 */
	public String getCarType() {
		return carType;
	}

	/**
	 * 车厢类型
	 * @param carType
	 */
	public void setCarType(String carType) {
		this.carType = carType;
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
	 * 列车主键
	 * @return
	 */
	public String getTrainID() {
		return trainID;
	}

	/**
	 * 列车主键
	 * @param trainID
	 */
	public void setTrainID(String trainID) {
		this.trainID = trainID;
	}
}