package com.kma.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kma.dao.UserDAO;
import com.kma.model.Role;
import com.kma.model.User;

@Service
public class UserService {
	@Autowired
	private UserDAO userDAO;
	
	public User findByUsername(String username) throws Exception {
		return userDAO.findByUsername(username);
	}
	
	public Boolean existsByEmail(String email) throws Exception {
		int count = userDAO.existsByEmail(email);
		if (count > 0)  return true;
		else return false;
	}
	
	public Boolean existsByUsername(String username) throws Exception {
		int count = userDAO.existsByUsername(username);
		if (count > 0)  return true;
		else return false;
	}
	
	@Transactional(rollbackFor = Exception.class)
	public User save(User user) throws Exception {
		userDAO.save(user);
		return user;
	}
	
	@Transactional(rollbackFor = Exception.class)
	public boolean saveUserRole(Map<String, Object> arg) throws Exception {
		userDAO.saveUserRole(arg);
		return true;
	}
}
