package org.ng12306.web.ct.util;

import org.ng12306.web.ct.entity.User;



public interface UserProfileRetriever {
	/**
	 * 
	 * retrieve User from current "context", the "context" can be some info in request header, 
	 * some file in local, see {@link ClassPathUserProfileRetriever},
	 * 
	 * @return Usere, if no user found or failed to retrieve, return null.
	 */
	User retrieveUser();
}
