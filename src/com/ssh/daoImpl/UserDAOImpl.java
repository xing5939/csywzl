package com.ssh.daoImpl;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;









import com.ssh.dao.UserDAO;
import com.ssh.entity.HibernateSessionFactory;
import com.ssh.entity.TUser;

public class UserDAOImpl implements UserDAO {
    private SessionFactory sessionFactory;

    public TUser queryUserByName(String name) {
        Query query = sessionFactory.getCurrentSession().createQuery(
                "from TUser as u where u.name = ?");
        query.setString(0, name);
        TUser u = (TUser) query.uniqueResult();
        return u;
    }
    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
	@Override
	public List<TUser> findAllUsers(String page, String rows,String xialabiaodan, String username) {
		// TODO Auto-generated method stub
		//当为缺省值的时候进行赋值    "%"+placename+"%"
        int currentpage = Integer.parseInt((page == null || page == "0") ? "1": page);//第几页   
        int pagesize = Integer.parseInt((rows == null || rows == "0") ? "10": rows);//每页多少行
        String name = (xialabiaodan == null || xialabiaodan == "") ? "%"
				: "%"+xialabiaodan+"%";
        String password = (username == null || username == "") ? "%"
				: "%"+username+"%";
        
        
		Session session=sessionFactory.getCurrentSession();
		
		String sql="select * from t_user tu where tu.name like ? and tu.password like ? order by tu.id asc";
		
		Query query=session.createSQLQuery(sql).addEntity(TUser.class)
				.setFirstResult((currentpage - 1) * pagesize)
				.setMaxResults(pagesize)
				.setString(0, name)
				.setString(1, password);
        
		List<TUser> list =query.list();
        return list; 
	}
	
	@Override
	public int getUserTotal(String xialabiaodan, String username){
		// TODO Auto-generated method stub
		String name = (xialabiaodan == null || xialabiaodan == "") ? "%"
				: "%"+xialabiaodan+"%";
        String password = (username == null || username == "") ? "%"
				: "%"+username+"%";
        
        
		Session session=sessionFactory.getCurrentSession();
		
		String sql="select * from t_user tu where tu.name like ? and tu.password like ? order by tu.id asc";
		
		
		Query query=session.createSQLQuery(sql).addEntity(TUser.class)
				.setString(0, name)
				.setString(1, password);
		List<TUser> list =query.list();
		
		return list.size();
	}
}
