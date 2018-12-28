package cn.book.service;

import java.util.List;

import cn.book.model.Book;

public interface BookService {
	public void saveBook(Book book);

	public void deleteBook(Book book);

	public void updateBook(Book book);

	public List<Book> findBookAll(int pageSize, int pageNum);

	public Book findBookById(int id);
	
	public int allNum();
	
	public List<Book> searchBook(String condition);
	
	public List<Book> myBook(int userid);
	
	public List<Book> findVipBookAll(int pageSize, int pageNum,int vip);
	
	public List<Book> findProBookAll(int pageSize, int pageNum,int pro);
	
	public List<Book> findLitBookAll(int pageSize, int pageNum,int lit);

}
