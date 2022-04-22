package com.kma.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kma.model.Role;

@Mapper
public interface RoleDAO {
	int save(Role roles);
	List<Role> getRoles() throws SQLException;
}
