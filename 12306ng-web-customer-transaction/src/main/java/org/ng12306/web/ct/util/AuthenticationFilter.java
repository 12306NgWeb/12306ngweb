
package org.ng12306.web.ct.util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.ng12306.web.ct.entity.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class AuthenticationFilter implements Filter {

	public static final String USER_PROFILE_ATTR = "loginUserProfile";
	private static final Logger logger = LoggerFactory.getLogger(AuthenticationFilter.class);
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub

		try{
		HttpServletRequest httpServletRequest = (HttpServletRequest) request;
				

		User userProfile = null;

		// get the current profile from session unless explicitly requesting refresh
		
		userProfile = (User) httpServletRequest.getSession().getAttribute(USER_PROFILE_ATTR);
		
		
		//if no user in session or the user in session is not same as siteminder header
		if(null == userProfile){

				userProfile = createAnonymousUser();
				/*logger.info("No user in session , sessionUser={}", new Object[]{userProfile});
				
				UserProfileRetriever userProfileRetriever = null;

					//only in DEV 
					logger.info("Retrieve User from classpath}");
					userProfileRetriever = new ClassPathUserProfileRetriever();
				
					userProfile = userProfileRetriever.retrieveUser();*/
				//httpServletRequest.getSession().setAttribute(USER_PROFILE_ATTR, userProfile);
		}
		
		//TODO handle request history
			httpServletRequest.getSession().setAttribute(USER_PROFILE_ATTR, userProfile);
			//		saveUserProfile(userProfile, httpServletRequest);
		}
		
	 finally  {
		chain.doFilter(request, response);
	}
}

	private void saveUserProfile(User userProfile, HttpServletRequest request) {
		logger.info("Save user to session and spring security context");

		User profile = userProfile;

		if (null == profile) {
			logger.info("User profile is null, consider as anonymous");
			profile = createAnonymousUser();
		}

		logger.debug("{UserName}", new Object[] { profile.getUserName() });

		request.getSession().setAttribute(USER_PROFILE_ATTR, profile);


	}

	private User createAnonymousUser() {
		User profile = new User();
		profile.setId(User.ANONYMOUS_USER_PROFILE_ID);
		profile.setUserName(User.ANONYMOUS_USER_NAME);
		return profile;
	}
	@Override
	public void destroy() {
		logger.info("authentication filter distroyed");

	}

}
