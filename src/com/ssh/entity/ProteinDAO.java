package com.ssh.entity;

import java.util.List;
import org.hibernate.LockOptions;
import org.hibernate.Query;
import static org.hibernate.criterion.Example.create;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for
 * Protein entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.ssh.entity.Protein
 * @author MyEclipse Persistence Tools
 */
public class ProteinDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory.getLogger(ProteinDAO.class);
	// property constants
	public static final String PROTEINNAME = "proteinname";

	public void save(Protein transientInstance) {
		log.debug("saving Protein instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Protein persistentInstance) {
		log.debug("deleting Protein instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Protein findById(java.lang.Integer id) {
		log.debug("getting Protein instance with id: " + id);
		try {
			Protein instance = (Protein) getSession().get(
					"com.ssh.entity.Protein", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<Protein> findByExample(Protein instance) {
		log.debug("finding Protein instance by example");
		try {
			List<Protein> results = (List<Protein>) getSession()
					.createCriteria("com.ssh.entity.Protein")
					.add(create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Protein instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Protein as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<Protein> findByProteinname(Object proteinname) {
		return findByProperty(PROTEINNAME, proteinname);
	}

	public List findAll() {
		log.debug("finding all Protein instances");
		try {
			String queryString = "from Protein";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Protein merge(Protein detachedInstance) {
		log.debug("merging Protein instance");
		try {
			Protein result = (Protein) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Protein instance) {
		log.debug("attaching dirty Protein instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Protein instance) {
		log.debug("attaching clean Protein instance");
		try {
			getSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}