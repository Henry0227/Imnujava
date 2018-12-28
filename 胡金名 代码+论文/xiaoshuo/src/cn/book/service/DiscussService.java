package cn.book.service;

import java.util.List;

import cn.book.model.Discuss;

public interface DiscussService {
	public List<Discuss> findDiscuss(String condition,int pageSize,int pageNum);
	
	public void addOne(Discuss discuss);
	
	public void deleteOne(int id);
	
	public Discuss findOne(int id);
	
	public int getAllCount();
	
	public void valiCross(Discuss discuss);
	
	public List<Discuss> findAllByBookid(int bookid);

}
