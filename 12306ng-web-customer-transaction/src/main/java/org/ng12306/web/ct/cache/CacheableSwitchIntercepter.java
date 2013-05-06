package org.ng12306.web.ct.cache;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;

import net.sf.ehcache.Ehcache;

import org.aopalliance.intercept.MethodInvocation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.googlecode.ehcache.annotations.CacheableInterceptor;
@Component("cacheableSwitchIntercepter")
public class CacheableSwitchIntercepter implements CacheableInterceptor{
	
	private static final String DIABLE_CACHE_FLAG = "DISABLE_CACHE";
	
	private Logger logger = LoggerFactory.getLogger(CacheableSwitchIntercepter.class);

	@Override
	public boolean preInvokeCachable(Ehcache cache,
			MethodInvocation methodInvocation, Serializable key, Object value) {
		
		HttpServletRequest curRequest = null;
				
		try {
			curRequest = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
		} catch (IllegalStateException e) {
			logger.warn("Current service is not support HTTP request" ,e.getMessage());
		}
		
		if(null != curRequest){
		
			String disableCache = curRequest.getParameter(DIABLE_CACHE_FLAG);
			
			if(null == disableCache){
				disableCache = curRequest.getHeader(DIABLE_CACHE_FLAG);
			}
			
			if(Boolean.TRUE.toString().equals(disableCache)){
				return true;
			}
		}
		
		return false;
	}

	@Override
	public boolean postInvokeCacheable(Ehcache cache,
			MethodInvocation methodInvocation, Serializable key, Object value) {
		return true;
	}

	@Override
	public boolean preInvokeCacheableException(Ehcache exceptionCache,
			MethodInvocation methodInvocation, Serializable key, Throwable t) {
		return false;
	}

	@Override
	public boolean postInvokeCacheableException(Ehcache exceptionCache,
			MethodInvocation methodInvocation, Serializable key, Throwable t) {
		return true;
	}

}
