package cn.book.service.impl;

import java.util.List;

import cn.book.dao.BookDao;
import cn.book.model.Book;
import cn.book.service.BookService;

public class BookServiceImpl implements BookService {
	private BookDao bookDao;

	public void deleteBook(Book book) {
		this.bookDao.deleteBook(book);
		

	}

	public void setBookDao(BookDao bookDao) {
		this.bookDao = bookDao;
	}

	public List<Book> findBookAll(int pageSize, int pageNum) {
		return this.bookDao.findBookAll(pageSize, pageNum);
	}

	public Book findBookById(int id) {
		return this.bookDao.findBookById(id);
	}

	public void saveBook(Book book) {
		this.bookDao.saveBook(book);

	}

	public void updateBook(Book book) {
		this.bookDao.updateBook(book);

	}

	public int allNum() {
		return this.bookDao.allNum();
	}

	public List<Book> searchBook(String condition) {
		return this.bookDao.searchBook(condition);
	}

	public List<Book> myBook(int userid) {
		return this.bookDao.myBook(userid);
	}

	public List<Book> findVipBookAll(int pageSize, int pageNum, int vip) {
		return this.bookDao.findVipBookAll(pageSize, pageNum, vip);
	}

	public List<Book> findProBookAll(int pageSize, int pageNum, int pro) {
		return this.bookDao.findProBookAll(pageSize, pageNum, pro);
	}

	public List<Book> findLitBookAll(int pageSize, int pageNum, int lit) {
		return this.bookDao.findLitBookAll(pageSize, pageNum, lit);
	}

}
