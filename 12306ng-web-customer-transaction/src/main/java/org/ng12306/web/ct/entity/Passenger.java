package org.ng12306.web.ct.entity;

import java.util.Date;

/**
 * 旅客实体类--12306ngWeb
 * @author 李守宏
 * @version 1.0
 * @created 2013年3月25日 19:43:05
 */
public class Passenger {

	/**
	 * 主键
	 */
	private String id;
	/**
	 * 注册日期
	 */
	private Date createDate;
	/**
	 * 电子邮箱
	 */
	private String email;

	/**
	 * 身份证号码
	 */
	private String idCardNo;
	/**
	 *证件类型
	 */
	private String idType;
	/**
	 * 姓名
	 */
	private String name;
	/**
	 * 国家/地区
	 */
	private String nationality;
	/**
	 * 旅客类型
	 */
	private String passengerType;
	/**
	 * 密码
	 */
	private String password;
	/**
	 *手机号码
	 */
	private String phoneNo;
	/**
	 * 性别
	 */
	private String sex;
	/**
	 *用户名
	 */
	private String userName;

	/**
	 * 注册日期
	 * @return
	 */
	public Date getCreateDate() {
		return createDate;
	}

	/**
	 * 注册日期
	 * @param createDate
	 */
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	/**
	 * 电子邮箱
	 * @return
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * 电子邮箱
	 * @param email
	 */
	public void setEmail(String email) {
		this.email = email;
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
	 * 身份证号码
	 * @return
	 */
	public String getIdCardNo() {
		return idCardNo;
	}

	/**
	 * 身份证号码
	 * @param idCardNo
	 */
	public void setIdCardNo(String idCardNo) {
		this.idCardNo = idCardNo;
	}

	/**
	 * 证件类型
	 * @return
	 */
	public String getIdType() {
		return idType;
	}

	/**
	 * 证件类型
	 * @param idType
	 */
	public void setIdType(String idType) {
		this.idType = idType;
	}

	/**
	 * 姓名
	 * @return
	 */
	public String getName() {
		return name;
	}

	/**
	 * 姓名
	 * @param name
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * 国家/地区
	 * @return
	 */
	public String getNationality() {
		return nationality;
	}

	/**
	 * 国家/地区
	 * @param nationality
	 */
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	/**
	 * 旅客类型
	 * @return
	 */
	public String getPassengerType() {
		return passengerType;
	}

	/**
	 * 旅客类型
	 * @param passengerType
	 */
	public void setPassengerType(String passengerType) {
		this.passengerType = passengerType;
	}

	/**密码
	 * 
	 * @return
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * 密码
	 * @param password
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * 手机号码
	 * @return
	 */
	public String getPhoneNo() {
		return phoneNo;
	}

	/**
	 * 手机号码
	 * @param phoneNo
	 */
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	/**
	 * 性别
	 * @return
	 */
	public String getSex() {
		return sex;
	}

	/**
	 * 性别
	 * @param sex
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}

	/**
	 * 用户名
	 * @return
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * 用户名
	 * @param userName
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	

}