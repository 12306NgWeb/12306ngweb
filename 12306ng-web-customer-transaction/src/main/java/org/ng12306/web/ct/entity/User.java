package org.ng12306.web.ct.entity;

/**
 * 用户抽象类实体--12306ngWeb
 * @author 李守宏
 * @version 1.0
 * @created 2013年3月25日 20:04:22
 */
public class User {
	/**
	 * The default user profile id
	 */
	public static final String ANONYMOUS_USER_PROFILE_ID = "0";

	/**
	 * The default user name
	 */
	public static final String ANONYMOUS_USER_NAME = "Anonymous";
	/**
	 * 主键
	 */
	private String id;
	/**
	 * 邮箱
	 */
	private String email;
	/**
	 * 密码
	 */
	private String password;
	/**
	 *用户名
	 */
	private String userName;

	/**
	 * 邮箱
	 * @return
	 */
	/**
	 * 关联票ID
	 * String
	 */
	private String associatedTicketId;

	/**
	 * @return 票ID
	 */
	public String getAssociatedTicketId() {
		return associatedTicketId;
	}

	/**
	 * @param associatedTicketId
	 */
	public void setAssociatedTicketId(String associatedTicketId) {
		this.associatedTicketId = associatedTicketId;
	}

	public String getEmail() {
		return email;
	}

	/**
	 * 邮箱
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
	 * 密码
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