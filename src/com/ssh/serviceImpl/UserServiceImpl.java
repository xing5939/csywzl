package com.ssh.serviceImpl;

import java.util.List;

import com.ssh.dao.UserDAO;
import com.ssh.entity.TUser;
import com.ssh.service.UserService;

public class UserServiceImpl implements UserService {
    private UserDAO userDAO;

    public boolean login(String name, String password) {
        TUser u = userDAO.queryUserByName(name);
        if (u == null) {
            return false;
        } else {
            if (u.getPassword().equals(password)) {
                return true;
            } else {
                return false;
            }
        }
    }
    public UserDAO getUserDAO() {
        return userDAO;
    }
    public void setUserDAO(UserDAO userDAO) {
        this.userDAO = userDAO;
    }
	
    @Override
	public List<TUser> findAllUsers(String page, String rows,String xialabiaodan, String username) {
		// TODO Auto-generated method stub
    	return this.userDAO.findAllUsers(page,rows, xialabiaodan, username); 
	}
	@Override
	public int getUserTotal(String xialabiaodan, String username) throws Exception {
		// TODO Auto-generated method stub
		return this.userDAO.getUserTotal(xialabiaodan, username);
	}
}