package com.ssh.service;

import java.util.List;

import com.ssh.entity.TUser;

public interface UserService {
    public boolean login(String name,String password);

	public List<TUser> findAllUsers(String page, String rows, String xialabiaodan, String username);
	public int getUserTotal(String xialabiaodan, String username) throws Exception;
}
