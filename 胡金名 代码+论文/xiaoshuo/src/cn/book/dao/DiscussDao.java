package cn.book.dao;

import java.util.List;

import cn.book.model.Discuss;

public interface DiscussDao {

	public List<Discuss> findDiscuss(String condition, int pageSize, int pageNum);
	
	public void addOne(Discuss discuss);
	
	public void valiCross(Discuss discuss);
	
	public void deleteOne(int id);
	
	public Discuss findOne(int id);
	
	public int getAllCount();
	
	public List<Discuss> findAllByBookid(int bookid);

}
