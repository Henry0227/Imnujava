package cn.book.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.book.dao.DiscussDao;
import cn.book.model.Book;
import cn.book.model.Discuss;

public class DiscussDaoImpl extends HibernateDaoSupport implements DiscussDao {

	public List<Discuss> findDiscuss(final String condition, final int pageSize, final int pageNum) {
		class find implements HibernateCallback{

			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				List<Discuss> list=new ArrayList<Discuss> ();
				int size=pageSize*(pageNum-1);
				session.beginTransaction();
				StringBuffer sb=new StringBuffer();
				sb.append("from Discuss discuss where 1=1 ");
				if(null!=condition&&"".equals(condition)){
					sb.append("and discuss.book.title like :btitle or discuss.title like :title or discuss.username like :username");
					
				}
				Query query=session.createQuery(sb.toString());
				if(null!=condition&&"".equals(condition)){
					query.setString("btitle", condition);
					query.setString("title", condition);
					query.setString("username", condition);
				}
				
				query.setFirstResult(size);
				query.setMaxResults(pageSize);
				list=query.list();
				session.getTransaction().commit();
				
			
				return list;
			}
			
		}
		return super.getHibernateTemplate().executeFind(new find());
	}

	public void addOne(Discuss discuss) {
		super.getHibernateTemplate().save(discuss);
		
	}

	public void deleteOne(int id) {
		Discuss discuss=this.findOne(id);
		super.getHibernateTemplate().delete(discuss);
	}

	public Discuss findOne(int id) {
		return super.getHibernateTemplate().get(Discuss.class, id);
	}

	public int getAllCount() {
		return super.getHibernateTemplate().find("from Discuss").size();
	}

	public void valiCross(Discuss discuss) {
		super.getHibernateTemplate().update(discuss);
		
	}

	public List<Discuss> findAllByBookid(int bookid) {
		return super.getHibernateTemplate().find("from Discuss discuss where discuss.book.id="+bookid+" order by discuss.maketime desc");
	}

}
