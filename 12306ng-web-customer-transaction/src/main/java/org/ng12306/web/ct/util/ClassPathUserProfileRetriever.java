/*
 * Project: iSAPort
 * Copyright (c) 2012 HP. All Rights Reserved.
 */
package org.ng12306.web.ct.util;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Properties;

import org.ng12306.web.ct.entity.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.Resource;

/**
 * <p>
 * Retrieve user from properties file in class path which name matches
 * "**-user.properties"
 * </p>
 * 
 * @author <link href="wan-shan.zhu@hp.com">Spark Zhu</link>
 * @version 1.0
 */
public class ClassPathUserProfileRetriever implements UserProfileRetriever {

	private static final Logger logger = LoggerFactory.getLogger(ClassPathUserProfileRetriever.class);

	private static final String USER_PROFILE_PROP_NAME_PATTERN = "classpath*:/conf/authentication/*-user.properties";
	
	public static final String LOGIN_USER_PROFILE = "classpath*:/loginUserProfile.properties";
	public static final String CURRENT_LOGIN_USER_PROFILE = "loginUserProfile";
	
	public static final String USER_EMAIL_PROP_NAME = "uid";
	public static final String USER_MANAGER_PROP_NAME = "directManager";
	public static final String USER_GROUP_PROP_NAME = "group";
	public static final String USER_REPORT_LINE_PROP_NAME = "reportLine";
	public static final String USER_NAME_PROP_NAME = "username";
	
	private static final String COMMA = ",";
	
	//private static UserProfile userProfile = null;
	//private String propName = "";

	public ClassPathUserProfileRetriever() {
	}
	
	/**
	 * @see UserProfileRetriever
	 */
	public User retrieveUser() {
		return getUserProfile();
	}
	
	/**
	 * Get  user profile from according the user profile file specific in {@link ClassPathUserProfileRetriever#LOGIN_USER_PROFILE}
	 * @return
	 */
	public User getUserProfile() {
		
		User userProfile = null;

		Resource resource = CommonUtils.findSingleResourcesInClassPath(LOGIN_USER_PROFILE);
		InputStream inputStream = null;
		
		if (null == resource) {
			
			logger.info("The classpath login user config file is missing, make sure you have file in {}", new Object[] { LOGIN_USER_PROFILE });

			return null;
		}
		
		
		try {
			inputStream = resource.getInputStream();
			
			Properties userProp = new Properties();

			userProp.load(inputStream);
			
			
			String username = userProp.getProperty("username");
			String password = userProp.getProperty("password");
			userProfile.setUserName(username);
			userProfile.setPassword(password);
		
		} catch (IOException e) {

		} finally {
			try {
				if (null != inputStream) {
					inputStream.close();
				}
			} catch (IOException e) {
				logger.error(e.getMessage(), e);
			}
		}
		
		return userProfile;

	}
	

	public void changeUserProfile(String fileName) {
		
		Resource resource = CommonUtils.findSingleResourcesInClassPath(LOGIN_USER_PROFILE);
		
		InputStream inputStream = null;
		OutputStream ops = null;
		try {
			inputStream = resource.getInputStream();

			Properties userProp = new Properties();
			
			userProp.load(inputStream);
			
			inputStream.close();
			
			ops = new FileOutputStream(resource.getFile());
		
			userProp.setProperty(CURRENT_LOGIN_USER_PROFILE, fileName);
			
			userProp.store(ops, "update loging user");
			
			ops.close();

		} catch (IOException e) {
			logger.info("Cannot open the loginUserProfilePath", e);
		} finally {
			try {
				if (null != inputStream) {
					inputStream.close();
				}
				if (null != ops) {
					ops.close();
					
				}
			} catch (IOException e) {
				logger.error(e.getMessage(), e);
			}
		}
	}
	


}
