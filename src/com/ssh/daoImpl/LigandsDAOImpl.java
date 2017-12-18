package com.ssh.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.ssh.dao.LigandsDAO;
import com.ssh.entity.Ligands9;




public class LigandsDAOImpl implements LigandsDAO {
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	/*正常使用，双条件*/
	@Override
	public List<Ligands9> findAllLigands(String page, String rows,String shurukuang, String xiala) {
		// TODO Auto-generated method stub
		int currentpage = Integer.parseInt((page == null || page == "0") ? "1": page);//第几页  
        int pagesize = Integer.parseInt((rows == null || rows == "0") ? "10": rows);//每页多少行
        String shurukuangs = (shurukuang == null || shurukuang == "") ? "%"
				: "%"+shurukuang+"%";
        String xialas = (xiala == null || xiala == "") ? "%"
				: "%"+xiala+"%";
        Session session=sessionFactory.getCurrentSession();
        String sql="select * from ligands9 ld where ld.reactivity like ? and ld.zinc like ? order by ld.zinc asc";
        Query query=session.createSQLQuery(sql).addEntity(Ligands9.class)
				.setFirstResult((currentpage - 1) * pagesize)
				.setMaxResults(pagesize)
				.setString(0,xialas)
				.setString(1,shurukuangs);
        List<Ligands9> list =query.list();
        return list; 
	}

	@Override
	public int getLigandsTotal(String shurukuang, String xiala) {
		// TODO Auto-generated method stub
		String shurukuangs = (shurukuang == null || shurukuang == "") ? "%"
				: "%"+shurukuang+"%";
        String xialas = (xiala == null || xiala == "") ? "%"
				: "%"+xiala+"%";
		Session session=sessionFactory.getCurrentSession();
		String sql="select * from ligands9 ld where ld.reactivity like ? and ld.zinc like ? order by ld.zinc asc";
		Query query=session.createSQLQuery(sql).addEntity(Ligands9.class)
				.setString(0, xialas)
				.setString(1,shurukuangs);
		List<Ligands9> list =query.list();
		
		return list.size();
	}
    /*单条件，尝试进行优化部分*/
	@Override
	public List<Ligands9> queryLigandsByZincid(String page, String rows,String zincid) {
		// TODO Auto-generated method stub
		int currentpage = Integer.parseInt((page == null || page == "0") ? "1": page);//�ڼ�ҳ    
        int pagesize = Integer.parseInt((rows == null || rows == "0") ? "10": rows);//ÿҳ������
        String zincids = (zincid == null || zincid == "") ? "%"
				: "%"+zincid+"%";
        Session session=sessionFactory.getCurrentSession();
        String sql="select * from ligands9 ld where ld.zinc like ? order by ld.zinc asc";
        Query query=session.createSQLQuery(sql).addEntity(Ligands9.class)
				.setFirstResult((currentpage - 1) * pagesize)
				.setMaxResults(pagesize)
				.setString(0,zincids);
        List<Ligands9> list =query.list();
        return list; 
	}

	@Override
	public int queryLigandsByZincidTotal(String zincid) {
		// TODO Auto-generated method stub
		String zincids = (zincid == null || zincid == "") ? "%"
				: "%"+zincid+"%";
		Session session=sessionFactory.getCurrentSession();
		String sql="select * from ligands9 ld where ld.zinc like ? order by ld.zinc asc";
		Query query=session.createSQLQuery(sql).addEntity(Ligands9.class)
				.setString(0, zincids);
		List<Ligands9> list =query.list();
		
		return list.size();
	}

}
