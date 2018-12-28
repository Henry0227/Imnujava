package cn.book.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.book.dao.ProgenitorDao;
import cn.book.model.Book;
import cn.book.model.Progenitor;
import cn.book.model.Users;

public class ProgenitorDaoImpl extends HibernateDaoSupport implements ProgenitorDao {

	

	public boolean valiUser(Users user) {
		List<Users> list=super.getHibernateTemplate().find("from Progenitor progenitor where progenitor.users.id="+user.getId());
		if(list.size()>0){
			return false;
		}
		return true;
	}

	public void register(Progenitor progenitor) {
		
		
		 super.getHibernateTemplate().save(progenitor);
	
		
		
		
		
	}



}
