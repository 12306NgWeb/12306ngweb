package org.ng12306.web.ct.cache;

import java.io.Serializable;

import org.aopalliance.intercept.MethodInvocation;
import org.ng12306.web.ct.service.impl.SearchTicketService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.googlecode.ehcache.annotations.key.CacheKeyGenerator;

@Component("ngwebCacheKeyGenerator")
public class NgwebCacheKeyGenerator implements CacheKeyGenerator<Serializable>{
	
	public static final String SPLITER = "@***###***@";
	private Logger logger = LoggerFactory.getLogger(SearchTicketService.class);

	@Override
	public Serializable generateKey(MethodInvocation methodInvocation) {
		logger.debug("generate cache key " );
		
		String className = methodInvocation.getMethod().getDeclaringClass().getName();
		String methodName = methodInvocation.getMethod().getName();
		String returnType =  methodInvocation.getMethod().getReturnType().getName();
		
		logger.debug("className: "+ className);
		logger.debug("methodName: "+ methodName);
		logger.debug("returnType: "+ returnType);
		
		Object[] args = methodInvocation.getArguments();
		
		StringBuffer key = new StringBuffer();
		String cName = "className:"+className;
		String mName = ",methodName:"+methodName;
		String rType = ",returnType:"+returnType;
		
		key.append(cName).append(mName).append(rType).append("param:");
		
		if(null!=args){
		
			for (Object param : args) {
				key.append(param==null ? "null" : param.toString()+ SPLITER);
			}
			
		}
		
		logger.debug("generated cache key: " + key );
		
		return key.toString();
	}

	@Override
	public Serializable generateKey(Object... arg0) {
		return null;
	}

}
