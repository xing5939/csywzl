package com.ssh.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.ssh.dao.ResultsDAO;
import com.ssh.entity.Ligands9;
import com.ssh.entity.Results;

public class ResultsDAOImpl implements ResultsDAO {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Results> findAllResults(String page, String rows,String status, String ligands, String pdb) {
		// TODO Auto-generated method stub
		int currentpage = Integer.parseInt((page == null || page == "0") ? "1": page);//第几页    
        int pagesize = Integer.parseInt((rows == null || rows == "0") ? "10": rows);//每页多少行
        String statuss = (status == null || status == "") ? "%"
				: "%"+status+"%";
        String ligandss = (ligands == null || ligands == "") ? "%"
				: "%"+ligands+"%";
        String pdbs = (pdb == null || pdb == "") ? "%"
				: "%"+pdb+"%";
        Session session=sessionFactory.getCurrentSession();//把它放到外边作为全局变量试试？
        String sql="select * from results rs where rs.status like ? and rs.ligands like ? and rs.pdbid like ? order by rs.dockingscore desc";
        Query query=session.createSQLQuery(sql).addEntity(Results.class)
				.setFirstResult((currentpage - 1) * pagesize)
				.setMaxResults(pagesize)
				.setString(0, statuss)
				.setString(1, ligandss)
				.setString(2, pdbs);
        List<Results> list =query.list();
        return list; 
	}

	@Override
	public int getResultsTotal(String status, String ligands, String pdb) {
		// TODO Auto-generated method stub
		String statuss = (status == null || status == "") ? "%"
				: "%"+status+"%";
        String ligandss = (ligands == null || ligands == "") ? "%"
				: "%"+ligands+"%";
        String pdbs = (pdb == null || pdb == "") ? "%"
				: "%"+pdb+"%";
		Session session=sessionFactory.getCurrentSession();
		String sql="select * from results rs where rs.status like ? and rs.ligands like ? and rs.pdbid like ? order by rs.dockingscore desc";
		Query query=session.createSQLQuery(sql).addEntity(Results.class)
				.setString(0, statuss)
				.setString(1, ligandss)
				.setString(2, pdbs);
        List<Results> list =query.list();
		return list.size();
	}
	
}
