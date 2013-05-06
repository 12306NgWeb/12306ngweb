package org.ng12306.web.ct.entity;

/**
 * 列车实体--12306ngWeb
 * @author 李守宏
 * @version 1.0
 * @created 2013年3月25日 19:59:55
 */
public class Train {

	/**
	 * 主键
	 */
	private String id;
	/**
	 * 始发站
	 */
	private String beginStation;
	/**
	 * 终点站
	 */
	private String endStation;
	/**
	 * 车次号
	 */
	private String lineNo;
	/**
	 * 中间站信息,存储格式:{"沈阳,1,21:34","秦皇岛,2,01:34"}
	 */
	private String stopStation;
	/**
	 * 车量内部编号
	 */
	private String trainNo;
	/**
	 * 列车类型(硬座,空调等)
	 */
	private String trainType;

	/**
	 * 始发站
	 * @return
	 */
	public String getBeginStation() {
		return beginStation;
	}

	/**
	 * 始发站
	 * @param beginStation
	 */
	public void setBeginStation(String beginStation) {
		this.beginStation = beginStation;
	}

	/**
	 * 终点站
	 * @return
	 */
	public String getEndStation() {
		return endStation;
	}

	/**
	 * 终点站
	 * @param endStation
	 */
	public void setEndStation(String endStation) {
		this.endStation = endStation;
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
	 * 车次号
	 * @return
	 */
	public String getLineNo() {
		return lineNo;
	}

	/**
	 * 车次号
	 * @param lineNo
	 */
	public void setLineNo(String lineNo) {
		this.lineNo = lineNo;
	}

	/**
	 * 中间站信息,存储格式:{"沈阳,1,21:34","秦皇岛,2,01:34"}
	 * @return
	 */
	public String getStopStation() {
		return stopStation;
	}

	/**
	 * 中间站信息,存储格式:{"沈阳,1,21:34","秦皇岛,2,01:34"}
	 * @param stopStation
	 */
	public void setStopStation(String stopStation) {
		this.stopStation = stopStation;
	}

	/**
	 * 车量内部编号
	 * @return
	 */
	public String getTrainNo() {
		return trainNo;
	}

	/**
	 * 车量内部编号
	 * @param trainNo
	 */
	public void setTrainNo(String trainNo) {
		this.trainNo = trainNo;
	}

	/**
	 * 列车类型(硬座,空调等)
	 * @return
	 */
	public String getTrainType() {
		return trainType;
	}

	/**
	 * 列车类型(硬座,空调等)
	 * @param trainType
	 */
	public void setTrainType(String trainType) {
		this.trainType = trainType;
	}


}