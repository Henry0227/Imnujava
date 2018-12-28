package cn.book.dao;

import java.util.List;

import cn.book.model.Book;
import cn.book.model.Bookmark;

public interface BookmarkDao {
	public void addMark(Bookmark bookmark);

	public List<Bookmark> findMark(int userId);
	
	public Book findBook(int bookid);
	
	public void deleteOne(int id);
	
	public Bookmark findOne(int id);

}
