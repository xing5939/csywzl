package com.ssh.dao;
import java.util.List;

import com.ssh.entity.TUser;

public interface UserDAO {
    public TUser queryUserByName(String name);//根据用户名查询

	public List<TUser> findAllUsers(String page, String rows,String xialabiaodan, String username);

	public int getUserTotal(String xialabiaodan, String username);
}
