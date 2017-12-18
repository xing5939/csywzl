package com.ssh.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.ssh.dao.XiaLaUserDAO;
import com.ssh.entity.Searchligands;
import com.ssh.entity.TUser;

public class XiaLaUserDAOImpl implements XiaLaUserDAO{
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Searchligands> listUser() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		String hql="from Searchligands";
		Query query =session.createQuery(hql);
		return query.list();
	}

}
