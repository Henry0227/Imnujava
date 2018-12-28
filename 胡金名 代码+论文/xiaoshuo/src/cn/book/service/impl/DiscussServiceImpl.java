package cn.book.service.impl;

import java.util.List;

import cn.book.dao.DiscussDao;
import cn.book.model.Discuss;
import cn.book.service.DiscussService;

public class DiscussServiceImpl implements DiscussService {
	private DiscussDao discussDao;

	public void setDiscussDao(DiscussDao discussDao) {
		this.discussDao = discussDao;
	}

	public List<Discuss> findDiscuss(String condition, int pageSize, int pageNum) {
		return this.discussDao.findDiscuss(condition, pageSize, pageNum);
	}

	public void addOne(Discuss discuss) {
		this.discussDao.addOne(discuss);
		
	}

	public void deleteOne(int id) {
		this.discussDao.deleteOne(id);
	}

	public Discuss findOne(int id) {
		return this.discussDao.findOne(id);
	}

	public int getAllCount() {
		return this.discussDao.getAllCount();
	}

	public void valiCross(Discuss discuss) {
		this.discussDao.valiCross(discuss);
		
	}

	public List<Discuss> findAllByBookid(int bookid) {
		return this.discussDao.findAllByBookid(bookid);
	}

}
