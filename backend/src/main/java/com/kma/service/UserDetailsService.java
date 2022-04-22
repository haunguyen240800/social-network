package com.kma.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import com.kma.dao.UserDAO;
import com.kma.dto.UserDetailsImpl;
import com.kma.model.User;

@Service
public class UserDetailsService implements org.springframework.security.core.userdetails.UserDetailsService {
	@Autowired
	private UserDAO userDAO;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		User user = userDAO.findByUsername(username);
		if (user == null) {
			throw new UsernameNotFoundException("User Not Found with username: " + username);
		}
		return UserDetailsImpl.build(user);
	}
	
}
