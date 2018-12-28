package cn.book.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.book.dao.AdminDao;
import cn.book.model.Admin;

public class AdminDaoImple extends HibernateDaoSupport implements AdminDao {

	public void deleteAdmin(Admin admin) {
		admin=this.findAdminById(admin.getId());
		super.getHibernateTemplate().delete(admin);

	}

	public List<Admin> findAdminAll(final int pageSize, final int pageNum) {
		class find implements HibernateCallback{

			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				List<Admin> list=new ArrayList<Admin> ();
				int size=pageSize*(pageNum-1);
				session.beginTransaction();
				Query query=session.createQuery("from Admin");
				
				query.setFirstResult(size);
				query.setMaxResults(pageSize);
				list=query.list();
				session.getTransaction().commit();
				
			
				return list;
			}
			
		}
		return super.getHibernateTemplate().executeFind(new find());
	}
	public int findNumAll() {
		
		return super.getHibernateTemplate().find("from Admin").size();
	}

	public Admin findAdminById(int id) {
		return super.getHibernateTemplate().get(Admin.class, id);
	}

	public void saveAdmin(Admin admin) {
		super.getHibernateTemplate().save(admin);

	}

	public void updateAdmin(Admin admin) {
		super.getHibernateTemplate().update(admin);

	}

	public Admin login(Admin admin) {
		List<Admin> list=new ArrayList<Admin>();
		String hql="from Admin admin where admin.name='"+admin.getName()+"' and admin.pass='"+admin.getPass()+"'";
		list=super.getHibernateTemplate().find(hql);
		Admin adminlg=null;
		if(list.size()>0){
			adminlg=list.get(0);
		}
		return adminlg;
	}



}
