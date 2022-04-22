package com.kma.dao;

import java.sql.SQLException;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.kma.model.User;

@Mapper
public interface UserDAO {
	User findByUsername(String username);
	int existsByEmail(String email);
	int existsByUsername(String username);
	int save(User user);
	int saveUserRole(Map<String, Object> args) throws SQLException;
}
