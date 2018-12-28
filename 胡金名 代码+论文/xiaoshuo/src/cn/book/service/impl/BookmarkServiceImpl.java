package cn.book.service.impl;

import java.util.List;

import cn.book.dao.BookmarkDao;
import cn.book.model.Book;
import cn.book.model.Bookmark;
import cn.book.service.BookmarkService;

public class BookmarkServiceImpl implements BookmarkService {
	private BookmarkDao bookmarkDao;

	public void setBookmarkDao(BookmarkDao bookmarkDao) {
		this.bookmarkDao = bookmarkDao;
	}

	public void addMark(Bookmark bookmark) {
		this.bookmarkDao.addMark(bookmark);

	}

	public List<Bookmark> findMark(int userId) {
		return this.bookmarkDao.findMark(userId);
	}

	public Book findBook(int bookid) {
		return this.bookmarkDao.findBook(bookid);
	}

	public void deleteOne(int id) {
		this.bookmarkDao.deleteOne(id);
		
	}

	public Bookmark findOne(int id) {
		return this.bookmarkDao.findOne(id);
	}

}
