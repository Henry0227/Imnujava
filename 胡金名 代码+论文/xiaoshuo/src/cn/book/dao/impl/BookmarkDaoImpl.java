package cn.book.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.book.dao.BookmarkDao;
import cn.book.model.Book;
import cn.book.model.Bookmark;

public class BookmarkDaoImpl extends HibernateDaoSupport implements BookmarkDao {

	public void addMark(Bookmark bookmark) {
		super.getHibernateTemplate().save(bookmark);

	}

	public List<Bookmark> findMark(int userId) {
		return super.getHibernateTemplate().find("from Bookmark bookmark where bookmark.users.id="+userId);
	}

	public Book findBook(int bookid) {
		Book book=super.getHibernateTemplate().get(Book.class, bookid);
		return book;
	}

	public void deleteOne(int id) {
		Bookmark bookmark=this.findOne(id);
		super.getHibernateTemplate().delete(bookmark);
	}

	public Bookmark findOne(int id) {
		return super.getHibernateTemplate().get(Bookmark.class, id);
	}

}
