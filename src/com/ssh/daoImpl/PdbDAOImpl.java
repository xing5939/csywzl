package com.ssh.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.ssh.dao.PdbDAO;
import com.ssh.entity.Pdb;

public class PdbDAOImpl implements PdbDAO {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Pdb> findAllPdb(String page, String rows, String shurukuang) {
		// TODO Auto-generated method stub
		int currentpage = Integer.parseInt((page == null || page == "0") ? "1": page);//第几页   
        int pagesize = Integer.parseInt((rows == null || rows == "0") ? "10": rows);//每页多少行
        String shurukuangs = (shurukuang == null || shurukuang == "") ? "%"
				: "%"+shurukuang+"%";
        Session session=sessionFactory.getCurrentSession();
        String sql="select * from pdb p where p.pdbid like ? order by p.pdbid asc";
        Query query=session.createSQLQuery(sql).addEntity(Pdb.class)
				.setFirstResult((currentpage - 1) * pagesize)
				.setMaxResults(pagesize)
				.setString(0,shurukuangs);
        List<Pdb> list =query.list();
        return list; 
	}

	@Override
	public int getPdbTotal(String shurukuang) {
		// TODO Auto-generated method stub
		String shurukuangs = (shurukuang == null || shurukuang == "") ? "%"
				: "%"+shurukuang+"%";
		Session session=sessionFactory.getCurrentSession();
		String sql="select * from pdb p where p.pdbid like ? order by p.pdbid asc";
		Query query=session.createSQLQuery(sql).addEntity(Pdb.class)
				.setString(0,shurukuangs);
		List<Pdb> list =query.list();
		
		return list.size();
	}
	
	
}
