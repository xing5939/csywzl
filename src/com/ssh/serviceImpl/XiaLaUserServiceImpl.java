package com.ssh.serviceImpl;

import java.util.List;



import com.ssh.dao.XiaLaUserDAO;
import com.ssh.entity.Searchligands;
import com.ssh.entity.TUser;
import com.ssh.service.XiaLaUserService;

public class XiaLaUserServiceImpl implements XiaLaUserService {
	
	private XiaLaUserDAO xiaLaUserDAO;
	

	public XiaLaUserDAO getXiaLaUserDAO() {
		return xiaLaUserDAO;
	}


	public void setXiaLaUserDAO(XiaLaUserDAO xiaLaUserDAO) {
		this.xiaLaUserDAO = xiaLaUserDAO;
	}


	@Override
	public List<Searchligands> listUser() {
		// TODO Auto-generated method stub
		List<Searchligands> listUser=xiaLaUserDAO.listUser();
		return listUser;
	}

}
