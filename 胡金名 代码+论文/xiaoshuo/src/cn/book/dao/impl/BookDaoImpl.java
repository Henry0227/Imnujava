package cn.book.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.book.dao.BookDao;
import cn.book.model.Admin;
import cn.book.model.Article;
import cn.book.model.Book;

public class BookDaoImpl extends HibernateDaoSupport implements BookDao {

	public void deleteBook(Book book) {
		List<Article> list=super.getHibernateTemplate().find("from Article article where article.book.id="+book.getId());
		if(list.size()>0){
			for(int i=0;i<list.size();i++){
				super.getHibernateTemplate().delete((Article)list.get(i));
			}
		}
		book=this.findBookById(book.getId());
		super.getHibernateTemplate().delete(book);

	}

	public List<Book> findBookAll(final int pageSize, final int pageNum) {
		class find implements HibernateCallback{

			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				List<Book> list=new ArrayList<Book> ();
				int size=pageSize*(pageNum-1);
				session.beginTransaction();
				Query query=session.createQuery("from Book");
				query.setFirstResult(size);
				query.setMaxResults(pageSize);
				list=query.list();
				session.getTransaction().commit();
				
			
				return list;
			}
			
		}
		return super.getHibernateTemplate().executeFind(new find());
	}
	
	public int allNum() {
	
		return super.getHibernateTemplate().find("from Book").size();
	}

	public Book findBookById(int id) {
		return super.getHibernateTemplate().get(Book.class, id);
	}

	public void saveBook(Book book) {
		super.getHibernateTemplate().save(book);

	}

	public void updateBook(Book book) {
		super.getHibernateTemplate().update(book);

	}

	public List<Book> searchBook(String condition) {
		return super.getHibernateTemplate().find("from Book book where book.title like '%"+condition+"%'");
	}

	public List<Book> myBook(int userid) {
		return super.getHibernateTemplate().find("from Book book where  book.users.id="+userid);
	}

	public List<Book> findVipBookAll(final int pageSize, final int pageNum, final int vip) {
		class find implements HibernateCallback{

			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				List<Book> list=new ArrayList<Book> ();
				int size=pageSize*(pageNum-1);
				session.beginTransaction();
				Query query=session.createQuery("from Book book where book.vip="+vip);
				query.setFirstResult(size);
				query.setMaxResults(pageSize);
				list=query.list();
				session.getTransaction().commit();
				
			
				return list;
			}
			
		}
		return super.getHibernateTemplate().executeFind(new find());
	}

	public List<Book> findProBookAll(final int pageSize, final int pageNum, final int pro) {
		class find implements HibernateCallback{

			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				List<Book> list=new ArrayList<Book> ();
				int size=pageSize*(pageNum-1);
				session.beginTransaction();
				Query query=session.createQuery("from Book book where book.progenitor="+pro);
				query.setFirstResult(size);
				query.setMaxResults(pageSize);
				list=query.list();
				session.getTransaction().commit();
				
			
				return list;
			}
			
		}
		return super.getHibernateTemplate().executeFind(new find());
	}

	public List<Book> findLitBookAll(final int pageSize, final int pageNum, final int lit) {
		class find implements HibernateCallback{

			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				List<Book> list=new ArrayList<Book> ();
				int size=pageSize*(pageNum-1);
				session.beginTransaction();
				Query query=session.createQuery("from Book book where book.literature.parent="+lit);
				query.setFirstResult(size);
				query.setMaxResults(pageSize);
				list=query.list();
				session.getTransaction().commit();
				
			
				return list;
			}
			
		}
		return super.getHibernateTemplate().executeFind(new find());
	}

}
