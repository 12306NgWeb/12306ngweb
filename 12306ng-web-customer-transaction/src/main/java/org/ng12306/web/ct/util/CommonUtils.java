package org.ng12306.web.ct.util;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.ArrayUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.util.PropertyPlaceholderHelper;

public final class CommonUtils {
	private CommonUtils(){};
	
	private static final Logger logger = LoggerFactory.getLogger(CommonUtils.class);
	
	private static final String NAME = "name";
	private static final String PATH = "path";
	
	private static final String PLACE_HOLDER_PREFIX = "${";
	private static final String PLACE_HOLDER_SUFFIX = "}";
	
	/**
	 * fetches email from a string format like "uid=first.last@hp.com,ou=People,o=hp.com"
	 * 
	 * TODO: evaluate to use other property from SiteMinder like employee id
	 * @param userEmail
	 * @return
	 */
	public static String fetchEmail(String userEmail) {
		logger.debug("before: " + userEmail);
		String userMail = userEmail;
		if (userMail.startsWith("uid=")) {
			userMail = userMail.substring("uid=".length());
		}
		if (userMail.indexOf(',') > 0) {
			userMail = userMail.substring(0, userMail.indexOf(','));
		}		
		logger.debug("after: " + userMail);
		return userMail;
	}
	/**
	 * 
	 * Construct request URL by using request.getContextPath()+ searchPath
	 * Save Last Search Info map in session using key {@link CommonConstants#LAST_SEARCH_RESULT_ATTR}
	 * Inside the map will contains 
	 * <pre>
	 * 	key:name, value:searchFeatureName
	 * 	key:path, value:URL
	 * </pre>
	 * @param request - HttpServletRequest
	 * @param searchFeatureName - Search name. eg. "Customer Search"
	 * @param searchPath - The search feature URI. eg. "/customerSearch/form"
	 */
	public static void saveLastSearchInfo(HttpServletRequest request, String searchFeatureName ,String searchPath){
		String context = request.getContextPath();
		
		String path = context + searchPath + "?" + "LAST_SEARCH" + "=" + Boolean.TRUE.toString();
		
		Map<String, String> searchInfo = new HashMap<String, String>();
		
		searchInfo.put(NAME, searchFeatureName);
		searchInfo.put(PATH, path);
		
		request.getSession().setAttribute("lastSearchResult", searchInfo);
		
	}
	/**
	 * Find resources in class path by using the follow pattern:
	 * classpath*:*-user.properties
	 * 
	 * @param filePath
	 * @return Resource {@link Resource}, if no resource find or cannot read resource return null;
	 */
	public static Resource[] findResourcesInClassPath(String filePath){
		
		PathMatchingResourcePatternResolver resourcePatternResolver = new PathMatchingResourcePatternResolver(Thread.currentThread().getContextClassLoader());
		Resource[] resource  = null;
		try {
			resource =  resourcePatternResolver.getResources(replaceSystemProp(filePath));
		} catch (IOException e) {
			logger.error(e.getMessage(),e);
			return null;
		}
		
		if(ArrayUtils.isEmpty(resource)){
			return null;
		}
		
		return resource;
	}
	
	
	/**
	 * Find single resource in class path by using the follow pattern:
	 * classpath*:*-user.properties
	 * 
	 * @param filePath
	 * @return Resource {@link Resource}, if no resources find or cannot read resource return null; if find more than one resources, return the first
	 *  
	 */
	public static Resource findSingleResourcesInClassPath(String filePath) {
		
		Resource[] resources = findResourcesInClassPath(filePath);
		
		if(ArrayUtils.isEmpty(resources)){
			return null;
		}
		
		return resources[0];
	}
	/**
	 * A tool for replace system property values in a given test
	 * <pre>
	 * System.setProperty("testProp","testValue")
	 * replaceSystemProp("theString-${testProp}") will return "theString-testValue"
	 * </pre>
	 * @param text - The String need to replace
	 * @return - return replaced value, if given text is null, will return null
	 */
	public static String replaceSystemProp(String text){
		logger.debug("Replace placeholders for text={}", new String[]{text});
		if(text == null){
			logger.warn("The text is null, return null;");
			return null;
		}
		PropertyPlaceholderHelper placeholderHelper = new PropertyPlaceholderHelper(PLACE_HOLDER_PREFIX, PLACE_HOLDER_SUFFIX);
		return placeholderHelper.replacePlaceholders(text, System.getProperties());
	}
	

}
