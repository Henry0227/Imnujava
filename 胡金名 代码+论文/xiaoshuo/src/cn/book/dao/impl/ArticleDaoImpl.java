package cn.book.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.book.dao.ArticleDao;
import cn.book.model.Article;
import cn.book.model.Book;

public class ArticleDaoImpl extends HibernateDaoSupport implements ArticleDao {

	public List<Article> findArticleById2(final int id, final int pageSize, final int pageNum) {
		class find implements HibernateCallback{

			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				List<Article> list=new ArrayList<Article> ();
				
				session.beginTransaction();
				Query query=session.createQuery("from Article article where article.book.id="+id);
				
				list=query.list();
				session.getTransaction().commit();
				
			
				return list;
			}
			
		}
		return super.getHibernateTemplate().executeFind(new find());
	}
	
	public List<Article> findArticleById(final int id, final int pageSize, final int pageNum) {
		class find implements HibernateCallback{

			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				List<Article> list=new ArrayList<Article> ();
				
				session.beginTransaction();
				Query query=session.createQuery("from Article article where article.iscross=0 and article.book.id="+id);
				
				list=query.list();
				session.getTransaction().commit();
				
			
				return list;
			}
			
		}
		return super.getHibernateTemplate().executeFind(new find());
	}



	public void updateCross(int id) {
		Article article=super.getHibernateTemplate().get(Article.class, id);
		article.setIscross(0);
		super.getHibernateTemplate().update(article);
		
		
	}



	public Article findOne(int id) {
		return super.getHibernateTemplate().get(Article.class, id);
	}



	public void saveOne(Article article) {
		super.getHibernateTemplate().save(article);
		
	}



	

}
