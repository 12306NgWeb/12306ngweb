package org.ng12306.web.system.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.ng12306.web.system.entity.User;

public interface UserDao extends PagingAndSortingRepository<User, Long> {
	User findByLoginName(String loginName);
}
